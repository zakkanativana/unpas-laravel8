@extends('layouts.main')
@section('content')
    <h1> {{ $name }} </h1>
    <h2> {{ $email }} </h2>
    <h3> <img src="img/{{ $image }} " alt="" width="200"> </h3>
@endsection