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
        $event = Event::with('categories')->findOrFail($id);
        return response()->json($event);
    }
    public function update(Request $request)
    {
        $id = $request->id;
        $category = Event::findOrFail($id);
        $category->name = $request->name;
        $category->start_date = $request->start_date;
        $category->end_date = $request->end_date;
        $category->categories()->sync($request->categories);
        $category->save();
        return redirect()->back()->with('success', 'Event updated successfully!');
    }
    public function delete($id)
    {
        $category = Event::findOrFail($id);
        $category->delete();
        return response()->json(['success' => true, 'message' => 'Show status updated successfully.']);
    }
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|max:255',
            'start_date' => 'required',
            'end_date' => 'required',
            'categories' => 'required',
        ]);

        $event = Event::create([
            'name' => $validated['name'],
            'start_date' => $validated['start_date'],
            'end_date' => $validated['end_date'],
        ]);

        $event->categories()->sync($validated['categories']);
        $event->save();

        return redirect()->back()->with('success', 'Event created successfully!');
    }
}


