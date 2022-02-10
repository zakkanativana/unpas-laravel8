@extends('layouts.main')
@section('content')
<h1 class="mb-5"> Post Category : {{ $category->name }} </h1>

@foreach ($posts as $post)
<article class="mb-5">
    <h2> <a href="/blog/{{ $post->slug  }}">  {{ $post->title }}  </a></h2>
    <p> {{ $post->excerpt }} </p>
</article>
@endforeach
@endsection