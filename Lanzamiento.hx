package arm.node;

@:keep class Lanzamiento extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _ApplyImpulse = new armory.logicnode.ApplyImpulseNode(this);
		var _SpawnObject = new armory.logicnode.SpawnObjectNode(this);
		var _OnKeyboard = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard.property0 = "Started";
		_OnKeyboard.property1 = "space";
		_OnKeyboard.addOutputs([_SpawnObject]);
		_SpawnObject.addInput(_OnKeyboard, 0);
		_SpawnObject.addInput(new armory.logicnode.ObjectNode(this, "Bala"), 0);
		var _Transform = new armory.logicnode.TransformNode(this);
		var _GetLocation = new armory.logicnode.GetLocationNode(this);
		_GetLocation.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_GetLocation.addOutputs([_Transform]);
		_Transform.addInput(_GetLocation, 0);
		var _GetRotation = new armory.logicnode.GetRotationNode(this);
		_GetRotation.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_GetRotation.addOutputs([_Transform]);
		_GetRotation.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		_GetRotation.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_GetRotation.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_GetRotation.addOutputs([new armory.logicnode.VectorNode(this, 0.0, 0.0, 0.0)]);
		_GetRotation.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Transform.addInput(_GetRotation, 0);
		_Transform.addInput(new armory.logicnode.VectorNode(this, 1.0, 1.0, 1.0), 0);
		var _SpawnObject_001 = new armory.logicnode.SpawnObjectNode(this);
		_SpawnObject_001.addInput(new armory.logicnode.NullNode(this), 0);
		_SpawnObject_001.addInput(new armory.logicnode.ObjectNode(this, "Bala"), 0);
		_SpawnObject_001.addInput(_Transform, 0);
		var _OnKeyboard_001 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_001.property0 = "Started";
		_OnKeyboard_001.property1 = "tab";
		_OnKeyboard_001.addOutputs([_SpawnObject_001]);
		_SpawnObject_001.addInput(_OnKeyboard_001, 0);
		var _ApplyImpulse_001 = new armory.logicnode.ApplyImpulseNode(this);
		_ApplyImpulse_001.addInput(_SpawnObject_001, 0);
		_ApplyImpulse_001.addInput(_SpawnObject_001, 1);
		_ApplyImpulse_001.addInput(new armory.logicnode.VectorNode(this, 0.0, 13.0, -13.0), 0);
		_ApplyImpulse_001.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_ApplyImpulse_001.addOutputs([new armory.logicnode.NullNode(this)]);
		_SpawnObject_001.addOutputs([_ApplyImpulse_001]);
		_SpawnObject_001.addOutputs([_ApplyImpulse_001]);
		_Transform.addOutputs([_SpawnObject, _SpawnObject_001]);
		_SpawnObject.addInput(_Transform, 0);
		_SpawnObject.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_SpawnObject.addOutputs([_ApplyImpulse]);
		_SpawnObject.addOutputs([_ApplyImpulse]);
		_ApplyImpulse.addInput(_SpawnObject, 0);
		_ApplyImpulse.addInput(_SpawnObject, 1);
		_ApplyImpulse.addInput(new armory.logicnode.VectorNode(this, 0.0, 0.0, -40.0), 0);
		_ApplyImpulse.addInput(new armory.logicnode.BooleanNode(this, true), 0);
		_ApplyImpulse.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}