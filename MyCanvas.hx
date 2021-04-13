package arm.node;

@:keep class MyCanvas extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _CanvasSetText = new armory.logicnode.CanvasSetTextNode(this);
		var _OnUpdate = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate.property0 = "Update";
		_OnUpdate.addOutputs([_CanvasSetText]);
		_CanvasSetText.addInput(_OnUpdate, 0);
		_CanvasSetText.addInput(new armory.logicnode.StringNode(this, "Timer"), 0);
		var _Math = new armory.logicnode.MathNode(this);
		_Math.property0 = "Floor";
		_Math.property1 = "false";
		var _Timer = new armory.logicnode.TimerNode(this);
		var _OnInit = new armory.logicnode.OnInitNode(this);
		_OnInit.addOutputs([_Timer]);
		_Timer.addInput(_OnInit, 0);
		_Timer.addInput(new armory.logicnode.NullNode(this), 0);
		var _OnContact = new armory.logicnode.OnContactNode(this);
		_OnContact.property0 = "Begin";
		_OnContact.addInput(new armory.logicnode.ObjectNode(this, "Cube.026"), 0);
		_OnContact.addInput(new armory.logicnode.ObjectNode(this, "Z0Plane"), 0);
		_OnContact.addOutputs([_Timer]);
		_Timer.addInput(_OnContact, 0);
		_Timer.addInput(new armory.logicnode.FloatNode(this, 50.0), 0);
		_Timer.addInput(new armory.logicnode.IntegerNode(this, 1), 0);
		_Timer.addOutputs([new armory.logicnode.NullNode(this)]);
		_Timer.addOutputs([new armory.logicnode.NullNode(this)]);
		_Timer.addOutputs([new armory.logicnode.BooleanNode(this, false)]);
		_Timer.addOutputs([new armory.logicnode.IntegerNode(this, 0)]);
		_Timer.addOutputs([_Math]);
		_Timer.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Timer.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Math.addInput(_Timer, 4);
		_Math.addInput(new armory.logicnode.FloatNode(this, 0.5), 0);
		_Math.addOutputs([_CanvasSetText]);
		_CanvasSetText.addInput(_Math, 0);
		_CanvasSetText.addOutputs([new armory.logicnode.NullNode(this)]);
		var _CanvasSetText_001 = new armory.logicnode.CanvasSetTextNode(this);
		var _Merge_001 = new armory.logicnode.MergeNode(this);
		var _OnContact_002 = new armory.logicnode.OnContactNode(this);
		_OnContact_002.property0 = "Begin";
		_OnContact_002.addInput(new armory.logicnode.ObjectNode(this, "Diana"), 0);
		_OnContact_002.addInput(new armory.logicnode.ObjectNode(this, "Z0Plane"), 0);
		_OnContact_002.addOutputs([_Merge_001]);
		_Merge_001.addInput(_OnContact_002, 0);
		var _OnContact_003 = new armory.logicnode.OnContactNode(this);
		_OnContact_003.property0 = "Begin";
		_OnContact_003.addInput(new armory.logicnode.ObjectNode(this, "Tapa"), 0);
		_OnContact_003.addInput(new armory.logicnode.ObjectNode(this, "Base_Cesta"), 0);
		_OnContact_003.addOutputs([_Merge_001]);
		_Merge_001.addInput(_OnContact_003, 0);
		var _OnContact_004 = new armory.logicnode.OnContactNode(this);
		_OnContact_004.property0 = "Begin";
		_OnContact_004.addInput(new armory.logicnode.ObjectNode(this, "OBJETIVO1"), 0);
		_OnContact_004.addInput(new armory.logicnode.ObjectNode(this, "Z0Plane"), 0);
		_OnContact_004.addOutputs([_Merge_001]);
		_Merge_001.addInput(_OnContact_004, 0);
		var _OnContact_005 = new armory.logicnode.OnContactNode(this);
		_OnContact_005.property0 = "Begin";
		_OnContact_005.addInput(new armory.logicnode.ObjectNode(this, "OBJETIVO2"), 0);
		_OnContact_005.addInput(new armory.logicnode.ObjectNode(this, "Z0Plane"), 0);
		_OnContact_005.addOutputs([_Merge_001]);
		_Merge_001.addInput(_OnContact_005, 0);
		var _SetVariable = new armory.logicnode.SetVariableNode(this);
		_SetVariable.addInput(_Merge_001, 0);
		var _Integer = new armory.logicnode.IntegerNode(this);
		_Integer.addInput(new armory.logicnode.IntegerNode(this, 0), 0);
		var _Math_001 = new armory.logicnode.MathNode(this);
		_Math_001.property0 = "Add";
		_Math_001.property1 = "false";
		_Math_001.addInput(_Integer, 0);
		_Math_001.addInput(new armory.logicnode.FloatNode(this, 10.0), 0);
		_Math_001.addOutputs([_SetVariable]);
		var _ConcatenateString = new armory.logicnode.ConcatenateStringNode(this);
		_ConcatenateString.addInput(new armory.logicnode.StringNode(this, "           : "), 0);
		_ConcatenateString.addInput(_Integer, 0);
		_ConcatenateString.addOutputs([_CanvasSetText_001]);
		_Integer.addOutputs([_SetVariable, _Math_001, _ConcatenateString]);
		_SetVariable.addInput(_Integer, 0);
		_SetVariable.addInput(_Math_001, 0);
		_SetVariable.addOutputs([new armory.logicnode.NullNode(this)]);
		_Merge_001.addOutputs([_SetVariable, _CanvasSetText_001]);
		_CanvasSetText_001.addInput(_Merge_001, 0);
		_CanvasSetText_001.addInput(new armory.logicnode.StringNode(this, "Score"), 0);
		_CanvasSetText_001.addInput(_ConcatenateString, 0);
		_CanvasSetText_001.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}