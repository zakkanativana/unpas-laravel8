<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;


class PostController extends Controller
{
    public function index() {
        // Ditambahkan di video unpas Searching menit 9.40
        // Cari data dalam post lalu urutkan berdasarkan data terbaru
        // $posts = Post::latest();
        // Lalu cek ada pencarian atau tidak ?

        // diedit di menit : 13.00 Dipindahkan karena diperbaiki karena kalo kita melakukan pencarian data seperti ini, ini seharusnya dilakukan oleh model
        // if( request('search') ) {
        //     $posts->where('title', 'like', '%'. request('search'). '%')
        //         ->orWhere('body', 'like', '%'. request('search'). '%');
        //  } // Kalo pake sql biasa itu seperti SELECT * FROM posts WHERE title like % request('search) %

        $title = '';
        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in '. $category->name;
        }
        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' by '. $author->name;
        }
        return view('blog', [
            "title" => "All Posts". $title,
            "active" => 'blog',
            // "posts" => Post::all()
            // Menampilkan data post terbaru
            "posts" => Post::latest()->filter(request(['search', 'category', 'author']))->paginate(4)->withQueryString()
        ]);
    }

    // Diubah di video Post Model menit :28.00
    public function show(Post $post){
        return view('post', [
            "title" => "Single Post",
            "active" => 'blog',
            "post" => $post
        ]);
    }

}
