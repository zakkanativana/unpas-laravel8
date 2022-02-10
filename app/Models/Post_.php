<?php

namespace App\Models;

class Post{
    private static $blog_post = [
        [
            "title" => "Judul Tulisan Zakkan",
            "author" => "zakkanativana",
            "slug" => "judul-blog-pertama",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti iure, impedit dolore aliquid quisquam nulla."
        ],
        [
            "title" => "Judul Tulisan Kedua",
            "author" => "nafila",
            "slug" => "judul-blog-kedua",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti iure, impedit dolore aliquid quisquam nulla."
        ]
    ];

    public static function all(){
        return collect(self::$blog_post);
    }

    public static function find($slug){
        $posts = static::all();
        return $posts->firstWhere
        ('slug', $slug);
    }
}
