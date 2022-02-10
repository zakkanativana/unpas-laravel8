<?php

namespace App\Models;

use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Post extends Model{
    use HasFactory, Sluggable;


    // protected $fillable = ['title', 'excerpt', 'body'];
    protected $guarded = ['id'];
    protected $with = ['category', 'author'];

    public function scopeFilter($query, array $filters)
    {
        // if (isset($filters['search']) ? $filters['search'] : FALSE) {
        //     return $query->where('title', 'like', '%' . request('search') . '%')
        //         ->orWhere('body', 'like', '%' . request('search') . '%');
        // }

        // Diedit di video searching menit 23.00
        $query->when($filters['search'] ?? FALSE, function($query, $search) {
            return $query->where(function($query) use($search){
                $query->where('title', 'like', '%'. $search . '%')
                ->orWhere('body', 'like', '%' . $search . '%');
            });
        });

        $query->when($filters['category'] ?? FALSE, function($query, $category){
            // fungsi use untuk menggunakan parameter parent nya contoh $category yang berada didalam function whereHas harus menggunakan use agar bisa digunakan di function when
            return $query->whereHas('category', function($query) use ($category){
                $query->where('slug', $category);
            });
        });

       $query->when($filters['author'] ?? FALSE, fn($query, $author) => $query->whereHas('author', fn($query) => $query->where('username', $author)));
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function author()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }

    public function sluggable(): array{
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }
}
