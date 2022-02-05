<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            'title' => 'Judul Post Pertama',
            'slug' => 'judul-post-pertama',
            'body' => 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officia quis alias inventore, reprehenderit, repellendus, rerum aperiam hic porro aliquam nemo nihil. Similique consequatur officiis id, cum dolore at! Neque, corporis?',
        ],
        [
            'title' => 'Judul Post Kedua',
            'slug' => 'judul-post-kedua',
            'body' => 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Magnam dignissimos corporis iusto explicabo. Sequi quasi, corporis incidunt laborum expedita vitae ducimus. Unde, soluta ut maiores possimus consectetur dolore, obcaecati, corporis sequi nemo minus inventore placeat nostrum. Tenetur dolorum corrupti assumenda.',
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
