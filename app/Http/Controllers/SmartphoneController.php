<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

// Import Class Smartphone Request
use App\Http\Requests\SmartphoneRequest;

// Import Class Str
use Illuminate\Support\Str;

// Import Db Smartphone
use App\Models\Smartphone;
// Import Db yg Login
use Auth;

class SmartphoneController extends Controller
{
    //READ
    public function index()
    {
        $smartphones = Smartphone::with('user')->orderBy('id', 'desc')->paginate(8);
        $expensives  = Smartphone::orderBy('price', 'desc')->paginate(5);

        return view('pages.smartphone', compact('smartphones', 'expensives'));
    }

    //
    public function create()
    {
        $user = Auth::user();
        return view('pages.smartphone_create', compact('user'));
    }

    //CREATE
    public function store(SmartphoneRequest $request)
    {
        $data = $request->all();
        // Slug
        $data['slug'] = Str::slug($data['title']);

        // Img
        $img   = $request->file('img');
        $name  = time(). '.' . $img->getClientOriginalExtension();
        $img->move(public_path('smartphones'), $name);

        $data['img'] = $name;

        $request->user()->smartphones()->create($data);

        return redirect('/smartphone')->with('msg', 'Data Berhasil ditambahkan');
    }

    // READ SINGLE
    public function show($slug)
    {
        $smartphone = Smartphone::where('slug', $slug)->first();

        return view('pages.smartphone_show', compact('smartphone'));
    }

    // EDIT
    public function edit($slug)
    {
        $smartphone = Smartphone::where('slug', $slug)->first();

        return view('pages.smartphone_edit', compact('smartphone'));
    }

    // UPDATE
    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'title' => ['required', 'string', 'min:3' , 'max:100'],
            'img'   => ['mimes:png,jpg,jpeg'],
            'price' => ['required', 'integer'],
            'description' => ['required', 'string']
        ]);
         // Slug
         $data['slug'] = Str::slug($data['title']);

         // Img
         if($request->has('img')) {
         $img   = $request->file('img');
         $name  = time(). '.' . $img->getClientOriginalExtension();
         $img->move(public_path('smartphones'), $name);
 
         $data['img'] = $name;
         }

        Smartphone::findOrFail($id)->update($data);

        return redirect('/smartphone')->with('msg', 'Data Berhasil diedit');

    }

    // DELETE
    public function destroy($id)
    {
        Smartphone::destroy($id);

        return redirect('/smartphone')->with('msg', 'Data Berhasil dihapus');

    }
}
