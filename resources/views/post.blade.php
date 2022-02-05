@extends('layouts.main')

@section('container')
<div class="container">
   <div class="row justify-content-center mb-5">
      <div class="col-md-8">
         <h2 class="mb-3">{{ $post->title }}</h2>
         <p>By. <a class="text-decoration-none" href="/posts?author={{ $post->author->username }}">{{ $post->author->name }}</a> in <a class="text-decoration-none" href="/posts?category={{ $post->category->slug }}">{{ $post->category->name }}</a>
         </p>
         @if ($post->image)
         <div style="max-height: 350px; overflow: hidden;">
            <img class="img-fluid" src="{{ asset('storage/' . $post->image) }}" alt="{{ $post->category->name }}">
         </div>
         @else
         <img class="img-fluid" src="https://source.unsplash.com/1200x400?{{ $post->category->name }}"
            alt="{{ $post->category->name }}">
         @endif
            {!! $post->body !!}
         </article>
         <a class="mt-3 btn btn-secondary btn-sm" href="/posts"><i class="bi bi-arrow-left"></i> Back to Posts</a>
      </div>
   </div>
</div>


@endsection