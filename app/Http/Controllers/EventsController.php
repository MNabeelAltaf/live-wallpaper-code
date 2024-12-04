<?php

namespace App\Http\Controllers;

use App\Models\Event;
use Illuminate\Http\Request;
use App\Models\Categories;


class EventsController extends Controller
{
    public function index()
    {
        $categories = Categories::where('type', 1)->get();

        $data = Event::all()->map(function ($event) {
            return [
                'id' => $event->id,
                'name' => $event->name,
                'start_date' => \Carbon\Carbon::parse($event->start_date)->format('M d'),
                'end_date' => \Carbon\Carbon::parse($event->end_date)->format('M d'),
            ];
        });

        return view('events', [
            'data' => $data,
            'categories' => $categories,
        ]);
    }
    public function edit($id)
    {
        $events = Event::findOrFail($id);
        return response()->json($events);
    }
    public function update(Request $request)
    {
        $id = $request->id;
        $category = Event::findOrFail($id);
        $category->name = $request->name;
        $category->start_date = $request->start_date;
        $category->end_date = $request->end_date;
        $category->save();

        return redirect()->back()->with('success', 'Category updated successfully!');
    }
}
