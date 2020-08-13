@extends('layout.app')

@section('title')
Todos List
@endsection


@section('content')
<div class="container">
    <div class="row justify-content-center my-5">
        <div class="col-sm-6">

            <div class="card card-default">
                <div class="card-header">
                    Todos List
                </div>
                <div class="card-body">
                    <ul class="list-group">
                        @foreach($todos as $todo)
                        <li class="list-group-item">
                            {{$todo->name}}
                            <a href="/todos/{{$todo->id}}" class="btn btn-primary btn-sm float-right">View</a>
                            @if(!$todo->completed)
                            <a href="/todos/{{$todo->id}}/complete" class="btn btn-warning btn-sm float-right mx-1 text-light"><i class="far fa-check-circle"></i></a>
                            @else
                            <span><button disabled class="btn btn-warning btn-sm float-right mx-1 text-light"><i class="far fa-check-circle"></i></button></span>
                            @endif
                        </li>

                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection