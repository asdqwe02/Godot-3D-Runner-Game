using Godot;
using System;

public class PlayerController : Node
{
    // Declare member variables here. Examples:
    // private int a = 2;
    // private string b = "text";  
    public float Speed = 1f;

    // Called when the node enters the scene tree for the first time.
    public override void _Ready()
    {
    }

//  // Called every frame. 'delta' is the elapsed time since the previous frame.
//  public override void _Process(float delta)
//  {
//      
//  }
    public override void _PhysicsProcess(float delta)
    {
        base._PhysicsProcess(delta);
        Transform.Identity.Translated(Vector3.Forward * Speed * delta);
    }
}