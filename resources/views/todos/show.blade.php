@extends('layout.app')

@section('title')
{{$todo->name}}
@endsection

@section('content')
<div class="row justify-content-center my-5">
    <div class="col-sm-6">
        <h3>Todos Information</h3>
        <div class="card card-default my-3">
            <div class="card-header">
                {{$todo->name}}
            </div>
            <div class="card-body">
                {{$todo->description}}
            </div>
        </div>
        <a href="/todos/{{$todo->id}}/edit" class="btn btn-success">Edit</a>
        <a href="/todos/{{$todo->id}}/delete" class="btn btn-danger">Delete</a>
    </div>
</div>
@endsection