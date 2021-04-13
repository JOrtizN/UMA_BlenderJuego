package arm.node;

@:keep class MovimientosLadosyAtr_s extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _TranslateObject = new armory.logicnode.TranslateObjectNode(this);
		var _OnKeyboard = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard.property0 = "Down";
		_OnKeyboard.property1 = "d";
		var _TranslateObject_001 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_001.addInput(_OnKeyboard, 0);
		_TranslateObject_001.addInput(new armory.logicnode.ObjectNode(this, "Mira_Base"), 0);
		_TranslateObject_001.addInput(new armory.logicnode.VectorNode(this, 0.09999999403953552, 0.0, 0.0), 0);
		_TranslateObject_001.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _TranslateObject_002 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_002.addInput(_OnKeyboard, 0);
		_TranslateObject_002.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_TranslateObject_002.addInput(new armory.logicnode.VectorNode(this, 0.09999999403953552, 0.0, 0.0), 0);
		_TranslateObject_002.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_OnKeyboard.addOutputs([_TranslateObject, _TranslateObject_001, _TranslateObject_002]);
		_TranslateObject.addInput(_OnKeyboard, 0);
		_TranslateObject.addInput(new armory.logicnode.ObjectNode(this, "Ruedas"), 0);
		_TranslateObject.addInput(new armory.logicnode.VectorNode(this, 0.09999999403953552, 0.0, 0.0), 0);
		_TranslateObject.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject.addOutputs([new armory.logicnode.NullNode(this)]);
		var _TranslateObject_003 = new armory.logicnode.TranslateObjectNode(this);
		var _OnKeyboard_001 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_001.property0 = "Down";
		_OnKeyboard_001.property1 = "a";
		var _TranslateObject_004 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_004.addInput(_OnKeyboard_001, 0);
		_TranslateObject_004.addInput(new armory.logicnode.ObjectNode(this, "Mira_Base"), 0);
		_TranslateObject_004.addInput(new armory.logicnode.VectorNode(this, -0.09999999403953552, 0.0, 0.0), 0);
		_TranslateObject_004.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_004.addOutputs([new armory.logicnode.NullNode(this)]);
		var _TranslateObject_005 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_005.addInput(_OnKeyboard_001, 0);
		_TranslateObject_005.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_TranslateObject_005.addInput(new armory.logicnode.VectorNode(this, -0.09999999403953552, 0.0, 0.0), 0);
		_TranslateObject_005.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_005.addOutputs([new armory.logicnode.NullNode(this)]);
		_OnKeyboard_001.addOutputs([_TranslateObject_003, _TranslateObject_004, _TranslateObject_005]);
		_TranslateObject_003.addInput(_OnKeyboard_001, 0);
		_TranslateObject_003.addInput(new armory.logicnode.ObjectNode(this, "Ruedas"), 0);
		_TranslateObject_003.addInput(new armory.logicnode.VectorNode(this, -0.09999999403953552, 0.0, 0.0), 0);
		_TranslateObject_003.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_003.addOutputs([new armory.logicnode.NullNode(this)]);
		var _TranslateObject_008 = new armory.logicnode.TranslateObjectNode(this);
		var _OnKeyboard_002 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_002.property0 = "Down";
		_OnKeyboard_002.property1 = "s";
		var _TranslateObject_006 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_006.addInput(_OnKeyboard_002, 0);
		_TranslateObject_006.addInput(new armory.logicnode.ObjectNode(this, "Ruedas"), 0);
		_TranslateObject_006.addInput(new armory.logicnode.VectorNode(this, 0.0, -0.10000000149011612, 0.0), 0);
		_TranslateObject_006.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_006.addOutputs([new armory.logicnode.NullNode(this)]);
		var _TranslateObject_007 = new armory.logicnode.TranslateObjectNode(this);
		_TranslateObject_007.addInput(_OnKeyboard_002, 0);
		_TranslateObject_007.addInput(new armory.logicnode.ObjectNode(this, "Mira_Base"), 0);
		_TranslateObject_007.addInput(new armory.logicnode.VectorNode(this, 0.0, -0.10000000149011612, 0.0), 0);
		_TranslateObject_007.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_007.addOutputs([new armory.logicnode.NullNode(this)]);
		_OnKeyboard_002.addOutputs([_TranslateObject_006, _TranslateObject_007, _TranslateObject_008]);
		_TranslateObject_008.addInput(_OnKeyboard_002, 0);
		_TranslateObject_008.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_TranslateObject_008.addInput(new armory.logicnode.VectorNode(this, 0.0, -0.10000000149011612, 0.0), 0);
		_TranslateObject_008.addInput(new armory.logicnode.BooleanNode(this, false), 0);
		_TranslateObject_008.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetLocation = new armory.logicnode.SetLocationNode(this);
		var _OnKeyboard_003 = new armory.logicnode.OnKeyboardNode(this);
		_OnKeyboard_003.property0 = "Down";
		_OnKeyboard_003.property1 = "w";
		var _SetLocation_001 = new armory.logicnode.SetLocationNode(this);
		_SetLocation_001.addInput(_OnKeyboard_003, 0);
		_SetLocation_001.addInput(new armory.logicnode.ObjectNode(this, "Mira_Base"), 0);
		_SetLocation_001.addInput(new armory.logicnode.VectorNode(this, 4.0, -10.0, 2.0999999046325684), 0);
		_SetLocation_001.addOutputs([new armory.logicnode.NullNode(this)]);
		var _SetLocation_002 = new armory.logicnode.SetLocationNode(this);
		_SetLocation_002.addInput(_OnKeyboard_003, 0);
		_SetLocation_002.addInput(new armory.logicnode.ObjectNode(this, "Mira"), 0);
		_SetLocation_002.addInput(new armory.logicnode.VectorNode(this, 4.0, -10.0, 2.799999952316284), 0);
		_SetLocation_002.addOutputs([new armory.logicnode.NullNode(this)]);
		_OnKeyboard_003.addOutputs([_SetLocation, _SetLocation_001, _SetLocation_002]);
		_SetLocation.addInput(_OnKeyboard_003, 0);
		_SetLocation.addInput(new armory.logicnode.ObjectNode(this, "Ruedas"), 0);
		_SetLocation.addInput(new armory.logicnode.VectorNode(this, 4.0, -10.0, 0.800000011920929), 0);
		_SetLocation.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}