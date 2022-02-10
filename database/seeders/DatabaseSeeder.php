<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        User::create([
            'name' => 'Zakkan Ativana',
            'username' => 'zakkanativana',
            'email' => 'zakkan@gmail.com',
            'password' => bcrypt('12345')
        ]);

        // User::create([
        //     'name' => 'nizar',
        //     'email' => 'nizar@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Mobile Programming',
            'slug' => 'mobile-programming'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        // Bikin postingan random
        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum deleniti quo nobis magnam mollitia debitis distinctio omnis odit culpa voluptas.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum deleniti quo nobis magnam mollitia debitis distinctio omnis odit culpa voluptas. Laboriosam saepe repellendus impedit reiciendis maiores praesentium, harum nihil recusandae? Eveniet quod exercitationem ipsam dolores qui consequatur, ipsa reiciendis nulla labore mollitia, est eos accusamus, a ab amet neque eius?</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum deleniti quo nobis magnam mollitia debitis distinctio omnis odit culpa voluptas. Laboriosam saepe repellendus impedit reiciendis maiores praesentium, harum nihil recusandae? Eveniet quod exercitationem ipsam dolores qui consequatur, ipsa reiciendis nulla labore mollitia, est eos accusamus, a ab amet neque eius?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum deleniti quo nobis magnam mollitia debitis distinctio omnis odit culpa voluptas.',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum deleniti quo nobis magnam mollitia debitis distinctio omnis odit culpa voluptas. Laboriosam saepe repellendus impedit reiciendis maiores praesentium, harum nihil recusandae? Eveniet quod exercitationem ipsam dolores qui consequatur, ipsa reiciendis nulla labore mollitia, est eos accusamus, a ab amet neque eius?</p><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum deleniti quo nobis magnam mollitia debitis distinctio omnis odit culpa voluptas. Laboriosam saepe repellendus impedit reiciendis maiores praesentium, harum nihil recusandae? Eveniet quod exercitationem ipsam dolores qui consequatur, ipsa reiciendis nulla labore mollitia, est eos accusamus, a ab amet neque eius?</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
