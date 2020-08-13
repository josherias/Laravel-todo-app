<?php

namespace App\Http\Controllers;

use App\Todo;
use Illuminate\Http\Request;

class TodosController extends Controller
{
    //
    public function index()
    {
        //display my todos
        $todos = Todo::all();
        return view('todos.index')->with('todos', $todos);
    }

    public function new()
    {
        return view('todos.new-todo');
    }


    public function show($todoId)
    {
        $todo = Todo::find($todoId);
        return view('todos.show')->with('todo', $todo);
    }


    public function edit($todoId)
    {
        $todo = Todo::find($todoId);
        return view('todos.edit')->with('todo', $todo);
    }


    public function destroy($todoId)
    {
        $todo = Todo::find($todoId);
        $todo->delete();
        return redirect('/todos');
    }


    public function update($todoId)
    {

        $this->validate(request(), [
            'name' => 'required',
            'description' => 'required'
        ]);

        $data = request()->all();

        $todo = Todo::find($todoId);

        $todo->name = $data['name'];
        $todo->description = $data['description'];

        $todo->save();


        session()->flash('success', 'Todo Updated successfully');

        return redirect('/todos');
    }

    public function create()
    {
        $this->validate(request(), [
            'name' => 'required',
            'description' => 'required'
        ]);

        $data = request()->all();

        $todo = new Todo();

        $todo->name = $data['name'];
        $todo->description = $data['description'];
        $todo->completed = false;

        $todo->save();

        session()->flash('success', 'Todo Created successfully');

        return redirect('/todos');
    }

    public function complete($todoId)
    {
        $todo = Todo::find($todoId);

        $todo->completed = true;
        $todo->save();

        return redirect('/todos');
    }
}
