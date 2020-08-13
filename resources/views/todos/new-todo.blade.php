@extends('layout.app')

@section('title')
New Todo
@endsection

@section('content')
<div class="row justify-content-center my-5">
    <div class="col-sm-6 my-4">

        @if($errors->any())
        @foreach($errors->all() as $error)
        <div class="alert alert-danger">{{$error}}</div>
        @endforeach
        @endif
        <h3 class="my-2">Add new Todo </h3>

        <form action="/create" method="POST">
            @csrf
            <div class="form-group">
                <input type="text" class="form-control" name="name" placeholder="Name">
            </div>

            <div class="form-group">
                <textarea cols="5" rows="5" class="form-control" name="description" placeholder="Description here"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>


    </div>
</div>
@endsection