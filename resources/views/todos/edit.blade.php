@extends('layout.app')

@section('title')
{{$todo->name}}
@endsection

@section('content')
<div class="row justify-content-center my-5">
    <div class="col-sm-6 my-4">

        @if($errors->any())
        @foreach($errors->all() as $error)
        <div class="alert alert-danger">{{$error}}</div>
        @endforeach
        @endif
        <h3 class="my-2">Edit Todo </h3>

        <form action="/todos/{{$todo->id}}/update" method="GET">
            @csrf
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" class="form-control" name="name" value="{{$todo->name}}">
            </div>

            <div class="form-group">
                <label for="name">Description</label>
                <textarea cols="5" rows="5" class="form-control" name="description">{{$todo->description}}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>


    </div>
</div>
@endsection