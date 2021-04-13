package arm.node;

@:keep class MoverMira extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _RotateObject_002 = new armory.logicnode.RotateObjectNode(this);
		var _OnKeyboard_002 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_002.property0 = "Down";
		_OnKeyboard_002.property1 = "up";
		_OnKeyboard_002.addOutputs([_RotateObject_002]);
		_RotateObject_002.addInput(_OnKeyboard_002, 0);
		_RotateObject_002.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_RotateObject_002.addInput(new armory.logicnode.VectorNode(this, 0.009999999776482582, 0.0, 0.0), 0);
		_RotateObject_002.addOutputs([new armory.logicnode.NullNode(this)]);
		var _RotateObject_003 = new armory.logicnode.RotateObjectNode(this);
		var _OnKeyboard_003 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_003.property0 = "Down";
		_OnKeyboard_003.property1 = "down";
		_OnKeyboard_003.addOutputs([_RotateObject_003]);
		_RotateObject_003.addInput(_OnKeyboard_003, 0);
		_RotateObject_003.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_RotateObject_003.addInput(new armory.logicnode.VectorNode(this, -0.009999999776482582, 0.0, 0.0), 0);
		_RotateObject_003.addOutputs([new armory.logicnode.NullNode(this)]);
		var _RotateObjectAroundAxis = new armory.logicnode.RotateObjectAroundAxisNode(this);
		var _OnKeyboard = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard.property0 = "Down";
		_OnKeyboard.property1 = "left";
		_OnKeyboard.addOutputs([_RotateObjectAroundAxis]);
		_RotateObjectAroundAxis.addInput(_OnKeyboard, 0);
		_RotateObjectAroundAxis.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_RotateObjectAroundAxis.addInput(new armory.logicnode.VectorNode(this, 0.0, 0.0, 1.0), 0);
		_RotateObjectAroundAxis.addInput(new armory.logicnode.FloatNode(this, 0.009999999776482582), 0);
		_RotateObjectAroundAxis.addOutputs([new armory.logicnode.NullNode(this)]);
		var _RotateObjectAroundAxis_001 = new armory.logicnode.RotateObjectAroundAxisNode(this);
		var _OnKeyboard_001 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_001.property0 = "Down";
		_OnKeyboard_001.property1 = "right";
		_OnKeyboard_001.addOutputs([_RotateObjectAroundAxis_001]);
		_RotateObjectAroundAxis_001.addInput(_OnKeyboard_001, 0);
		_RotateObjectAroundAxis_001.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_RotateObjectAroundAxis_001.addInput(new armory.logicnode.VectorNode(this, 0.0, 0.0, 1.0), 0);
		_RotateObjectAroundAxis_001.addInput(new armory.logicnode.FloatNode(this, -0.009999999776482582), 0);
		_RotateObjectAroundAxis_001.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}