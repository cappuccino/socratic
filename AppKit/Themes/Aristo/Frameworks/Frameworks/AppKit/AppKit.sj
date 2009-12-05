@STATIC;1.0;p;31;_CPBorderlessBridgeWindowView.ji;15;_CPWindowView.jc;1901;
var _1=nil;
var _2=objj_allocateClassPair(_CPWindowView,"_CPBorderlessBridgeWindowView"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_toolbarBackgroundView")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("tile"),function(_4,_5){
with(_4){
objj_msgSendSuper({receiver:_4,super_class:objj_getClass("_CPWindowView")},"tile");
var _6=objj_msgSend(_4,"window"),_7=objj_msgSend(_4,"bounds");
objj_msgSend(objj_msgSend(_6,"contentView"),"setFrame:",CGRectMake(0,objj_msgSend(_4,"toolbarMaxY"),CGRectGetWidth(_7),CGRectGetHeight(_7)-objj_msgSend(_4,"toolbarMaxY")));
if(!objj_msgSend(objj_msgSend(_6,"toolbar"),"isVisible")){
objj_msgSend(_toolbarBackgroundView,"removeFromSuperview");
_toolbarBackgroundView=nil;
return;
}
if(!_toolbarBackgroundView){
_toolbarBackgroundView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_toolbarBackgroundView,"setBackgroundColor:",objj_msgSend(objj_msgSend(_4,"class"),"toolbarBackgroundColor"));
objj_msgSend(_toolbarBackgroundView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_4,"addSubview:positioned:relativeTo:",_toolbarBackgroundView,CPWindowBelow,nil);
}
var _8=CGRectMakeZero();
_8.origin=CGPointMakeCopy(objj_msgSend(_4,"toolbarOffset"));
_8.size=objj_msgSend(_toolbarView,"frame").size;
objj_msgSend(_toolbarBackgroundView,"setFrame:",_8);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("toolbarBackgroundColor"),function(_9,_a){
with(_9){
if(!_1){
_1=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPBorderlessBridgeWindowView,"class")),"pathForResource:","_CPToolbarView/_CPToolbarViewBackground.png"),CGSizeMake(1,59)));
}
return _1;
}
})]);
p;25;_CPBorderlessWindowView.ji;15;_CPWindowView.jc;188;
var _1=objj_allocateClassPair(_CPWindowView,"_CPBorderlessWindowView"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
p;17;_CPCibConnector.jI;21;Foundation/CPObject.jI;29;Foundation/CPKeyValueCoding.jc;3017;
var _1="_CPCibConnectorSourceKey",_2="_CPCibConnectorDestinationKey",_3="_CPCibConnectorLabelKey";
var _4=objj_allocateClassPair(CPObject,"_CPCibConnector"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_source"),new objj_ivar("_destination"),new objj_ivar("_label")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("replaceObjects:"),function(_6,_7,_8){
with(_6){
var _9=_8[objj_msgSend(_source,"hash")];
if(_9!==undefined){
_source=_9;
}
_9=_8[objj_msgSend(_destination,"hash")];
if(_9!==undefined){
_destination=_9;
}
}
})]);
var _4=objj_getClass("_CPCibConnector");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibConnector\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPObject")},"init");
if(_a){
_source=objj_msgSend(_c,"decodeObjectForKey:",_1);
_destination=objj_msgSend(_c,"decodeObjectForKey:",_2);
_label=objj_msgSend(_c,"decodeObjectForKey:",_3);
}
return _a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_d,_e,_f){
with(_d){
objj_msgSend(_f,"encodeObject:forKey:",_source,_1);
objj_msgSend(_f,"encodeObject:forKey:",_destination,_2);
objj_msgSend(_f,"encodeObject:forKey:",_label,_3);
}
})]);
var _4=objj_allocateClassPair(_CPCibConnector,"_CPCibControlConnector"),_5=_4.isa;
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("establishConnection"),function(_10,_11){
with(_10){
var _12=_label;
if(!objj_msgSend(_12,"hasSuffix:",":")){
_12+=":";
}
var _13=CPSelectorFromString(_12);
if(!_13){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-["+objj_msgSend(_10,"className")+" "+_11+"] selector "+_12+" does not exist.");
}
if(objj_msgSend(_source,"respondsToSelector:",sel_getUid("setAction:"))){
objj_msgSend(_source,sel_getUid("setAction:"),_13);
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-["+objj_msgSend(_10,"className")+" "+_11+"] "+objj_msgSend(_source,"description")+" does not respond to setAction:");
}
if(objj_msgSend(_source,"respondsToSelector:",sel_getUid("setTarget:"))){
objj_msgSend(_source,sel_getUid("setTarget:"),_destination);
}else{
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"-["+objj_msgSend(_10,"className")+" "+_11+"] "+objj_msgSend(_source,"description")+" does not respond to setTarget:");
}
}
})]);
var _4=objj_allocateClassPair(_CPCibConnector,"_CPCibOutletConnector"),_5=_4.isa;
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("establishConnection"),function(_14,_15){
with(_14){
objj_msgSend(_source,"setValue:forKey:",_destination,_label);
}
})]);
p;20;_CPCibCustomObject.jI;21;Foundation/CPObject.jc;1545;
var _1="_CPCibCustomObjectClassName";
var _2=objj_allocateClassPair(CPObject,"_CPCibCustomObject"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_className")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("customClassName"),function(_4,_5){
with(_4){
return _className;
}
}),new objj_method(sel_getUid("description"),function(_6,_7){
with(_6){
return objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"description")+" ("+objj_msgSend(_6,"customClassName")+")";
}
})]);
var _2=objj_getClass("_CPCibCustomObject");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibCustomObject\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPObject")},"init");
if(_8){
_className=objj_msgSend(_a,"decodeObjectForKey:",_1);
}
return _8;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_b,_c,_d){
with(_b){
objj_msgSend(_d,"encodeObject:forKey:",_className,_1);
}
}),new objj_method(sel_getUid("_cibInstantiate"),function(_e,_f){
with(_e){
var _10=CPClassFromString(_className);
if(!_10){
CPLog("Unknown class \""+_className+"\" in cib file");
}
if(_10===objj_msgSend(CPApplication,"class")){
return objj_msgSend(CPApplication,"sharedApplication");
}
return objj_msgSend(objj_msgSend(_10,"alloc"),"init");
}
})]);
p;22;_CPCibCustomResource.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;2725;
var _1="_CPCibCustomResourceClassNameKey",_2="_CPCibCustomResourceResourceNameKey",_3="_CPCibCustomResourcePropertiesKey";
var _4=objj_allocateClassPair(CPObject,"_CPCibCustomResource"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_className"),new objj_ivar("_resourceName"),new objj_ivar("_properties")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithClassName:resourceName:properties:"),function(_6,_7,_8,_9,_a){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"init");
if(_6){
_className=_8;
_resourceName=_9;
_properties=_a;
}
return _6;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_b,_c,_d){
with(_b){
_b=objj_msgSendSuper({receiver:_b,super_class:objj_getClass("CPObject")},"init");
if(_b){
_className=objj_msgSend(_d,"decodeObjectForKey:",_1);
_resourceName=objj_msgSend(_d,"decodeObjectForKey:",_2);
_properties=objj_msgSend(_d,"decodeObjectForKey:",_3);
}
return _b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_e,_f,_10){
with(_e){
objj_msgSend(_10,"encodeObject:forKey:",_className,_1);
objj_msgSend(_10,"encodeObject:forKey:",_resourceName,_2);
objj_msgSend(_10,"encodeObject:forKey:",_properties,_3);
}
}),new objj_method(sel_getUid("awakeAfterUsingCoder:"),function(_11,_12,_13){
with(_11){
if(objj_msgSend(_13,"respondsToSelector:",sel_getUid("bundle"))){
if(_className==="CPImage"){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(_13,"bundle"),"pathForResource:",_resourceName),objj_msgSend(_properties,"objectForKey:","size"));
}
}
return _11;
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("imageResourceWithName:size:"),function(_14,_15,_16,_17){
with(_14){
return objj_msgSend(objj_msgSend(_14,"alloc"),"initWithClassName:resourceName:properties:","CPImage",_16,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_17,"size"));
}
})]);
var _4=objj_getClass("_CPCibCustomResource");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibCustomResource\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("filename"),function(_18,_19){
with(_18){
return objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"pathForResource:",_resourceName);
}
}),new objj_method(sel_getUid("size"),function(_1a,_1b){
with(_1a){
return objj_msgSend(_properties,"objectForKey:","size");
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_1c,_1d){
with(_1c){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_1e,_1f){
with(_1e){
return NO;
}
})]);
p;18;_CPCibCustomView.ji;8;CPView.jc;2781;
var _1=objj_allocateClassPair(CPView,"_CPCibCustomView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_className")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("customClassName"),function(_3,_4){
with(_3){
return _className;
}
})]);
var _5="_CPCibCustomViewClassNameKey";
var _1=objj_getClass("_CPCibCustomView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibCustomView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPView")},"initWithCoder:",_8);
if(_6){
_className=objj_msgSend(_8,"decodeObjectForKey:",_5);
}
return _6;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_9,_a,_b){
with(_9){
objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPView")},"encodeWithCoder:",_b);
objj_msgSend(_b,"encodeObject:forKey:",_className,_5);
}
}),new objj_method(sel_getUid("drawRect:"),function(_c,_d,_e){
with(_c){
var _f=objj_msgSend(_c,"bounds"),_10=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextSetLineWidth(_10,1);
CGContextSetStrokeColor(_10,objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",169/255,173/255,178/255,1));
CGContextStrokeRect(_10,CGRectInset(CGRectIntegral(_f),0.5,0.5));
CGContextSetFillColor(_10,objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",224/255,236/255,250/255,1));
CGContextFillRect(_10,CGRectInset(_f,2,2));
}
}),new objj_method(sel_getUid("_cibInstantiate"),function(_11,_12){
with(_11){
var _13=CPClassFromString(_className);
if(!_13){
CPLog("Unknown class \""+_className+"\" in cib file, using CPView instead.");
_13=objj_msgSend(CPView,"class");
}
if(_13===objj_msgSend(_11,"class")){
_className="CPView";
return _11;
}
var _14=objj_msgSend(objj_msgSend(_13,"alloc"),"initWithFrame:",objj_msgSend(_11,"frame"));
if(_14){
objj_msgSend(_14,"setBounds:",objj_msgSend(_11,"bounds"));
var _15=objj_msgSend(objj_msgSend(_11,"subviews"),"copy"),_16=0,_17=_15.length;
for(;_16<_17;++_16){
objj_msgSend(_14,"addSubview:",_15[_16]);
}
objj_msgSend(_14,"setAutoresizingMask:",objj_msgSend(_11,"autoresizingMask"));
objj_msgSend(_14,"setAutoresizesSubviews:",objj_msgSend(_11,"autoresizesSubviews"));
objj_msgSend(_14,"setHitTests:",objj_msgSend(_11,"hitTests"));
objj_msgSend(_14,"setHidden:",objj_msgSend(_11,"isHidden"));
objj_msgSend(_14,"setAlphaValue:",objj_msgSend(_11,"alphaValue"));
objj_msgSend(_superview,"replaceSubview:with:",_11,_14);
objj_msgSend(_14,"setBackgroundColor:",objj_msgSend(_11,"backgroundColor"));
}
return _14;
}
})]);
p;23;_CPCibKeyedUnarchiver.jI;30;Foundation/CPKeyedUnarchiver.jc;842;
var _1=objj_allocateClassPair(CPKeyedUnarchiver,"_CPCibKeyedUnarchiver"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_bundle")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initForReadingWithData:bundle:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPKeyedUnarchiver")},"initForReadingWithData:",_5);
if(_3){
_bundle=_6;
objj_msgSend(_3,"setDelegate:",_3);
}
return _3;
}
}),new objj_method(sel_getUid("bundle"),function(_7,_8){
with(_7){
return _bundle;
}
}),new objj_method(sel_getUid("replaceObjectAtUID:withObject:"),function(_9,_a,_b,_c){
with(_9){
_objects[_b]=_c;
}
}),new objj_method(sel_getUid("objectAtUID:"),function(_d,_e,_f){
with(_d){
return _objects[_f];
}
})]);
p;15;_CPCibLoading.jI;21;Foundation/CPBundle.jI;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jc;1358;
var _1="CPCibOwner";
var _2=objj_getClass("CPObject");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPObject\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("awakeFromCib"),function(_4,_5){
with(_4){
}
})]);
var _2=objj_getClass("CPBundle");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPBundle\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("loadCibFile:externalNameTable:"),function(_6,_7,_8,_9){
with(_6){
return objj_msgSend(objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfFile:",_8),"instantiateCibWithExternalNameTable:",_9);
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("loadCibFile:externalNameTable:"),function(_a,_b,_c,_d){
with(_a){
return objj_msgSend(objj_msgSend(objj_msgSend(CPCib,"alloc"),"initWithContentsOfFile:",_c),"instantiateCibWithExternalNameTable:",_d);
}
}),new objj_method(sel_getUid("loadCibNamed:owner:"),function(_e,_f,_10,_11){
with(_e){
var _12=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_11,"class"));
var _13=objj_msgSend(_12,"pathForResource:",_10);
return objj_msgSend(CPBundle,"loadCibFile:externalNameTable:",aPath,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_11,_1));
}
})]);
p;18;_CPCibObjectData.jI;20;Foundation/CPArray.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;7;CPCib.ji;17;_CPCibConnector.jc;6028;
var _1=objj_allocateClassPair(CPObject,"_CPCibObjectData"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_namesKeys"),new objj_ivar("_namesValues"),new objj_ivar("_accessibilityConnectors"),new objj_ivar("_accessibilityOidsKeys"),new objj_ivar("_accessibilityOidsValues"),new objj_ivar("_classesKeys"),new objj_ivar("_classesValues"),new objj_ivar("_connections"),new objj_ivar("_fontManager"),new objj_ivar("_framework"),new objj_ivar("_nextOid"),new objj_ivar("_objectsKeys"),new objj_ivar("_objectsValues"),new objj_ivar("_oidKeys"),new objj_ivar("_oidValues"),new objj_ivar("_fileOwner"),new objj_ivar("_visibleWindows"),new objj_ivar("_replacementObjects")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_namesKeys=[];
_namesValues=[];
_classesKeys=[];
_classesValues=[];
_connections=[];
_framework="";
_nextOid=[];
_objectsKeys=[];
_objectsValues=[];
_oidKeys=[];
_oidValues=[];
_fileOwner=nil;
_visibleWindows=objj_msgSend(CPSet,"set");
}
return _3;
}
}),new objj_method(sel_getUid("mainMenu"),function(_5,_6){
with(_5){
var _7=objj_msgSend(_namesValues,"indexOfObjectIdenticalTo:","MainMenu");
if(_7===CPNotFound){
return nil;
}
return _namesKeys[_7];
}
}),new objj_method(sel_getUid("displayVisibleWindows"),function(_8,_9){
with(_8){
var _a=nil,_b=objj_msgSend(_visibleWindows,"objectEnumerator");
while(_a=objj_msgSend(_b,"nextObject")){
objj_msgSend(_replacementObjects[objj_msgSend(_a,"hash")],"makeKeyAndOrderFront:",_8);
}
}
})]);
var _c="_CPCibObjectDataNamesKeysKey",_d="_CPCibObjectDataNamesValuesKey",_e="_CPCibObjectDataAccessibilityConnectors",_f="_CPCibObjectDataAccessibilityOidsKeys",_10="_CPCibObjectDataAccessibilityOidsValues",_11="_CPCibObjectDataClassesKeysKey",_12="_CPCibObjectDataClassesValuesKey",_13="_CPCibObjectDataConnectionsKey",_14="_CPCibObjectDataFontManagerKey",_15="_CPCibObjectDataFrameworkKey",_16="_CPCibObjectDataNextOidKey",_17="_CPCibObjectDataObjectsKeysKey",_18="_CPCibObjectDataObjectsValuesKey",_19="_CPCibObjectDataOidKeysKey",_1a="_CPCibObjectDataOidValuesKey",_1b="_CPCibObjectDataFileOwnerKey",_1c="_CPCibObjectDataVisibleWindowsKey";
var _1=objj_getClass("_CPCibObjectData");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPCibObjectData\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_1d,_1e,_1f){
with(_1d){
_1d=objj_msgSendSuper({receiver:_1d,super_class:objj_getClass("CPObject")},"init");
if(_1d){
_replacementObjects={};
_namesKeys=objj_msgSend(_1f,"decodeObjectForKey:",_c);
_namesValues=objj_msgSend(_1f,"decodeObjectForKey:",_d);
_classesKeys=objj_msgSend(_1f,"decodeObjectForKey:",_11);
_classesValues=objj_msgSend(_1f,"decodeObjectForKey:",_12);
_connections=objj_msgSend(_1f,"decodeObjectForKey:",_13);
_framework=objj_msgSend(_1f,"decodeObjectForKey:",_15);
_nextOid=objj_msgSend(_1f,"decodeIntForKey:",_16);
_objectsKeys=objj_msgSend(_1f,"decodeObjectForKey:",_17);
_objectsValues=objj_msgSend(_1f,"decodeObjectForKey:",_18);
_oidKeys=objj_msgSend(_1f,"decodeObjectForKey:",_19);
_oidValues=objj_msgSend(_1f,"decodeObjectForKey:",_1a);
_fileOwner=objj_msgSend(_1f,"decodeObjectForKey:",_1b);
_visibleWindows=objj_msgSend(_1f,"decodeObjectForKey:",_1c);
}
return _1d;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_20,_21,_22){
with(_20){
objj_msgSend(_22,"encodeObject:forKey:",_namesKeys,_c);
objj_msgSend(_22,"encodeObject:forKey:",_namesValues,_d);
objj_msgSend(_22,"encodeObject:forKey:",_classesKeys,_11);
objj_msgSend(_22,"encodeObject:forKey:",_classesValues,_12);
objj_msgSend(_22,"encodeObject:forKey:",_connections,_13);
objj_msgSend(_22,"encodeObject:forKey:",_framework,_15);
objj_msgSend(_22,"encodeInt:forKey:",_nextOid,_16);
objj_msgSend(_22,"encodeObject:forKey:",_objectsKeys,_17);
objj_msgSend(_22,"encodeObject:forKey:",_objectsValues,_18);
objj_msgSend(_22,"encodeObject:forKey:",_oidKeys,_19);
objj_msgSend(_22,"encodeObject:forKey:",_oidValues,_1a);
objj_msgSend(_22,"encodeObject:forKey:",_fileOwner,_1b);
objj_msgSend(_22,"encodeObject:forKey:",_visibleWindows,_1c);
}
}),new objj_method(sel_getUid("instantiateWithOwner:topLevelObjects:"),function(_23,_24,_25,_26){
with(_23){
var _27=objj_msgSend(_objectsKeys,"count");
while(_27--){
var _28=_objectsKeys[_27],_29=_objectsValues[_27],_2a=_28;
if(objj_msgSend(_28,"respondsToSelector:",sel_getUid("_cibInstantiate"))){
var _2a=objj_msgSend(_28,"_cibInstantiate");
if(_2a!==_28){
_replacementObjects[objj_msgSend(_28,"hash")]=_2a;
if(objj_msgSend(_2a,"isKindOfClass:",objj_msgSend(CPView,"class"))){
var _2b=objj_msgSend(_2a,"superview");
if(objj_msgSend(_2b,"isKindOfClass:",objj_msgSend(CPClipView,"class"))){
var _2c=objj_msgSend(_2b,"superview");
if(objj_msgSend(_2c,"isKindOfClass:",objj_msgSend(CPScrollView,"class"))){
objj_msgSend(_2c,"setDocumentView:",_2a);
}
}
}
}
}
if(_26&&_29===_fileOwner&&_28!==_fileOwner){
_26.push(_2a);
}
}
}
}),new objj_method(sel_getUid("establishConnectionsWithOwner:topLevelObjects:"),function(_2d,_2e,_2f,_30){
with(_2d){
_replacementObjects[objj_msgSend(_fileOwner,"hash")]=_2f;
var _31=0,_32=_connections.length;
for(;_31<_32;++_31){
var _33=_connections[_31];
objj_msgSend(_33,"replaceObjects:",_replacementObjects);
objj_msgSend(_33,"establishConnection");
}
}
}),new objj_method(sel_getUid("awakeWithOwner:topLevelObjects:"),function(_34,_35,_36,_37){
with(_34){
var _38=objj_msgSend(_objectsKeys,"count");
while(_38--){
var _39=_objectsKeys[_38],_3a=_replacementObjects[objj_msgSend(_39,"hash")];
if(_3a){
_39=_3a;
}
if(_39!==_fileOwner&&objj_msgSend(_39,"respondsToSelector:",sel_getUid("awakeFromCib"))){
objj_msgSend(_39,"awakeFromCib");
}
}
if(objj_msgSend(_36,"respondsToSelector:",sel_getUid("awakeFromCib"))){
objj_msgSend(_36,"awakeFromCib");
}
}
})]);
p;22;_CPCibWindowTemplate.jI;21;Foundation/CPObject.jc;4943;


var _CPCibWindowTemplateMinSizeKey = "_CPCibWindowTemplateMinSizeKey",
    _CPCibWindowTemplateMaxSizeKey = "_CPCibWindowTemplateMaxSizeKey",

    _CPCibWindowTemplateViewClassKey = "_CPCibWindowTemplateViewClassKey",
    _CPCibWindowTemplateWindowClassKey = "_CPCibWindowTemplateWindowClassKey",

    _CPCibWindowTemplateWindowRectKey = "_CPCibWindowTemplateWindowRectKey",
    _CPCibWindowTemplateWindowStyleMaskKey = "_CPCibWindowTempatStyleMaskKey",
    _CPCibWindowTemplateWindowTitleKey = "_CPCibWindowTemplateWindowTitleKey",
    _CPCibWindowTemplateWindowViewKey = "_CPCibWindowTemplateWindowViewKey",

    _CPCibWindowTemplateWindowIsFullBridgeKey = "_CPCibWindowTemplateWindowIsFullBridgeKey";

{var the_class = objj_allocateClassPair(CPObject, "_CPCibWindowTemplate"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_minSize"), new objj_ivar("_maxSize"), new objj_ivar("_viewClass"), new objj_ivar("_windowClass"), new objj_ivar("_windowRect"), new objj_ivar("_windowStyleMask"), new objj_ivar("_windowTitle"), new objj_ivar("_windowView"), new objj_ivar("_windowIsFullBridge")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $_CPCibWindowTemplate__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");

    if (self)
    {
        if (objj_msgSend(aCoder, "containsValueForKey:", _CPCibWindowTemplateMinSizeKey))
            _minSize = objj_msgSend(aCoder, "decodeSizeForKey:", _CPCibWindowTemplateMinSizeKey);
        if (objj_msgSend(aCoder, "containsValueForKey:", _CPCibWindowTemplateMaxSizeKey))
            _maxSize = objj_msgSend(aCoder, "decodeSizeForKey:", _CPCibWindowTemplateMaxSizeKey);

        _viewClass = objj_msgSend(aCoder, "decodeObjectForKey:", _CPCibWindowTemplateViewClassKey);

        _windowClass = objj_msgSend(aCoder, "decodeObjectForKey:", _CPCibWindowTemplateWindowClassKey);
        _windowRect = objj_msgSend(aCoder, "decodeRectForKey:", _CPCibWindowTemplateWindowRectKey);
        _windowStyleMask = objj_msgSend(aCoder, "decodeIntForKey:", _CPCibWindowTemplateWindowStyleMaskKey);

        _windowTitle = objj_msgSend(aCoder, "decodeObjectForKey:", _CPCibWindowTemplateWindowTitleKey);
        _windowView = objj_msgSend(aCoder, "decodeObjectForKey:", _CPCibWindowTemplateWindowViewKey);

        _windowIsFullBridge = objj_msgSend(aCoder, "decodeObjectForKey:", _CPCibWindowTemplateWindowIsFullBridgeKey);
    }

    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $_CPCibWindowTemplate__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (_minSize)
        objj_msgSend(aCoder, "encodeSize:forKey:", _minSize, _CPCibWindowTemplateMinSizeKey);
    if (_maxSize)
        objj_msgSend(aCoder, "encodeSize:forKey:", _maxSize, _CPCibWindowTemplateMaxSizeKey);

    objj_msgSend(aCoder, "encodeObject:forKey:", _viewClass, _CPCibWindowTemplateViewClassKey);

    objj_msgSend(aCoder, "encodeObject:forKey:", _windowClass, _CPCibWindowTemplateWindowClassKey);
    objj_msgSend(aCoder, "encodeRect:forKey:", _windowRect, _CPCibWindowTemplateWindowRectKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _windowStyleMask, _CPCibWindowTemplateWindowStyleMaskKey);

    objj_msgSend(aCoder, "encodeObject:forKey:", _windowTitle, _CPCibWindowTemplateWindowTitleKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _windowView, _CPCibWindowTemplateWindowViewKey);

    objj_msgSend(aCoder, "encodeObject:forKey:", _windowIsFullBridge, _CPCibWindowTemplateWindowIsFullBridgeKey);
}
}), new objj_method(sel_getUid("windowClass"), function $_CPCibWindowTemplate__windowClass(self, _cmd)
{ with(self)
{
    return _windowClass;
}
}), new objj_method(sel_getUid("_cibInstantiate"), function $_CPCibWindowTemplate___cibInstantiate(self, _cmd)
{ with(self)
{
    var windowClass = CPClassFromString(objj_msgSend(self, "windowClass"));





    var theWindow = objj_msgSend(objj_msgSend(windowClass, "alloc"), "initWithContentRect:styleMask:", _windowRect, _windowStyleMask);

    if (_minSize)
        objj_msgSend(theWindow, "setMinSize:", _minSize);
    if (_maxSize)
        objj_msgSend(theWindow, "setMaxSize:", _maxSize);
    objj_msgSend(theWindow, "setLevel:", CPFloatingWindowLevel);


    objj_msgSend(theWindow, "setTitle:", _windowTitle);


    objj_msgSend(_windowView, "setAutoresizesSubviews:", NO);

    objj_msgSend(theWindow, "setContentView:", _windowView);

    objj_msgSend(_windowView, "setAutoresizesSubviews:", YES);

    if (objj_msgSend(_viewClass, "isKindOfClass:", objj_msgSend(CPToolbar, "class")))
    {
       objj_msgSend(theWindow, "setToolbar:", _viewClass);
    }

    objj_msgSend(theWindow, "setFullBridge:", _windowIsFullBridge);

    return theWindow;
}
})]);
}

p;18;_CPHUDWindowView.jc;9042;var _CPHUDWindowViewBackgroundColor = nil,
    CPHUDCloseButtonImage = nil;
var HUD_TITLEBAR_HEIGHT = 26.0;
{var the_class = objj_allocateClassPair(_CPWindowView, "_CPHUDWindowView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_toolbarView"), new objj_ivar("_titleField"), new objj_ivar("_closeButton")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPHUDWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    var contentRect = objj_msgSend(objj_msgSend(self, "class"), "contentRectForFrameRect:", aFrameRect);
    if (objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "toolbar"), "isVisible"))
    {
        toolbarHeight = CGRectGetHeight(objj_msgSend(objj_msgSend(self, "toolbarView"), "frame"));
        contentRect.origin.y += toolbarHeight;
        contentRect.size.height -= toolbarHeight;
    }
    return contentRect;
}
}), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPHUDWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    var frameRect = objj_msgSend(objj_msgSend(self, "class"), "frameRectForContentRect:", aContentRect);
    if (objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "toolbar"), "isVisible"))
    {
        toolbarHeight = CGRectGetHeight(objj_msgSend(objj_msgSend(self, "toolbarView"), "frame"));
        frameRect.origin.y -= toolbarHeight;
        frameRect.size.height += toolbarHeight;
    }
    return frameRect;
}
}), new objj_method(sel_getUid("initWithFrame:styleMask:"), function $_CPHUDWindowView__initWithFrame_styleMask_(self, _cmd, aFrame, aStyleMask)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowView") }, "initWithFrame:styleMask:", aFrame, aStyleMask);
    if (self)
    {
        var bounds = objj_msgSend(self, "bounds");
        objj_msgSend(self, "setBackgroundColor:", _CPHUDWindowViewBackgroundColor);
        _titleField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(_titleField, "setHitTests:", NO);
        objj_msgSend(_titleField, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 11.0));
        objj_msgSend(_titleField, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(_titleField, "setTextShadowColor:", objj_msgSend(CPColor, "blackColor"));
        objj_msgSend(_titleField, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
        objj_msgSend(_titleField, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_titleField, "setLineBreakMode:", CPLineBreakByTruncatingTail);
        objj_msgSend(_titleField, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(_titleField, "setStringValue:", "Untitled");
        objj_msgSend(_titleField, "sizeToFit");
        objj_msgSend(_titleField, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_titleField, "setStringValue:", "");
        objj_msgSend(_titleField, "setFrame:", CGRectMake(20.0, 3.0, CGRectGetWidth(objj_msgSend(self, "bounds")) - 40.0, CGRectGetHeight(objj_msgSend(_titleField, "frame"))));
        objj_msgSend(self, "addSubview:", _titleField);
        if (_styleMask & CPClosableWindowMask)
        {
            var closeSize = objj_msgSend(_CPHUDWindowViewCloseImage, "size");
            _closeButton = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(4.0, 4.0, closeSize.width, closeSize.height));
            objj_msgSend(_closeButton, "setBordered:", NO);
            objj_msgSend(_closeButton, "setImage:", _CPHUDWindowViewCloseImage);
            objj_msgSend(_closeButton, "setAlternateImage:", _CPHUDWindowViewCloseActiveImage);
            objj_msgSend(self, "addSubview:", _closeButton);
        }
        objj_msgSend(self, "setResizeIndicatorOffset:", CGSizeMake(5.0, 5.0));
    }
    return self;
}
}), new objj_method(sel_getUid("viewDidMoveToWindow"), function $_CPHUDWindowView__viewDidMoveToWindow(self, _cmd)
{ with(self)
{
    objj_msgSend(_closeButton, "setTarget:", objj_msgSend(self, "window"));
    objj_msgSend(_closeButton, "setAction:", sel_getUid("performClose:"));
}
}), new objj_method(sel_getUid("setTitle:"), function $_CPHUDWindowView__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    objj_msgSend(_titleField, "setStringValue:", aTitle);
}
}), new objj_method(sel_getUid("toolbarView"), function $_CPHUDWindowView__toolbarView(self, _cmd)
{ with(self)
{
    return _toolbarView;
}
}), new objj_method(sel_getUid("toolbarLabelColor"), function $_CPHUDWindowView__toolbarLabelColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColor, "whiteColor");
}
}), new objj_method(sel_getUid("toolbarOffset"), function $_CPHUDWindowView__toolbarOffset(self, _cmd)
{ with(self)
{
    return CGSizeMake(0.0, HUD_TITLEBAR_HEIGHT);
}
}), new objj_method(sel_getUid("tile"), function $_CPHUDWindowView__tile(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowView") }, "tile");
    var theWindow = objj_msgSend(self, "window"),
        bounds = objj_msgSend(self, "bounds"),
        width = CGRectGetWidth(bounds);
    objj_msgSend(_titleField, "setFrame:", CGRectMake(20.0, 3.0, width - 40.0, CGRectGetHeight(objj_msgSend(_titleField, "frame"))));
    var maxY = objj_msgSend(self, "toolbarMaxY");
    objj_msgSend(objj_msgSend(theWindow, "contentView"), "setFrameOrigin:", CGPointMake(0.0, maxY, width, CGRectGetHeight(bounds) - maxY));
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPHUDWindowView__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPHUDWindowView, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    _CPHUDWindowViewBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", 
        [
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground0.png"), CPSizeMake(6.0, 78.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground1.png"), CPSizeMake(1.0, 78.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground2.png"), CPSizeMake(6.0, 78.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground3.png"), CPSizeMake(6.0, 1.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground4.png"), CPSizeMake(1.0, 1.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground5.png"), CPSizeMake(6.0, 1.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground6.png"), CPSizeMake(6.0, 6.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground7.png"), CPSizeMake(6.0, 6.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/HUD/CPWindowHUDBackground8.png"), CPSizeMake(6.0, 6.0))
        ]));
    _CPHUDWindowViewCloseImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "HUDTheme/WindowClose.png"), CPSizeMake(20.0, 20.0));
    _CPHUDWindowViewCloseActiveImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "HUDTheme/WindowCloseActive.png"), CPSizeMake(20.0, 20.0));
}
}), new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPHUDWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    var contentRect = CGRectMakeCopy(aFrameRect),
        titleBarHeight = HUD_TITLEBAR_HEIGHT;
    contentRect.origin.y += titleBarHeight;
    contentRect.size.height -= titleBarHeight;
    return contentRect;
}
}), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPHUDWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    var frameRect = CGRectMakeCopy(aContentRect),
        titleBarHeight = HUD_TITLEBAR_HEIGHT;
    frameRect.origin.y -= titleBarHeight;
    frameRect.size.height += titleBarHeight;
    return frameRect;
}
})]);
}

p;21;_CPImageAndTextView.jI;21;Foundation/CPString.ji;9;CPColor.ji;8;CPFont.ji;9;CPImage.ji;13;CPTextField.ji;8;CPView.jc;12438;
CPTopVerticalTextAlignment=1,CPCenterVerticalTextAlignment=2,CPBottomVerticalTextAlignment=3;
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5,_7=1<<6,_8=1<<7,_9=1<<8,_a=1<<9,_b=1<<10;
var _c=3,_d=5;
var _e=objj_allocateClassPair(CPView,"_CPImageAndTextView"),_f=_e.isa;
class_addIvars(_e,[new objj_ivar("_alignment"),new objj_ivar("_verticalAlignment"),new objj_ivar("_lineBreakMode"),new objj_ivar("_textColor"),new objj_ivar("_font"),new objj_ivar("_textShadowColor"),new objj_ivar("_textShadowOffset"),new objj_ivar("_imagePosition"),new objj_ivar("_imageScaling"),new objj_ivar("_image"),new objj_ivar("_text"),new objj_ivar("_textSize"),new objj_ivar("_flags"),new objj_ivar("_DOMImageElement"),new objj_ivar("_DOMTextElement"),new objj_ivar("_DOMTextShadowElement")]);
objj_registerClassPair(_e);
objj_addClassForBundle(_e,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_e,[new objj_method(sel_getUid("initWithFrame:control:"),function(_10,_11,_12,_13){
with(_10){
_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPView")},"initWithFrame:",_12);
if(_10){
_textShadowOffset={width:0,height:0};
objj_msgSend(_10,"setVerticalAlignment:",CPTopVerticalTextAlignment);
if(_13){
objj_msgSend(_10,"setLineBreakMode:",objj_msgSend(_13,"lineBreakMode"));
objj_msgSend(_10,"setTextColor:",objj_msgSend(_13,"textColor"));
objj_msgSend(_10,"setAlignment:",objj_msgSend(_13,"alignment"));
objj_msgSend(_10,"setVerticalAlignment:",objj_msgSend(_13,"verticalAlignment"));
objj_msgSend(_10,"setFont:",objj_msgSend(_13,"font"));
objj_msgSend(_10,"setImagePosition:",objj_msgSend(_13,"imagePosition"));
objj_msgSend(_10,"setImageScaling:",objj_msgSend(_13,"imageScaling"));
}else{
objj_msgSend(_10,"setLineBreakMode:",CPLineBreakByClipping);
objj_msgSend(_10,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_10,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(_10,"setImagePosition:",CPNoImage);
objj_msgSend(_10,"setImageScaling:",CPScaleNone);
}
_textSize=NULL;
}
return _10;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_14,_15,_16){
with(_14){
return objj_msgSend(_14,"initWithFrame:control:",_16,nil);
}
}),new objj_method(sel_getUid("setAlignment:"),function(_17,_18,_19){
with(_17){
if(_alignment===_19){
return;
}
_alignment=_19;
switch(_alignment){
case CPLeftTextAlignment:
_DOMElement.style.textAlign="left";
break;
case CPRightTextAlignment:
_DOMElement.style.textAlign="right";
break;
case CPCenterTextAlignment:
_DOMElement.style.textAlign="center";
break;
case CPJustifiedTextAlignment:
_DOMElement.style.textAlign="justify";
break;
case CPNaturalTextAlignment:
_DOMElement.style.textAlign="";
break;
}
}
}),new objj_method(sel_getUid("alignment"),function(_1a,_1b){
with(_1a){
return _alignment;
}
}),new objj_method(sel_getUid("setVerticalAlignment:"),function(_1c,_1d,_1e){
with(_1c){
if(_verticalAlignment===_1e){
return;
}
_verticalAlignment=_1e;
_flags|=_5;
objj_msgSend(_1c,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalAlignment"),function(_1f,_20){
with(_1f){
return _verticalAlignment;
}
}),new objj_method(sel_getUid("setLineBreakMode:"),function(_21,_22,_23){
with(_21){
if(_lineBreakMode===_23){
return;
}
_lineBreakMode=_23;
_flags|=_6;
objj_msgSend(_21,"setNeedsLayout");
}
}),new objj_method(sel_getUid("lineBreakMode"),function(_24,_25){
with(_24){
return _lineBreakMode;
}
}),new objj_method(sel_getUid("setImagePosition:"),function(_26,_27,_28){
with(_26){
if(_imagePosition==_28){
return;
}
_imagePosition=_28;
_flags|=_a;
objj_msgSend(_26,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imagePosition"),function(_29,_2a){
with(_29){
return _imagePosition;
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_2b,_2c,_2d){
with(_2b){
if(_imageScaling==_2d){
return;
}
_imageScaling=_2d;
_flags|=_b;
objj_msgSend(_2b,"setNeedsLayout");
}
}),new objj_method(sel_getUid("imageScaling"),function(_2e,_2f){
with(_2e){
return _imageScaling;
}
}),new objj_method(sel_getUid("setTextColor:"),function(_30,_31,_32){
with(_30){
if(_textColor===_32){
return;
}
_textColor=_32;
_DOMElement.style.color=objj_msgSend(_textColor,"cssString");
}
}),new objj_method(sel_getUid("textColor"),function(_33,_34){
with(_33){
return _textColor;
}
}),new objj_method(sel_getUid("setFont:"),function(_35,_36,_37){
with(_35){
if(_font===_37){
return;
}
_font=_37;
_flags|=_8;
_textSize=NULL;
objj_msgSend(_35,"setNeedsLayout");
}
}),new objj_method(sel_getUid("font"),function(_38,_39){
with(_38){
return _font;
}
}),new objj_method(sel_getUid("setTextShadowColor:"),function(_3a,_3b,_3c){
with(_3a){
if(_textShadowColor===_3c){
return;
}
_textShadowColor=_3c;
_flags|=_9;
objj_msgSend(_3a,"setNeedsLayout");
}
}),new objj_method(sel_getUid("textShadowColor"),function(_3d,_3e){
with(_3d){
return _textShadowColor;
}
}),new objj_method(sel_getUid("setTextShadowOffset:"),function(_3f,_40,_41){
with(_3f){
if((_textShadowOffset.width==_41.width&&_textShadowOffset.height==_41.height)){
return;
}
_textShadowOffset={width:_41.width,height:_41.height};
objj_msgSend(_3f,"setNeedsLayout");
}
}),new objj_method(sel_getUid("textShadowOffset"),function(_42,_43){
with(_42){
return _textShadowOffset;
}
}),new objj_method(sel_getUid("setImage:"),function(_44,_45,_46){
with(_44){
if(_image==_46){
return;
}
_image=_46;
_flags|=_2;
objj_msgSend(_44,"setNeedsLayout");
}
}),new objj_method(sel_getUid("image"),function(_47,_48){
with(_47){
return _image;
}
}),new objj_method(sel_getUid("setText:"),function(_49,_4a,_4b){
with(_49){
if(_text===_4b){
return;
}
_text=_4b;
_flags|=_3;
_textSize=NULL;
objj_msgSend(_49,"setNeedsLayout");
}
}),new objj_method(sel_getUid("text"),function(_4c,_4d){
with(_4c){
return _text;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_4e,_4f){
with(_4e){
var _50=_imagePosition!==CPImageOnly&&(objj_msgSend(_text,"length")>0),_51=!!_DOMTextElement;
if(_50!==_51){
if(_51){
_DOMElement.removeChild(_DOMTextElement);
_DOMTextElement=NULL;
_51=NO;
}else{
_DOMTextElement=document.createElement("div");
var _52=_DOMTextElement.style;
_52.position="absolute";
_52.whiteSpace="pre";
_52.cursor="default";
_52.zIndex=100;
_52.overflow="hidden";
_DOMElement.appendChild(_DOMTextElement);
_51=YES;
_flags|=_3|_8|_6;
}
}
var _52=_51?_DOMTextElement.style:nil;
var _53=_51&&!!_textShadowColor,_54=!!_DOMTextShadowElement;
if(_53!==_54){
if(_54){
_DOMElement.removeChild(_DOMTextShadowElement);
_DOMTextShadowElement=NULL;
_54=NO;
}else{
_DOMTextShadowElement=document.createElement("div");
var _55=_DOMTextShadowElement.style;
_55.font=objj_msgSend(_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12),"cssString");
_55.position="absolute";
_55.whiteSpace=_52.whiteSpace;
_55.cursor="default";
_55.zIndex=-100;
_55.textOverflow=_52.textOverflow;
if(document.attachEvent){
_55.overflow=_52.overflow;
_55.wordWrap=_52.wordWrap;
}else{
_55.overflowX=_52.overflowX;
_55.overflowY=_52.overflowY;
}
_DOMElement.appendChild(_DOMTextShadowElement);
_54=YES;
_flags|=_3;
}
}
var _55=_54?_DOMTextShadowElement.style:nil;
if(_51){
if(_flags&_3){
if(CPFeatureIsCompatible(CPJavascriptInnerTextFeature)){
_DOMTextElement.innerText=_text;
if(_DOMTextShadowElement){
_DOMTextShadowElement.innerText=_text;
}
}else{
if(CPFeatureIsCompatible(CPJavascriptTextContentFeature)){
_DOMTextElement.textContent=_text;
if(_DOMTextShadowElement){
_DOMTextShadowElement.textContent=_text;
}
}
}
}
if(_flags&_8){
var _56=objj_msgSend(_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12),"cssString");
_52.font=_56;
if(_55){
_55.font=_56;
}
}
if(_flags&_6){
switch(_lineBreakMode){
case CPLineBreakByClipping:
_52.overflow="hidden";
_52.textOverflow="clip";
_52.whiteSpace="pre";
if(document.attachEvent){
_52.wordWrap="normal";
}
break;
case CPLineBreakByTruncatingHead:
case CPLineBreakByTruncatingMiddle:
case CPLineBreakByTruncatingTail:
_52.textOverflow="ellipsis";
_52.whiteSpace="nowrap";
_52.overflow="hidden";
if(document.attachEvent){
_52.wordWrap="normal";
}
break;
case CPLineBreakByCharWrapping:
case CPLineBreakByWordWrapping:
if(document.attachEvent){
_52.whiteSpace="pre";
_52.wordWrap="break-word";
}else{
_52.whiteSpace="-o-pre-wrap";
_52.whiteSpace="-pre-wrap";
_52.whiteSpace="-moz-pre-wrap";
_52.whiteSpace="pre-wrap";
}
_52.overflow="hidden";
_52.textOverflow="clip";
break;
}
if(_55){
if(document.attachEvent){
_55.wordWrap=_52.wordWrap;
_55.overflow=_52.overflow;
}else{
_55.overflowX=_52.overflowX;
_55.overflowY=_52.overflowY;
}
_55.whiteSpace=_52.whiteSpace;
_55.textOverflow=_52.textOverflow;
}
}
}
var _57=_image!==nil&&_imagePosition!==CPNoImage,_58=!!_DOMImageElement;
if(_57!==_58){
if(_58){
_DOMElement.removeChild(_DOMImageElement);
_DOMImageElement=NULL;
_58=NO;
}else{
_DOMImageElement=document.createElement("img");
var _59=_DOMImageElement.style;
_59.top="0px";
_59.left="0px";
_59.position="absolute";
_59.zIndex=100;
_DOMElement.appendChild(_DOMImageElement);
_58=YES;
}
}
var _5a=objj_msgSend(_4e,"bounds").size,_5b={origin:{x:0,y:0},size:{width:_5a.width,height:_5a.height}};
if(_58){
if(!_59){
var _59=_DOMImageElement.style;
}
if(_flags&_2){
_DOMImageElement.src=objj_msgSend(_image,"filename");
}
var _5c=_5a.width/2,_5d=_5a.height/2,_5e=objj_msgSend(_image,"size"),_5f=_5e.width,_60=_5e.height;
if(_imageScaling===CPScaleToFit){
_5f=_5a.width;
_60=_5a.height;
}else{
if(_imageScaling===CPScaleProportionally){
var _61=MIN(MIN(_5a.width,_5f)/_5f,MIN(_5a.height,_60)/_60);
_5f*=_61;
_60*=_61;
}
}
_DOMImageElement.width=_5f;
_DOMImageElement.height=_60;
_59.width=_5f+"px";
_59.height=_60+"px";
if(_imagePosition===CPImageBelow){
_59.left=FLOOR(_5c-_5f/2)+"px";
_59.top=FLOOR(_5a.height-_60)+"px";
_5b.size.height=_5a.height-_60-_d;
}else{
if(_imagePosition===CPImageAbove){
if(!_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext=[];
}
var _62=_DOMImageElement.CPDOMDisplayContext[0];
if(!(_62>=0)){
_62=_DOMImageElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_62]=0;
CPDOMDisplayServerInstructions[_62+1]=_DOMImageElement;
CPDOMDisplayServerInstructions[_62+2]=NULL;
CPDOMDisplayServerInstructions[_62+3]=FLOOR(_5c-_5f/2);
CPDOMDisplayServerInstructions[_62+4]=0;
_5b.origin.y+=_60+_d;
_5b.size.height=_5a.height-_60-_d;
}else{
if(_imagePosition===CPImageLeft){
_59.top=FLOOR(_5d-_60/2)+"px";
_59.left="0px";
_5b.origin.x=_5f+_c;
_5b.size.width-=_5f+_c;
}else{
if(_imagePosition===CPImageRight){
_59.top=FLOOR(_5d-_60/2)+"px";
_59.left=FLOOR(_5a.width-_5f)+"px";
_5b.size.width-=_5f+_c;
}else{
if(_imagePosition===CPImageOnly){
_59.top=FLOOR(_5d-_60/2)+"px";
_59.left=FLOOR(_5c-_5f/2)+"px";
}
}
}
}
}
}
if(_51){
var _63=(_5b.origin.x),_64=(_5b.origin.y),_65=(_5b.size.width),_66=(_5b.size.height);
if(_verticalAlignment!==CPTopVerticalTextAlignment){
if(!_textSize){
if(_lineBreakMode===CPLineBreakByCharWrapping||_lineBreakMode===CPLineBreakByWordWrapping){
_textSize=objj_msgSend(_text,"sizeWithFont:inWidth:",_font,_65);
}else{
_textSize=objj_msgSend(_text,"sizeWithFont:",_font);
}
}
if(_verticalAlignment===CPCenterVerticalTextAlignment){
_64=_64+(_66-_textSize.height)/2;
_66=_textSize.height;
}else{
_64=_64+_66-_textSize.height;
_66=_textSize.height;
}
}
_52.top=ROUND(_64)+"px";
_52.left=ROUND(_63)+"px";
_52.width=ROUND(_65)+"px";
_52.height=ROUND(_66)+"px";
if(_55){
if(_flags&_9){
_55.color=objj_msgSend(_textShadowColor,"cssString");
}
_55.top=ROUND(_64+_textShadowOffset.height)+"px";
_55.left=ROUND(_63+_textShadowOffset.width)+"px";
_55.width=ROUND(_65)+"px";
_55.height=ROUND(_66)+"px";
}
}
_flags=0;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_67,_68){
with(_67){
var _69=CGSizeMakeZero();
if((_imagePosition!==CPNoImage)&&_image){
var _6a=objj_msgSend(_image,"size");
_69.width+=_6a.width;
_69.height+=_6a.height;
}
if((_imagePosition!==CPImageOnly)&&objj_msgSend(_text,"length")>0){
if(!_textSize){
_textSize=objj_msgSend(_text,"sizeWithFont:",_font?_font:objj_msgSend(CPFont,"systemFontOfSize:",12));
}
if(_imagePosition===CPImageLeft||_imagePosition===CPImageRight){
_69.width+=_textSize.width+_c;
_69.height=MAX(_69.height,_textSize.height);
}else{
if(_imagePosition===CPImageAbove||_imagePosition===CPImageBelow){
_69.width=MAX(_69.width,_textSize.width);
_69.height+=_textSize.height+_d;
}else{
_69.width=MAX(_69.width,_textSize.width);
_69.height=MAX(_69.height,_textSize.height);
}
}
}
objj_msgSend(_67,"setFrameSize:",_69);
}
})]);
p;23;_CPStandardWindowView.ji;15;_CPWindowView.jc;14059;
var GRADIENT_HEIGHT = 41.0;
var _CPTexturedWindowHeadGradientColor = nil,
    _CPTexturedWindowHeadSolidColor = nil;
{var the_class = objj_allocateClassPair(CPView, "_CPTexturedWindowHeadView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_gradientView"), new objj_ivar("_solidView"), new objj_ivar("_dividerView")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $_CPTexturedWindowHeadView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        var theClass = objj_msgSend(self, "class"),
            bounds = objj_msgSend(self, "bounds");
        _gradientView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, CGRectGetWidth(bounds), GRADIENT_HEIGHT));
        objj_msgSend(_gradientView, "setBackgroundColor:", objj_msgSend(theClass, "gradientColor"));
        objj_msgSend(self, "addSubview:", _gradientView);
        _solidView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0.0, GRADIENT_HEIGHT, CGRectGetWidth(bounds), CGRectGetHeight(bounds) - GRADIENT_HEIGHT));
        objj_msgSend(_solidView, "setBackgroundColor:", objj_msgSend(theClass, "solidColor"));
        objj_msgSend(self, "addSubview:", _solidView);
    }
    return self;
}
}), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $_CPTexturedWindowHeadView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds");
    objj_msgSend(_gradientView, "setFrameSize:", CGSizeMake(CGRectGetWidth(bounds), GRADIENT_HEIGHT));
    objj_msgSend(_solidView, "setFrameSize:", CGSizeMake(CGRectGetWidth(bounds), CGRectGetHeight(bounds) - GRADIENT_HEIGHT));
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("gradientColor"), function $_CPTexturedWindowHeadView__gradientColor(self, _cmd)
{ with(self)
{
    if (!_CPTexturedWindowHeadGradientColor)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(_CPWindowView, "class"));
        _CPTexturedWindowHeadGradientColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", 
            [
                objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/Standard/CPWindowStandardTop0.png"), CGSizeMake(6.0, 41.0)),
                objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/Standard/CPWindowStandardTop1.png"), CGSizeMake(1.0, 41.0)),
                objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/Standard/CPWindowStandardTop2.png"), CGSizeMake(6.0, 41.0))
            ], NO
        ));
    }
    return _CPTexturedWindowHeadGradientColor;
}
}), new objj_method(sel_getUid("solidColor"), function $_CPTexturedWindowHeadView__solidColor(self, _cmd)
{ with(self)
{
    if (!_CPTexturedWindowHeadSolidColor)
        _CPTexturedWindowHeadSolidColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 182.0 / 255.0, 182.0 / 255.0, 182.0 / 255.0, 1.0);
    return _CPTexturedWindowHeadSolidColor;
}
})]);
}
var _CPStandardWindowViewBodyBackgroundColor = nil,
    _CPStandardWindowViewDividerBackgroundColor = nil,
    _CPStandardWindowViewTitleBackgroundColor = nil,
    _CPStandardWindowViewCloseButtonImage = nil,
    _CPStandardWindowViewCloseButtonHighlightedImage = nil;
var STANDARD_GRADIENT_HEIGHT = 41.0;
    STANDARD_TITLEBAR_HEIGHT = 25.0;
{var the_class = objj_allocateClassPair(_CPWindowView, "_CPStandardWindowView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_headView"), new objj_ivar("_dividerView"), new objj_ivar("_bodyView"), new objj_ivar("_toolbarView"), new objj_ivar("_titleField"), new objj_ivar("_closeButton")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPStandardWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    var contentRect = objj_msgSend(objj_msgSend(self, "class"), "contentRectForFrameRect:", aFrameRect),
        theToolbar = objj_msgSend(objj_msgSend(self, "window"), "toolbar");
    if (objj_msgSend(theToolbar, "isVisible"))
    {
        toolbarHeight = CGRectGetHeight(objj_msgSend(objj_msgSend(theToolbar, "_toolbarView"), "frame"));
        contentRect.origin.y += toolbarHeight;
        contentRect.size.height -= toolbarHeight;
    }
    return contentRect;
}
}), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPStandardWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    var frameRect = objj_msgSend(objj_msgSend(self, "class"), "frameRectForContentRect:", aContentRect),
        theToolbar = objj_msgSend(objj_msgSend(self, "window"), "toolbar");
    if (objj_msgSend(theToolbar, "isVisible"))
    {
        toolbarHeight = CGRectGetHeight(objj_msgSend(objj_msgSend(theToolbar, "_toolbarView"), "frame"));
        frameRect.origin.y -= toolbarHeight;
        frameRect.size.height += toolbarHeight;
    }
    return frameRect;
}
}), new objj_method(sel_getUid("initWithFrame:styleMask:"), function $_CPStandardWindowView__initWithFrame_styleMask_(self, _cmd, aFrame, aStyleMask)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowView") }, "initWithFrame:styleMask:", aFrame, aStyleMask);
    if (self)
    {
        var theClass = objj_msgSend(self, "class"),
            bounds = objj_msgSend(self, "bounds");
        _headView = objj_msgSend(objj_msgSend(_CPTexturedWindowHeadView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, CGRectGetWidth(bounds), objj_msgSend(objj_msgSend(self, "class"), "titleBarHeight")));
        objj_msgSend(_headView, "setAutoresizingMask:", CPViewWidthSizable);;
        objj_msgSend(_headView, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:", _headView);
        _dividerView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0.0, CGRectGetMaxY(objj_msgSend(_headView, "frame")), CGRectGetWidth(bounds), 1.0));
        objj_msgSend(_dividerView, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_dividerView, "setBackgroundColor:", objj_msgSend(theClass, "dividerBackgroundColor"));
        objj_msgSend(_dividerView, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:", _dividerView);
        var y = CGRectGetMaxY(objj_msgSend(_dividerView, "frame"));
        _bodyView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0.0, y, CGRectGetWidth(bounds), CGRectGetHeight(bounds) - y));
        objj_msgSend(_bodyView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(_bodyView, "setBackgroundColor:", objj_msgSend(theClass, "bodyBackgroundColor"));
        objj_msgSend(_bodyView, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:", _bodyView);
        objj_msgSend(self, "setResizeIndicatorOffset:", CGSizeMake(2.0, 2.0));
        _titleField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(_titleField, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12.0));
        objj_msgSend(_titleField, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_titleField, "setLineBreakMode:", CPLineBreakByTruncatingTail);
        objj_msgSend(_titleField, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(_titleField, "setTextShadowColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(_titleField, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
        objj_msgSend(_titleField, "setStringValue:", "Untitled");
        objj_msgSend(_titleField, "sizeToFit");
        objj_msgSend(_titleField, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_titleField, "setStringValue:", "");
        objj_msgSend(self, "addSubview:", _titleField);
        if (_styleMask & CPClosableWindowMask)
        {
            if (!_CPStandardWindowViewCloseButtonImage)
            {
                var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPWindow, "class"));
                _CPStandardWindowViewCloseButtonImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/Standard/CPWindowStandardCloseButton.png"), CGSizeMake(16.0, 16.0));
                _CPStandardWindowViewCloseButtonHighlightedImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPWindow/Standard/CPWindowStandardCloseButtonHighlighted.png"), CGSizeMake(16.0, 16.0));
            }
            _closeButton = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(8.0, 7.0, 16.0, 16.0));
            objj_msgSend(_closeButton, "setBordered:", NO);
            objj_msgSend(_closeButton, "setImage:", _CPStandardWindowViewCloseButtonImage);
            objj_msgSend(_closeButton, "setAlternateImage:", _CPStandardWindowViewCloseButtonHighlightedImage);
            objj_msgSend(self, "addSubview:", _closeButton);
        }
        objj_msgSend(self, "tile");
    }
    return self;
}
}), new objj_method(sel_getUid("viewDidMoveToWindow"), function $_CPStandardWindowView__viewDidMoveToWindow(self, _cmd)
{ with(self)
{
    objj_msgSend(_closeButton, "setTarget:", objj_msgSend(self, "window"));
    objj_msgSend(_closeButton, "setAction:", sel_getUid("performClose:"));
}
}), new objj_method(sel_getUid("toolbarOffset"), function $_CPStandardWindowView__toolbarOffset(self, _cmd)
{ with(self)
{
    return CGSizeMake(0.0, objj_msgSend(objj_msgSend(self, "class"), "titleBarHeight"));
}
}), new objj_method(sel_getUid("tile"), function $_CPStandardWindowView__tile(self, _cmd)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowView") }, "tile");
    var theWindow = objj_msgSend(self, "window"),
        bounds = objj_msgSend(self, "bounds"),
        width = CGRectGetWidth(bounds);
    objj_msgSend(_headView, "setFrameSize:", CGSizeMake(width, objj_msgSend(self, "toolbarMaxY")));
    objj_msgSend(_dividerView, "setFrame:", CGRectMake(0.0, CGRectGetMaxY(objj_msgSend(_headView, "frame")), width, 1.0));
    var dividerMaxY = CGRectGetMaxY(objj_msgSend(_dividerView, "frame"));
    objj_msgSend(_bodyView, "setFrame:", CGRectMake(0.0, dividerMaxY, width, CGRectGetHeight(bounds) - dividerMaxY));
    objj_msgSend(_titleField, "setFrame:", CGRectMake(10.0, 3.0, width - 20.0, CGRectGetHeight(objj_msgSend(_titleField, "frame"))));
    objj_msgSend(objj_msgSend(theWindow, "contentView"), "setFrameOrigin:", CGPointMake(0.0, CGRectGetMaxY(objj_msgSend(_dividerView, "frame"))));
}
}), new objj_method(sel_getUid("setTitle:"), function $_CPStandardWindowView__setTitle_(self, _cmd, aTitle)
{ with(self)
{
    objj_msgSend(_titleField, "setStringValue:", aTitle);
}
}), new objj_method(sel_getUid("mouseDown:"), function $_CPStandardWindowView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (CGRectContainsPoint(objj_msgSend(_headView, "frame"), objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil)))
        return objj_msgSend(self, "trackMoveWithEvent:", anEvent);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_CPWindowView") }, "mouseDown:", anEvent);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("bodyBackgroundColor"), function $_CPStandardWindowView__bodyBackgroundColor(self, _cmd)
{ with(self)
{
    if (!_CPStandardWindowViewBodyBackgroundColor)
        _CPStandardWindowViewBodyBackgroundColor = objj_msgSend(CPColor, "whiteColor");
    return _CPStandardWindowViewBodyBackgroundColor;
}
}), new objj_method(sel_getUid("dividerBackgroundColor"), function $_CPStandardWindowView__dividerBackgroundColor(self, _cmd)
{ with(self)
{
    if (!_CPStandardWindowViewDividerBackgroundColor)
        _CPStandardWindowViewDividerBackgroundColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 125.0 / 255.0, 125.0 / 255.0, 125.0 / 255.0, 1.0);
    return _CPStandardWindowViewDividerBackgroundColor;
}
}), new objj_method(sel_getUid("titleColor"), function $_CPStandardWindowView__titleColor(self, _cmd)
{ with(self)
{
    if (!_CPStandardWindowViewTitleBackgroundColor)
        _CPStandardWindowViewTitleBackgroundColor = objj_msgSend(CPColor, "colorWithCalibratedRed:green:blue:alpha:", 44.0 / 255.0, 44.0 / 255.0, 44.0 / 255.0, 1.0);
    return _CPStandardWindowViewTitleBackgroundColor;
}
}), new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPStandardWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    var contentRect = CGRectMakeCopy(aFrameRect),
        titleBarHeight = objj_msgSend(self, "titleBarHeight") + 1.0;
    contentRect.origin.y += titleBarHeight;
    contentRect.size.height -= titleBarHeight;
    return contentRect;
}
}), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPStandardWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    var frameRect = CGRectMakeCopy(aContentRect),
        titleBarHeight = objj_msgSend(self, "titleBarHeight") + 1.0;
    frameRect.origin.y -= titleBarHeight;
    frameRect.size.height += titleBarHeight;
    return frameRect;
}
}), new objj_method(sel_getUid("titleBarHeight"), function $_CPStandardWindowView__titleBarHeight(self, _cmd)
{ with(self)
{
    return STANDARD_TITLEBAR_HEIGHT;
}
})]);
}

p;15;_CPWindowView.ji;8;CPView.ji;13;CPImageView.jc;11333;
var _CPWindowViewResizeIndicatorImage = nil;
{var the_class = objj_allocateClassPair(CPView, "_CPWindowView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_styleMask"), new objj_ivar("_resizeIndicator"), new objj_ivar("_resizeIndicatorOffset"), new objj_ivar("_toolbarView"), new objj_ivar("_resizeFrame"), new objj_ivar("_mouseDraggedPoint")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "contentRectForFrameRect:", aFrameRect);
}
}), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "class"), "frameRectForContentRect:", aContentRect);
}
}), new objj_method(sel_getUid("initWithFrame:styleMask:"), function $_CPWindowView__initWithFrame_styleMask_(self, _cmd, aFrame, aStyleMask)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        _styleMask = aStyleMask;
        _resizeIndicatorOffset = CGSizeMake(0.0, 0.0);
        _toolbarOffset = CGSizeMake(0.0, 0.0);
        objj_msgSend(self, "setShowsResizeIndicator:", !(_styleMask & CPBorderlessBridgeWindowMask) && (_styleMask & CPResizableWindowMask));
    }
    return self;
}
}), new objj_method(sel_getUid("setTitle:"), function $_CPWindowView__setTitle_(self, _cmd, aTitle)
{ with(self)
{
}
}), new objj_method(sel_getUid("acceptsFirstMouse:"), function $_CPWindowView__acceptsFirstMouse_(self, _cmd, anEvent)
{ with(self)
{
    return YES;
}
}), new objj_method(sel_getUid("mouseDown:"), function $_CPWindowView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    var theWindow = objj_msgSend(self, "window");
    if ((_styleMask & CPResizableWindowMask) && _resizeIndicator)
    {
        var frame = objj_msgSend(_resizeIndicator, "frame");
        if (CGRectContainsPoint(frame, objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil)))
            return objj_msgSend(self, "trackResizeWithEvent:", anEvent);
    }
    if (objj_msgSend(theWindow, "isMovableByWindowBackground"))
        objj_msgSend(self, "trackMoveWithEvent:", anEvent);
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "mouseDown:", anEvent);
}
}), new objj_method(sel_getUid("trackResizeWithEvent:"), function $_CPWindowView__trackResizeWithEvent_(self, _cmd, anEvent)
{ with(self)
{
    var location = objj_msgSend(anEvent, "locationInWindow"),
        type = objj_msgSend(anEvent, "type");
    if (type === CPLeftMouseUp)
        return;
    var theWindow = objj_msgSend(self, "window");
    if (type === CPLeftMouseDown)
    {
        var frame = objj_msgSend(theWindow, "frame");
        _resizeFrame = CGRectMake(location.x, location.y, CGRectGetWidth(frame), CGRectGetHeight(frame));
    }
    else if (type === CPLeftMouseDragged)
        objj_msgSend(theWindow, "setFrameSize:", CGSizeMake(CGRectGetWidth(_resizeFrame) + location.x - CGRectGetMinX(_resizeFrame), CGRectGetHeight(_resizeFrame) + location.y - CGRectGetMinY(_resizeFrame)));
    objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackResizeWithEvent:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
}
}), new objj_method(sel_getUid("trackMoveWithEvent:"), function $_CPWindowView__trackMoveWithEvent_(self, _cmd, anEvent)
{ with(self)
{
    var type = objj_msgSend(anEvent, "type");
    if (type === CPLeftMouseUp)
        return;
    else if (type === CPLeftMouseDown)
        _mouseDraggedPoint = objj_msgSend(objj_msgSend(self, "window"), "convertBaseToBridge:", objj_msgSend(anEvent, "locationInWindow"));
    else if (type === CPLeftMouseDragged)
    {
        var theWindow = objj_msgSend(self, "window"),
            location = objj_msgSend(theWindow, "convertBaseToBridge:", objj_msgSend(anEvent, "locationInWindow")),
            frame = objj_msgSend(theWindow, "frame");
        objj_msgSend(theWindow, "setFrameOrigin:", CGPointMake((frame.origin.x) + (location.x - _mouseDraggedPoint.x), (frame.origin.y) + (location.y - _mouseDraggedPoint.y)));
        _mouseDraggedPoint = location;
    }
    objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackMoveWithEvent:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
}
}), new objj_method(sel_getUid("setShowsResizeIndicator:"), function $_CPWindowView__setShowsResizeIndicator_(self, _cmd, shouldShowResizeIndicator)
{ with(self)
{
    if (shouldShowResizeIndicator)
    {
        var size = objj_msgSend(_CPWindowViewResizeIndicatorImage, "size"),
            boundsSize = objj_msgSend(self, "frame").size;
        _resizeIndicator = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(boundsSize.width - size.width - _resizeIndicatorOffset.width, boundsSize.height - size.height - _resizeIndicatorOffset.height, size.width, size.height));
        objj_msgSend(_resizeIndicator, "setImage:", _CPWindowViewResizeIndicatorImage);
        objj_msgSend(_resizeIndicator, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin);
        objj_msgSend(self, "addSubview:", _resizeIndicator);
    }
    else
    {
        objj_msgSend(_resizeIndicator, "removeFromSuperview");
        _resizeIndicator = nil;
    }
}
}), new objj_method(sel_getUid("showsResizeIndicator"), function $_CPWindowView__showsResizeIndicator(self, _cmd)
{ with(self)
{
    return _resizeIndicator !== nil;
}
}), new objj_method(sel_getUid("setResizeIndicatorOffset:"), function $_CPWindowView__setResizeIndicatorOffset_(self, _cmd, anOffset)
{ with(self)
{
    if (CGSizeEqualToSize(_resizeIndicatorOffset, anOffset))
        return;
    _resizeIndicatorOffset = anOffset;
    if (!_resizeIndicator)
        return;
    var size = objj_msgSend(_resizeIndicator, "frame").size,
        boundsSize = objj_msgSend(self, "frame").size;
    objj_msgSend(_resizeIndicator, "setFrameOrigin:", CGPointMake(boundsSize.width - size.width - anOffset.width, boundsSize.height - size.height - anOffset.height));
}
}), new objj_method(sel_getUid("resizeIndicatorOffset"), function $_CPWindowView__resizeIndicatorOffset(self, _cmd)
{ with(self)
{
    return _resizeIndicatorOffset;
}
}), new objj_method(sel_getUid("windowDidChangeDocumentEdited"), function $_CPWindowView__windowDidChangeDocumentEdited(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("windowDidChangeDocumentSaving"), function $_CPWindowView__windowDidChangeDocumentSaving(self, _cmd)
{ with(self)
{
}
}), new objj_method(sel_getUid("showsToolbar"), function $_CPWindowView__showsToolbar(self, _cmd)
{ with(self)
{
    return YES;
}
}), new objj_method(sel_getUid("toolbarOffset"), function $_CPWindowView__toolbarOffset(self, _cmd)
{ with(self)
{
    return CGSizeMakeZero();
}
}), new objj_method(sel_getUid("toolbarLabelColor"), function $_CPWindowView__toolbarLabelColor(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPColor, "blackColor");
}
}), new objj_method(sel_getUid("toolbarMaxY"), function $_CPWindowView__toolbarMaxY(self, _cmd)
{ with(self)
{
    if (!_toolbarView || objj_msgSend(_toolbarView, "isHidden"))
        return objj_msgSend(self, "toolbarOffset").height;
    return CGRectGetMaxY(objj_msgSend(_toolbarView, "frame"));
}
}), new objj_method(sel_getUid("toolbarView"), function $_CPWindowView__toolbarView(self, _cmd)
{ with(self)
{
    return _toolbarView;
}
}), new objj_method(sel_getUid("tile"), function $_CPWindowView__tile(self, _cmd)
{ with(self)
{
    var theWindow = objj_msgSend(self, "window"),
        bounds = objj_msgSend(self, "bounds"),
        width = CGRectGetWidth(bounds);
    if (objj_msgSend(objj_msgSend(theWindow, "toolbar"), "isVisible"))
    {
        var toolbarView = objj_msgSend(self, "toolbarView"),
            toolbarOffset = objj_msgSend(self, "toolbarOffset");
        objj_msgSend(toolbarView, "setFrame:", CGRectMake(toolbarOffset.width, toolbarOffset.height, width, CGRectGetHeight(objj_msgSend(toolbarView, "frame"))));
    }
    if (objj_msgSend(self, "showsResizeIndicator"))
    {
        var size = objj_msgSend(_resizeIndicator, "frame").size,
            boundsSize = objj_msgSend(self, "bounds").size;
        objj_msgSend(_resizeIndicator, "setFrameOrigin:", CGPointMake(boundsSize.width - size.width - _resizeIndicatorOffset.width, boundsSize.height - size.height - _resizeIndicatorOffset.height));
    }
}
}), new objj_method(sel_getUid("noteToolbarChanged"), function $_CPWindowView__noteToolbarChanged(self, _cmd)
{ with(self)
{
    var theWindow = objj_msgSend(self, "window"),
        toolbar = objj_msgSend(theWindow, "toolbar"),
        toolbarView = objj_msgSend(toolbar, "_toolbarView");
    if (_toolbarView !== toolbarView)
    {
        objj_msgSend(_toolbarView, "removeFromSuperview");
        if (toolbarView)
        {
            objj_msgSend(toolbarView, "removeFromSuperview");
            objj_msgSend(toolbarView, "setLabelColor:", objj_msgSend(self, "toolbarLabelColor"));
            objj_msgSend(self, "addSubview:", toolbarView);
        }
        _toolbarView = toolbarView;
    }
    objj_msgSend(toolbarView, "setHidden:", !objj_msgSend(self, "showsToolbar") || !objj_msgSend(toolbar, "isVisible"));
    if (theWindow)
    {
        var contentRect = objj_msgSend(self, "convertRect:toView:", objj_msgSend(objj_msgSend(theWindow, "contentView"), "frame"), nil);
        contentRect.origin = objj_msgSend(theWindow, "convertBaseToBridge:", contentRect.origin);
        objj_msgSend(self, "setAutoresizesSubviews:", NO);
        objj_msgSend(theWindow, "setFrame:", objj_msgSend(theWindow, "frameRectForContentRect:", contentRect));
        objj_msgSend(self, "setAutoresizesSubviews:", YES);
    }
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("didAddSubview:"), function $_CPWindowView__didAddSubview_(self, _cmd, aView)
{ with(self)
{
    if (!_resizeIndicator || aView === _resizeIndicator)
        return;
    objj_msgSend(self, "addSubview:", _resizeIndicator);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $_CPWindowView__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPWindowView, "class"))
        return;
    _CPWindowViewResizeIndicatorImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPWindow, "class")), "pathForResource:", "_CPWindowView/_CPWindowViewResizeIndicator.png"), CGSizeMake(12.0, 12.0));
}
}), new objj_method(sel_getUid("contentRectForFrameRect:"), function $_CPWindowView__contentRectForFrameRect_(self, _cmd, aFrameRect)
{ with(self)
{
    return CGRectMakeCopy(aFrameRect);
}
}), new objj_method(sel_getUid("frameRectForContentRect:"), function $_CPWindowView__frameRectForContentRect_(self, _cmd, aContentRect)
{ with(self)
{
    return CGRectMakeCopy(aContentRect);
}
})]);
}

p;8;AppKit.ji;9;CALayer.ji;9;CPAlert.ji;13;CPAnimation.ji;15;CPApplication.ji;10;CPButton.ji;13;CPButtonBar.ji;12;CPClipView.ji;18;CPCollectionView.ji;9;CPColor.ji;14;CPColorPanel.ji;13;CPColorWell.ji;17;CPCompatibility.ji;11;CPControl.ji;10;CPCookie.ji;12;CPDocument.ji;22;CPDocumentController.ji;9;CPEvent.ji;14;CPFlashMovie.ji;13;CPFlashView.ji;8;CPFont.ji;15;CPFontManager.ji;12;CPGeometry.ji;9;CPImage.ji;13;CPImageView.ji;8;CPMenu.ji;12;CPMenuItem.ji;9;CPPanel.ji;14;CPPasteboard.ji;15;CPPopUpButton.ji;21;CPProgressIndicator.ji;13;CPResponder.ji;14;CPScrollView.ji;12;CPScroller.ji;19;CPSecureTextField.ji;20;CPSegmentedControl.ji;10;CPShadow.ji;10;CPSlider.ji;13;CPSplitView.ji;11;CPTabView.ji;15;CPTableColumn.ji;13;CPTableView.ji;13;CPTextField.ji;11;CPToolbar.ji;15;CPToolbarItem.ji;8;CPView.ji;11;CPWebView.ji;10;CPWindow.ji;20;CPWindowController.jp;13;CAAnimation.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;23;CAMediaTimingFunction.jc;3790;
var _1=objj_allocateClassPair(CPObject,"CAAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isRemovedOnCompletion"),new objj_ivar("_delegate")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_isRemovedOnCompletion=YES;
}
return _3;
}
}),new objj_method(sel_getUid("shouldArchiveValueForKey:"),function(_5,_6,_7){
with(_5){
return YES;
}
}),new objj_method(sel_getUid("setRemovedOnCompletion:"),function(_8,_9,_a){
with(_8){
_isRemovedOnCompletion=_a;
}
}),new objj_method(sel_getUid("removedOnCompletion"),function(_b,_c){
with(_b){
return _isRemovedOnCompletion;
}
}),new objj_method(sel_getUid("isRemovedOnCompletion"),function(_d,_e){
with(_d){
return _isRemovedOnCompletion;
}
}),new objj_method(sel_getUid("timingFunction"),function(_f,_10){
with(_f){
return nil;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_11,_12,_13){
with(_11){
_delegate=_13;
}
}),new objj_method(sel_getUid("delegate"),function(_14,_15){
with(_14){
return _delegate;
}
}),new objj_method(sel_getUid("runActionForKey:object:arguments:"),function(_16,_17,_18,_19,_1a){
with(_16){
objj_msgSend(_19,"addAnimation:forKey:",_16,_18);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("animation"),function(_1b,_1c){
with(_1b){
return objj_msgSend(objj_msgSend(_1b,"alloc"),"init");
}
}),new objj_method(sel_getUid("defaultValueForKey:"),function(_1d,_1e,_1f){
with(_1d){
return nil;
}
})]);
var _1=objj_allocateClassPair(CAAnimation,"CAPropertyAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_keyPath"),new objj_ivar("_isCumulative"),new objj_ivar("_isAdditive")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setKeyPath:"),function(_20,_21,_22){
with(_20){
_keyPath=_22;
}
}),new objj_method(sel_getUid("keyPath"),function(_23,_24){
with(_23){
return _keyPath;
}
}),new objj_method(sel_getUid("setCumulative:"),function(_25,_26,_27){
with(_25){
_isCumulative=_27;
}
}),new objj_method(sel_getUid("cumulative"),function(_28,_29){
with(_28){
return _isCumulative;
}
}),new objj_method(sel_getUid("isCumulative"),function(_2a,_2b){
with(_2a){
return _isCumulative;
}
}),new objj_method(sel_getUid("setAdditive:"),function(_2c,_2d,_2e){
with(_2c){
_isAdditive=_2e;
}
}),new objj_method(sel_getUid("additive"),function(_2f,_30){
with(_2f){
return _isAdditive;
}
}),new objj_method(sel_getUid("isAdditive"),function(_31,_32){
with(_31){
return _isAdditive;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("animationWithKeyPath:"),function(_33,_34,_35){
with(_33){
var _36=objj_msgSend(_33,"animation");
objj_msgSend(_36,"setKeypath:",_35);
return _36;
}
})]);
var _1=objj_allocateClassPair(CAPropertyAnimation,"CABasicAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_fromValue"),new objj_ivar("_toValue"),new objj_ivar("_byValue")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setFromValue:"),function(_37,_38,_39){
with(_37){
_fromValue=_39;
}
}),new objj_method(sel_getUid("fromValue"),function(_3a,_3b){
with(_3a){
return _fromValue;
}
}),new objj_method(sel_getUid("setToValue:"),function(_3c,_3d,_3e){
with(_3c){
_toValue=_3e;
}
}),new objj_method(sel_getUid("toValue"),function(_3f,_40){
with(_3f){
return _toValue;
}
}),new objj_method(sel_getUid("setByValue:"),function(_41,_42,_43){
with(_41){
_byValue=_43;
}
}),new objj_method(sel_getUid("byValue"),function(_44,_45){
with(_44){
return _byValue;
}
})]);
p;16;CABackingStore.ji;12;CGGeometry.ji;17;CPCompatibility.jc;599;
CABackingStoreGetContext=function(_1){
return _1.context;
};
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
CABackingStoreCreate=function(){
var _2=document.createElement("canvas");
_2.style.position="absolute";
return {context:_2.getContext("2d"),buffer:_2,_image:_2};
};
CABackingStoreSetSize=function(_3,_4){
var _5=_3.buffer;
_5.width=_4.width;
_5.height=_4.height;
_5.style.width=_4.width+"px";
_5.style.height=_4.height+"px";
};
}else{
CABackingStoreCreate=function(){
var _6=CGBitmapGraphicsContextCreate();
_6.buffer="";
return {context:_6};
};
CABackingStoreSetSize=function(_7,_8){
};
}
p;14;CAFlashLayer.ji;9;CALayer.ji;14;CPFlashMovie.jc;803;
var _1=objj_allocateClassPair(CALayer,"CAFlashLayer"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_flashMovie")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setFlashMovie:"),function(_3,_4,_5){
with(_3){
if(_flashMovie==_5){
return;
}
_flashMovie=_5;
_DOMElement.innerHTML="<object width = \"100%\" height = \"100%\"><param name = \"movie\" value = \""+_5._fileName+"\"></param><param name = \"wmode\" value = \"transparent\"></param><embed src = \""+_5._fileName+"\" type = \"application/x-shockwave-flash\" wmode = \"transparent\" width = \"100%\" height = \"100%\"></embed></object>";
}
}),new objj_method(sel_getUid("flashMovie"),function(_6,_7){
with(_6){
return _flashMovie;
}
})]);
p;9;CALayer.jI;21;Foundation/CPObject.jI;23;AppKit/CABackingStore.jI;18;AppKit/CGContext.jI;19;AppKit/CGGeometry.ji;12;CGGeometry.jc;24770;
CGAffineTransformMake=function(a,b,c,d,tx,ty){
return {a:a,b:b,c:c,d:d,tx:tx,ty:ty};
};
CGAffineTransformMakeIdentity=function(){
return {a:1,b:0,c:0,d:1,tx:0,ty:0};
};
CGAffineTransformMakeCopy=function(_7){
return {a:_7.a,b:_7.b,c:_7.c,d:_7.d,tx:_7.tx,ty:_7.ty};
};
CGAffineTransformMakeScale=function(sx,sy){
return {a:sx,b:0,c:0,d:sy,tx:0,ty:0};
};
CGAffineTransformMakeTranslation=function(tx,ty){
return {a:1,b:0,c:0,d:1,tx:tx,ty:ty};
};
CGAffineTransformTranslate=function(_c,tx,ty){
return {a:_c.a,b:_c.b,c:_c.c,d:_c.d,tx:_c.tx+_c.a*tx+_c.c*ty,ty:_c.ty+_c.b*tx+_c.d*ty};
};
CGAffineTransformScale=function(_f,sx,sy){
return {a:_f.a*sx,b:_f.b*sx,c:_f.c*sy,d:_f.d*sy,tx:_f.tx,ty:_f.ty};
};
CGAffineTransformConcat=function(lhs,rhs){
return {a:lhs.a*rhs.a+lhs.b*rhs.c,b:lhs.a*rhs.b+lhs.b*rhs.d,c:lhs.c*rhs.a+lhs.d*rhs.c,d:lhs.c*rhs.b+lhs.d*rhs.d,tx:lhs.tx*rhs.a+lhs.ty*rhs.c+rhs.tx,ty:lhs.tx*rhs.b+lhs.ty*rhs.d+rhs.ty};
};
CGPointApplyAffineTransform=function(_14,_15){
return {x:_14.x*_15.a+_14.y*_15.c+_15.tx,y:_14.x*_15.b+_14.y*_15.d+_15.ty};
};
CGSizeApplyAffineTransform=function(_16,_17){
return {width:_16.width*_17.a+_16.height*_17.c,height:_16.width*_17.b+_16.height*_17.d};
};
CGAffineTransformIsIdentity=function(_18){
return (_18.a==1&&_18.b==0&&_18.c==0&&_18.d==1&&_18.tx==0&&_18.ty==0);
};
CGAffineTransformEqualToTransform=function(lhs,rhs){
return (lhs.a==rhs.a&&lhs.b==rhs.b&&lhs.c==rhs.c&&lhs.d==rhs.d&&lhs.tx==rhs.tx&&lhs.ty==rhs.ty);
};
CGStringCreateWithCGAffineTransform=function(_1b){
return (" [[ "+_1b.a+", "+_1b.b+", 0 ], [ "+_1b.c+", "+_1b.d+", 0 ], [ "+_1b.tx+", "+_1b.ty+", 1]]");
};
CGAffineTransformCreateCopy=function(_1c){
return {a:_1c.a,b:_1c.b,c:_1c.c,d:_1c.d,tx:_1c.tx,ty:_1c.ty};
};
CGAffineTransformMakeRotation=function(_1d){
var sin=SIN(_1d),cos=COS(_1d);
return {a:cos,b:sin,c:-sin,d:cos,tx:0,ty:0};
};
CGAffineTransformRotate=function(_20,_21){
var sin=SIN(_21),cos=COS(_21);
return {a:_20.a*cos+_20.c*sin,b:_20.b*cos+_20.d*sin,c:_20.c*cos-_20.a*sin,d:_20.d*cos-_20.b*sin,tx:_20.tx,ty:_20.ty};
};
CGAffineTransformInvert=function(_24){
var _25=1/(_24.a*_24.d-_24.b*_24.c);
return {a:_25*_24.d,b:-_25*_24.b,c:-_25*_24.c,d:_25*_24.a,tx:_25*(_24.c*_24.ty-_24.d*_24.tx),ty:_25*(_24.b*_24.tx-_24.a*_24.ty)};
};
CGRectApplyAffineTransform=function(_26,_27){
var top=(_26.origin.y),_29=(_26.origin.x),_2a=(_26.origin.x+_26.size.width),_2b=(_26.origin.y+_26.size.height),_2c=CGPointApplyAffineTransform({x:_29,y:top},_27),_2d=CGPointApplyAffineTransform({x:_2a,y:top},_27),_2e=CGPointApplyAffineTransform({x:_29,y:_2b},_27),_2f=CGPointApplyAffineTransform({x:_2a,y:_2b},_27),_30=MIN(_2c.x,_2d.x,_2e.x,_2f.x),_31=MAX(_2c.x,_2d.x,_2e.x,_2f.x),_32=MIN(_2c.y,_2d.y,_2e.y,_2f.y),_33=MAX(_2c.y,_2d.y,_2e.y,_2f.y);
return {origin:{x:_30,y:_32},size:{width:(_31-_30),height:(_33-_32)}};
};
CPStringFromCGAffineTransform=function(_34){
return "{"+_34.a+", "+_34.b+", "+_34.c+", "+_34.d+", "+_34.tx+", "+_34.ty+"}";
};
var _35=1,_36=2,_37=4,_38=8,_39=16;
var _3a=NO;
var _3b=1,_3c=2,_3d=4,_3e=8,_3f=16,_40=_3d|_3b|_3c;
var _41=nil;
var _42=objj_allocateClassPair(CPObject,"CALayer"),_43=_42.isa;
class_addIvars(_42,[new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_position"),new objj_ivar("_zPosition"),new objj_ivar("_anchorPoint"),new objj_ivar("_affineTransform"),new objj_ivar("_sublayerTransform"),new objj_ivar("_sublayerTransformForSublayers"),new objj_ivar("_backingStoreFrame"),new objj_ivar("_standardBackingStoreFrame"),new objj_ivar("_hasSublayerTransform"),new objj_ivar("_hasCustomBackingStoreFrame"),new objj_ivar("_opacity"),new objj_ivar("_isHidden"),new objj_ivar("_backgroundColor"),new objj_ivar("_superlayer"),new objj_ivar("_sublayers"),new objj_ivar("_runLoopUpdateMask"),new objj_ivar("_needsDisplayOnBoundsChange"),new objj_ivar("_delegate"),new objj_ivar("_delegateRespondsToDisplayLayerSelector"),new objj_ivar("_delegateRespondsToDrawLayerInContextSelector"),new objj_ivar("_DOMElement"),new objj_ivar("_DOMContentsElement"),new objj_ivar("_contents"),new objj_ivar("_context"),new objj_ivar("_owningView"),new objj_ivar("_transformToLayer"),new objj_ivar("_transformFromLayer")]);
objj_registerClassPair(_42);
objj_addClassForBundle(_42,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_42,[new objj_method(sel_getUid("init"),function(_44,_45){
with(_44){
_44=objj_msgSendSuper({receiver:_44,super_class:objj_getClass("CPObject")},"init");
if(_44){
_frame=CGRectMakeZero();
_backingStoreFrame=CGRectMakeZero();
_standardBackingStoreFrame=CGRectMakeZero();
_bounds=CGRectMakeZero();
_position=CGPointMakeZero();
_zPosition=0;
_anchorPoint=CGPointMake(0.5,0.5);
_affineTransform=CGAffineTransformMakeIdentity();
_sublayerTransform=CGAffineTransformMakeIdentity();
_transformToLayer=CGAffineTransformMakeIdentity();
_transformFromLayer=CGAffineTransformMakeIdentity();
_opacity=1;
_isHidden=NO;
_masksToBounds=NO;
_sublayers=[];
_DOMElement=document.createElement("div");
_DOMElement.style.overflow="visible";
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.top="0px";
_DOMElement.style.left="0px";
_DOMElement.style.zIndex=0;
_DOMElement.style.width="0px";
_DOMElement.style.height="0px";
}
return _44;
}
}),new objj_method(sel_getUid("setBounds:"),function(_46,_47,_48){
with(_46){
if(CGRectEqualToRect(_bounds,_48)){
return;
}
var _49=_bounds.origin;
_bounds={origin:{x:_48.origin.x,y:_48.origin.y},size:{width:_48.size.width,height:_48.size.height}};
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_46);
}
_CALayerRecalculateGeometry(_46,_35);
}
}),new objj_method(sel_getUid("bounds"),function(_4a,_4b){
with(_4a){
return _bounds;
}
}),new objj_method(sel_getUid("setPosition:"),function(_4c,_4d,_4e){
with(_4c){
if(CGPointEqualToPoint(_position,_4e)){
return;
}
_position={x:_4e.x,y:_4e.y};
_CALayerRecalculateGeometry(_4c,_36);
}
}),new objj_method(sel_getUid("position"),function(_4f,_50){
with(_4f){
return _position;
}
}),new objj_method(sel_getUid("setZPosition:"),function(_51,_52,_53){
with(_51){
if(_zPosition==_53){
return;
}
_zPosition=_53;
objj_msgSend(_51,"registerRunLoopUpdateWithMask:",_3d);
}
}),new objj_method(sel_getUid("setAnchorPoint:"),function(_54,_55,_56){
with(_54){
_56={x:_56.x,y:_56.y};
_56.x=MIN(1,MAX(0,_56.x));
_56.y=MIN(1,MAX(0,_56.y));
if(CGPointEqualToPoint(_anchorPoint,_56)){
return;
}
_anchorPoint=_56;
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_54);
}
if(_owningView){
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
}
_CALayerRecalculateGeometry(_54,_37);
}
}),new objj_method(sel_getUid("anchorPoint"),function(_57,_58){
with(_57){
return _anchorPoint;
}
}),new objj_method(sel_getUid("setAffineTransform:"),function(_59,_5a,_5b){
with(_59){
if(CGAffineTransformEqualToTransform(_affineTransform,_5b)){
return;
}
_affineTransform={a:_5b.a,b:_5b.b,c:_5b.c,d:_5b.d,tx:_5b.tx,ty:_5b.ty};
_CALayerRecalculateGeometry(_59,_38);
}
}),new objj_method(sel_getUid("affineTransform"),function(_5c,_5d){
with(_5c){
return _affineTransform;
}
}),new objj_method(sel_getUid("setSublayerTransform:"),function(_5e,_5f,_60){
with(_5e){
if(CGAffineTransformEqualToTransform(_sublayerTransform,_60)){
return;
}
var _61=_hasSublayerTransform;
_sublayerTransform={a:_60.a,b:_60.b,c:_60.c,d:_60.d,tx:_60.tx,ty:_60.ty};
_hasSublayerTransform=!(_sublayerTransform.a==1&&_sublayerTransform.b==0&&_sublayerTransform.c==0&&_sublayerTransform.d==1&&_sublayerTransform.tx==0&&_sublayerTransform.ty==0);
if(_hasSublayerTransform){
_CALayerUpdateSublayerTransformForSublayers(_5e);
var _62=_sublayers.length;
while(_62--){
_CALayerRecalculateGeometry(_sublayers[_62],_39);
}
}
}
}),new objj_method(sel_getUid("sublayerTransform"),function(_63,_64){
with(_63){
return _sublayerTransform;
}
}),new objj_method(sel_getUid("transformToLayer"),function(_65,_66){
with(_65){
return _transformToLayer;
}
}),new objj_method(sel_getUid("setFrame:"),function(_67,_68,_69){
with(_67){
alert("FIXME IMPLEMENT");
}
}),new objj_method(sel_getUid("frame"),function(_6a,_6b){
with(_6a){
if(!_frame){
_frame=objj_msgSend(_6a,"convertRect:toLayer:",_bounds,_superlayer);
}
return _frame;
}
}),new objj_method(sel_getUid("backingStoreFrame"),function(_6c,_6d){
with(_6c){
return _backingStoreFrame;
}
}),new objj_method(sel_getUid("setBackingStoreFrame:"),function(_6e,_6f,_70){
with(_6e){
_hasCustomBackingStoreFrame=(_70!=nil);
if(_70==nil){
_70=CGRectMakeCopy(_standardBackingStoreFrame);
}else{
if(_superlayer){
_70=objj_msgSend(_superlayer,"convertRect:toLayer:",_70,nil);
var _71=objj_msgSend(_superlayer,"bounds"),_72=objj_msgSend(_superlayer,"convertRect:toLayer:",_71,nil);
_70.origin.x-=(_72.origin.x);
_70.origin.y-=(_72.origin.y);
}else{
_70=CGRectMakeCopy(_70);
}
}
if(!CGPointEqualToPoint(_backingStoreFrame.origin,_70.origin)){
objj_msgSend(_6e,"registerRunLoopUpdateWithMask:",_3b);
}
if(!CGSizeEqualToSize(_backingStoreFrame.size,_70.size)){
objj_msgSend(_6e,"registerRunLoopUpdateWithMask:",_3c);
}
_backingStoreFrame=_70;
}
}),new objj_method(sel_getUid("contents"),function(_73,_74){
with(_73){
return _contents;
}
}),new objj_method(sel_getUid("setContents:"),function(_75,_76,_77){
with(_75){
if(_contents==_77){
return;
}
_contents=_77;
objj_msgSend(_75,"composite");
}
}),new objj_method(sel_getUid("composite"),function(_78,_79){
with(_78){
if(_3a&&!_contents||!_context){
return;
}
CGContextClearRect(_context,{origin:{x:0,y:0},size:{width:(_backingStoreFrame.size.width),height:(_backingStoreFrame.size.height)}});
var _7a=_transformFromLayer;
if(_superlayer){
var _7b=_CALayerGetTransform(_superlayer,nil),_7c=CGPointApplyAffineTransform(_superlayer._bounds.origin,_7b);
_7a=CGAffineTransformConcat(_7a,_7b);
_7a.tx-=_7c.x;
_7a.ty-=_7c.y;
}
_7a.tx-=(_backingStoreFrame.origin.x);
_7a.ty-=(_backingStoreFrame.origin.y);
CGContextSaveGState(_context);
CGContextConcatCTM(_context,_7a);
if(_3a){
_context.drawImage(_contents.buffer,(_bounds.origin.x),(_bounds.origin.y));
}else{
objj_msgSend(_78,"drawInContext:",_context);
}
CGContextRestoreGState(_context);
}
}),new objj_method(sel_getUid("display"),function(_7d,_7e){
with(_7d){
if(!_context){
_context=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_context.DOMElement;
_DOMContentsElement.style.zIndex=-100;
_DOMContentsElement.style.overflow="hidden";
_DOMContentsElement.style.position="absolute";
_DOMContentsElement.style.visibility="visible";
_DOMContentsElement.width=ROUND((_backingStoreFrame.size.width));
_DOMContentsElement.height=ROUND((_backingStoreFrame.size.height));
_DOMContentsElement.style.top="0px";
_DOMContentsElement.style.left="0px";
_DOMContentsElement.style.width=ROUND((_backingStoreFrame.size.width))+"px";
_DOMContentsElement.style.height=ROUND((_backingStoreFrame.size.height))+"px";
_DOMElement.appendChild(_DOMContentsElement);
}
if(_3a){
if(_delegateRespondsToDisplayLayerSelector){
return objj_msgSend(_delegate,"displayInLayer:",_7d);
}
if((_backingStoreFrame.size.width)==0||(_backingStoreFrame.size.height)==0){
return;
}
if(!_contents){
_contents=CABackingStoreCreate();
}
CABackingStoreSetSize(_contents,_bounds.size);
objj_msgSend(_7d,"drawInContext:",CABackingStoreGetContext(_contents));
}
objj_msgSend(_7d,"composite");
}
}),new objj_method(sel_getUid("drawInContext:"),function(_7f,_80,_81){
with(_7f){
if(_backgroundColor){
CGContextSetFillColor(_81,_backgroundColor);
CGContextFillRect(_81,_bounds);
}
if(_delegateRespondsToDrawLayerInContextSelector){
objj_msgSend(_delegate,"drawLayer:inContext:",_7f,_81);
}
}
}),new objj_method(sel_getUid("opacity"),function(_82,_83){
with(_82){
return _opacity;
}
}),new objj_method(sel_getUid("setOpacity:"),function(_84,_85,_86){
with(_84){
if(_opacity==_86){
return;
}
_opacity=_86;
_DOMElement.style.opacity=_86;
_DOMElement.style.filter="alpha(opacity="+_86*100+")";
}
}),new objj_method(sel_getUid("setHidden:"),function(_87,_88,_89){
with(_87){
_isHidden=_89;
_DOMElement.style.display=_89?"none":"block";
}
}),new objj_method(sel_getUid("hidden"),function(_8a,_8b){
with(_8a){
return _isHidden;
}
}),new objj_method(sel_getUid("isHidden"),function(_8c,_8d){
with(_8c){
return _isHidden;
}
}),new objj_method(sel_getUid("setMasksToBounds:"),function(_8e,_8f,_90){
with(_8e){
if(_masksToBounds==_90){
return;
}
_masksToBounds=_90;
_DOMElement.style.overflow=_masksToBounds?"hidden":"visible";
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_91,_92,_93){
with(_91){
_backgroundColor=_93;
objj_msgSend(_91,"setNeedsDisplay");
}
}),new objj_method(sel_getUid("backgroundColor"),function(_94,_95){
with(_94){
return _backgroundColor;
}
}),new objj_method(sel_getUid("sublayers"),function(_96,_97){
with(_96){
return _sublayers;
}
}),new objj_method(sel_getUid("superlayer"),function(_98,_99){
with(_98){
return _superlayer;
}
}),new objj_method(sel_getUid("addSublayer:"),function(_9a,_9b,_9c){
with(_9a){
objj_msgSend(_9a,"insertSublayer:atIndex:",_9c,_sublayers.length);
return;
if(_DOMContentsElement&&_9c._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"addObject:",_9c);
_DOMElement.appendChild(_9c._DOMElement);
}
}),new objj_method(sel_getUid("removeFromSuperlayer"),function(_9d,_9e){
with(_9d){
if(_owningView){
objj_msgSend(_owningView,"setLayer:",nil);
}
if(!_superlayer){
return;
}
_superlayer._DOMElement.removeChild(_DOMElement);
objj_msgSend(_superlayer._sublayers,"removeObject:",_9d);
_superlayer=nil;
}
}),new objj_method(sel_getUid("insertSublayer:atIndex:"),function(_9f,_a0,_a1,_a2){
with(_9f){
if(!_a1){
return;
}
var _a3=objj_msgSend(_a1,"superlayer");
if(_a3==_9f){
var _a4=objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_a1);
if(_a4==_a2){
return;
}
objj_msgSend(_sublayers,"removeObjectAtIndex:",_a4);
if(_a4<_a2){
--_a2;
}
}else{
if(_a3!=nil){
objj_msgSend(_a1,"removeFromSuperlayer");
}
}
if(_DOMContentsElement&&_a1._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"insertObject:atIndex:",_a1,_a2);
if(_a2>=_sublayers.length-1){
_DOMElement.appendChild(_a1._DOMElement);
}else{
_DOMElement.insertBefore(_a1._DOMElement,_sublayers[_a2+1]._DOMElement);
}
_a1._superlayer=_9f;
if(_9f!=_a3){
_CALayerRecalculateGeometry(_a1,268435455);
}
}
}),new objj_method(sel_getUid("insertSublayer:below:"),function(_a5,_a6,_a7,_a8){
with(_a5){
var _a9=_a8?objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_a8):0;
objj_msgSend(_a5,"insertSublayer:atIndex:",_a7,_a9==CPNotFound?_sublayers.length:_a9);
}
}),new objj_method(sel_getUid("insertSublayer:above:"),function(_aa,_ab,_ac,_ad){
with(_aa){
var _ae=_ad?objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_ad):_sublayers.length;
if(_ae==CPNotFound){
objj_msgSend(CPException,"raise:reason:","CALayerNotFoundException","aSublayer is not a sublayer of this layer");
}
objj_msgSend(_sublayers,"insertObject:atIndex:",_ac,_ae==CPNotFound?_sublayers.length:_ae+1);
}
}),new objj_method(sel_getUid("replaceSublayer:with:"),function(_af,_b0,_b1,_b2){
with(_af){
if(_b1==_b2){
return;
}
if(_b1._superlayer!=_af){
alert("EXCEPTION");
return;
}
if(_DOMContentsElement&&_b2._zPosition>_DOMContentsElement.style.zIndex){
_DOMContentsElement.style.zIndex-=100;
}
objj_msgSend(_sublayers,"replaceObjectAtIndex:withObject:",objj_msgSend(_sublayers,"indexOfObjectIdenticalTo:",_b1),_b2);
_DOMElement.replaceChild(_b1._DOMElement,_b2._DOMElement);
}
}),new objj_method(sel_getUid("registerRunLoopUpdateWithMask:"),function(_b3,_b4,_b5){
with(_b3){
if(_41==nil){
_41={};
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("runLoopUpdateLayers"),CALayer,nil,0,[CPDefaultRunLoopMode]);
}
_runLoopUpdateMask|=_b5;
_41[objj_msgSend(_b3,"hash")]=_b3;
}
}),new objj_method(sel_getUid("setNeedsComposite"),function(_b6,_b7){
with(_b6){
objj_msgSend(_b6,"registerRunLoopUpdateWithMask:",_3f);
}
}),new objj_method(sel_getUid("setNeedsDisplay"),function(_b8,_b9){
with(_b8){
objj_msgSend(_b8,"registerRunLoopUpdateWithMask:",_3e);
}
}),new objj_method(sel_getUid("setNeedsDisplayOnBoundsChange:"),function(_ba,_bb,_bc){
with(_ba){
_needsDisplayOnBoundsChange=_bc;
}
}),new objj_method(sel_getUid("needsDisplayOnBoundsChange"),function(_bd,_be){
with(_bd){
return _needsDisplayOnBoundsChange;
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(_bf,_c0,_c1){
with(_bf){
_dirtyRect=_c1;
objj_msgSend(_bf,"display");
}
}),new objj_method(sel_getUid("convertPoint:fromLayer:"),function(_c2,_c3,_c4,_c5){
with(_c2){
return CGPointApplyAffineTransform(_c4,_CALayerGetTransform(_c5,_c2));
}
}),new objj_method(sel_getUid("convertPoint:toLayer:"),function(_c6,_c7,_c8,_c9){
with(_c6){
return CGPointApplyAffineTransform(_c8,_CALayerGetTransform(_c6,_c9));
}
}),new objj_method(sel_getUid("convertRect:fromLayer:"),function(_ca,_cb,_cc,_cd){
with(_ca){
return CGRectApplyAffineTransform(_cc,_CALayerGetTransform(_cd,_ca));
}
}),new objj_method(sel_getUid("convertRect:toLayer:"),function(_ce,_cf,_d0,_d1){
with(_ce){
return CGRectApplyAffineTransform(_d0,_CALayerGetTransform(_ce,_d1));
}
}),new objj_method(sel_getUid("containsPoint:"),function(_d2,_d3,_d4){
with(_d2){
return (_d4.x>=(_bounds.origin.x)&&_d4.y>=(_bounds.origin.y)&&_d4.x<(_bounds.origin.x+_bounds.size.width)&&_d4.y<(_bounds.origin.y+_bounds.size.height));
}
}),new objj_method(sel_getUid("hitTest:"),function(_d5,_d6,_d7){
with(_d5){
if(_isHidden){
return nil;
}
var _d8=CGPointApplyAffineTransform(_d7,_transformToLayer);
if(!(_d8.x>=(_bounds.origin.x)&&_d8.y>=(_bounds.origin.y)&&_d8.x<(_bounds.origin.x+_bounds.size.width)&&_d8.y<(_bounds.origin.y+_bounds.size.height))){
return nil;
}
var _d9=nil,_da=_sublayers.length;
while(_da--){
if(_d9=objj_msgSend(_sublayers[_da],"hitTest:",_d8)){
return _d9;
}
}
return _d5;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_db,_dc,_dd){
with(_db){
if(_delegate==_dd){
return;
}
_delegate=_dd;
_delegateRespondsToDisplayLayerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("displayLayer:"));
_delegateRespondsToDrawLayerInContextSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("drawLayer:inContext:"));
if(_delegateRespondsToDisplayLayerSelector||_delegateRespondsToDrawLayerInContextSelector){
objj_msgSend(_db,"setNeedsDisplay");
}
}
}),new objj_method(sel_getUid("delegate"),function(_de,_df){
with(_de){
return _delegate;
}
}),new objj_method(sel_getUid("_setOwningView:"),function(_e0,_e1,_e2){
with(_e0){
_owningView=_e2;
if(_owningView){
_owningView=_e2;
_bounds.size=CGSizeMakeCopy(objj_msgSend(_owningView,"bounds").size);
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
}
_CALayerRecalculateGeometry(_e0,_36|_35);
}
}),new objj_method(sel_getUid("_owningViewBoundsChanged"),function(_e3,_e4){
with(_e3){
_bounds.size=CGSizeMakeCopy(objj_msgSend(_owningView,"bounds").size);
_position=CGPointMake((_bounds.size.width)*_anchorPoint.x,(_bounds.size.height)*_anchorPoint.y);
_CALayerRecalculateGeometry(_e3,_36|_35);
}
}),new objj_method(sel_getUid("_update"),function(_e5,_e6){
with(_e5){
window.loop=true;
var _e7=_runLoopUpdateMask;
if(_e7&_40){
_CALayerUpdateDOM(_e5,_e7);
}
if(_e7&_3e){
objj_msgSend(_e5,"display");
}else{
if(_e7&_3c||_e7&_3f){
objj_msgSend(_e5,"composite");
}
}
_runLoopUpdateMask=0;
window.loop=false;
}
})]);
class_addMethods(_43,[new objj_method(sel_getUid("layer"),function(_e8,_e9){
with(_e8){
return objj_msgSend(objj_msgSend(objj_msgSend(_e8,"class"),"alloc"),"init");
}
}),new objj_method(sel_getUid("runLoopUpdateLayers"),function(_ea,_eb){
with(_ea){
if(window.oops){
alert(window.latest);
objj_debug_print_backtrace();
}
window.loop=true;
for(hash in _41){
var _ec=_41[hash],_ed=_ec._runLoopUpdateMask;
if(_ed&_40){
_CALayerUpdateDOM(_ec,_ed);
}
if(_ed&_3e){
objj_msgSend(_ec,"display");
}else{
if(_ed&_3c||_ed&_3f){
objj_msgSend(_ec,"composite");
}
}
_ec._runLoopUpdateMask=0;
}
window.loop=false;
_41=nil;
}
})]);
_CALayerUpdateSublayerTransformForSublayers=function(_ee){
var _ef=_ee._bounds,_f0=_ee._anchorPoint,_f1=(_ef.size.width)*_f0.x,_f2=(_ef.size.height)*_f0.y;
_ee._sublayerTransformForSublayers=CGAffineTransformConcat(CGAffineTransformMakeTranslation(-_f1,-_f2),CGAffineTransformConcat(_ee._sublayerTransform,CGAffineTransformMakeTranslation(_f1,_f2)));
};
_CALayerUpdateDOM=function(_f3,_f4){
var _f5=_f3._DOMElement.style;
if(_f4&_3d){
_f5.zIndex=_f3._zPosition;
}
var _f6=_f3._backingStoreFrame;
if(_f4&_3b){
_f5.top=ROUND((_f6.origin.y))+"px";
_f5.left=ROUND((_f6.origin.x))+"px";
}
if(_f4&_3c){
var _f7=MAX(0,ROUND((_f6.size.width))),_f8=MAX(0,ROUND((_f6.size.height))),_f9=_f3._DOMContentsElement;
_f5.width=_f7+"px";
_f5.height=_f8+"px";
if(_f9){
_f9.width=_f7;
_f9.height=_f8;
_f9.style.width=_f7+"px";
_f9.style.height=_f8+"px";
}
}
};
_CALayerRecalculateGeometry=function(_fa,_fb){
var _fc=_fa._bounds,_fd=_fa._superlayer,_fe=(_fc.size.width),_ff=(_fc.size.height),_100=_fa._position,_101=_fa._anchorPoint,_102=_fa._affineTransform,_103={width:_fa._backingStoreFrame.width,height:_fa._backingStoreFrame.height},_104=_fa._hasCustomBackingStoreFrame;
_fa._transformFromLayer=CGAffineTransformConcat(CGAffineTransformMakeTranslation(-_fe*_101.x-(_fa._bounds.origin.x),-_ff*_101.y-(_fa._bounds.origin.y)),CGAffineTransformConcat(_102,CGAffineTransformMakeTranslation(_100.x,_100.y)));
if(_fd&&_fd._hasSublayerTransform){
var tx=_fa._transformFromLayer.tx*_fd._sublayerTransformForSublayers.a+_fa._transformFromLayer.ty*_fd._sublayerTransformForSublayers.c+_fd._sublayerTransformForSublayers.tx;
_fa._transformFromLayer.ty=_fa._transformFromLayer.tx*_fd._sublayerTransformForSublayers.b+_fa._transformFromLayer.ty*_fd._sublayerTransformForSublayers.d+_fd._sublayerTransformForSublayers.ty;
_fa._transformFromLayer.tx=tx;
var a=_fa._transformFromLayer.a*_fd._sublayerTransformForSublayers.a+_fa._transformFromLayer.b*_fd._sublayerTransformForSublayers.c,b=_fa._transformFromLayer.a*_fd._sublayerTransformForSublayers.b+_fa._transformFromLayer.b*_fd._sublayerTransformForSublayers.d,c=_fa._transformFromLayer.c*_fd._sublayerTransformForSublayers.a+_fa._transformFromLayer.d*_fd._sublayerTransformForSublayers.c;
_fa._transformFromLayer.d=_fa._transformFromLayer.c*_fd._sublayerTransformForSublayers.b+_fa._transformFromLayer.d*_fd._sublayerTransformForSublayers.d;
_fa._transformFromLayer.a=a;
_fa._transformFromLayer.b=b;
_fa._transformFromLayer.c=c;
}
_fa._transformToLayer=CGAffineTransformInvert(_fa._transformFromLayer);
_fa._frame=nil;
_fa._standardBackingStoreFrame=objj_msgSend(_fa,"convertRect:toLayer:",_fc,nil);
if(_fd){
var _fc=objj_msgSend(_fd,"bounds"),_109=objj_msgSend(_fd,"convertRect:toLayer:",_fc,nil);
_fa._standardBackingStoreFrame.origin.x-=(_109.origin.x);
_fa._standardBackingStoreFrame.origin.y-=(_109.origin.y);
}
var _10a=_fa._standardBackingStoreFrame.origin,size=_fa._standardBackingStoreFrame.size;
_10a.x=FLOOR(_10a.x);
_10a.y=FLOOR(_10a.y);
size.width=CEIL(size.width)+1;
size.height=CEIL(size.height)+1;
if(!_104){
var _10c=CGRectMakeCopy(_fa._standardBackingStoreFrame);
if(ROUND((_10c.origin.x))!=ROUND((_fa._backingStoreFrame.origin.x))||ROUND((_10c.origin.y))!=ROUND((_fa._backingStoreFrame.origin.y))){
objj_msgSend(_fa,"registerRunLoopUpdateWithMask:",_3b);
}
if(((_10c.size.width)!=ROUND((_fa._backingStoreFrame.size.width))||(_10c.size.height)!=ROUND((_fa._backingStoreFrame.size.height)))){
objj_msgSend(_fa,"registerRunLoopUpdateWithMask:",_3c);
}
_fa._backingStoreFrame=_10c;
}
if(_fb&_35&&_fa._needsDisplayOnBoundsChange){
objj_msgSend(_fa,"setNeedsDisplay");
}else{
if(_104||(_fb&~(_36|_37))){
objj_msgSend(_fa,"setNeedsComposite");
}
}
var _10d=_fa._sublayers,_10e=0,_10f=_10d.length;
for(;_10e<_10f;++_10e){
_CALayerRecalculateGeometry(_10d[_10e],_fb);
}
};
_CALayerGetTransform=function(_110,_111){
var _112=CGAffineTransformMakeIdentity();
if(_110){
var _113=_110;
while(_113&&_113!=_111){
var _114=_113._transformFromLayer;
var tx=_112.tx*_114.a+_112.ty*_114.c+_114.tx;
_112.ty=_112.tx*_114.b+_112.ty*_114.d+_114.ty;
_112.tx=tx;
var a=_112.a*_114.a+_112.b*_114.c,b=_112.a*_114.b+_112.b*_114.d,c=_112.c*_114.a+_112.d*_114.c;
_112.d=_112.c*_114.b+_112.d*_114.d;
_112.a=a;
_112.b=b;
_112.c=c;
_113=_113._superlayer;
}
if(_113==_111){
return _112;
}
}
var _119=[],_113=_111;
while(_113){
_119.push(_113);
_113=_113._superlayer;
}
var _11a=_119.length;
while(_11a--){
var _11b=_119[_11a]._transformToLayer;
var tx=_112.tx*_11b.a+_112.ty*_11b.c+_11b.tx;
_112.ty=_112.tx*_11b.b+_112.ty*_11b.d+_11b.ty;
_112.tx=tx;
var a=_112.a*_11b.a+_112.b*_11b.c,b=_112.a*_11b.b+_112.b*_11b.d,c=_112.c*_11b.a+_112.d*_11b.c;
_112.d=_112.c*_11b.b+_112.d*_11b.d;
_112.a=a;
_112.b=b;
_112.c=c;
}
return _112;
};
p;23;CAMediaTimingFunction.jI;21;Foundation/CPObject.jI;25;Foundation/CPDictionary.jI;21;Foundation/CPString.jc;2072;
kCAMediaTimingFunctionLinear="kCAMediaTimingFunctionLinear";
kCAMediaTimingFunctionEaseIn="kCAMediaTimingFunctionEaseIn";
kCAMediaTimingFunctionEaseOut="kCAMediaTimingFunctionEaseOut";
kCAMediaTimingFunctionEaseInEaseOut="kCAMediaTimingFunctionEaseInEaseOut";
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CAMediaTimingFunction"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_c1x"),new objj_ivar("_c1y"),new objj_ivar("_c2x"),new objj_ivar("_c2y")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithControlPoints::::"),function(_4,_5,_6,_7,_8,_9){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_c1x=_6;
_c1y=_7;
_c2x=_8;
_c2y=_9;
}
return _4;
}
}),new objj_method(sel_getUid("getControlPointAtIndex:values:"),function(_a,_b,_c,_d){
with(_a){
if(_c==0){
_d[0]=0;
_d[1]=0;
}else{
if(_c==1){
_d[0]=_c1x;
_d[1]=_c1y;
}else{
if(_c==2){
_d[0]=_c2x;
_d[1]=_c2y;
}else{
_d[0]=1;
_d[0]=1;
}
}
}
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("functionWithName:"),function(_e,_f,_10){
with(_e){
if(!_1){
_1=objj_msgSend(CPDictionary,"dictionary");
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0,0,1,1),kCAMediaTimingFunctionLinear);
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0.42,0,1,1),kCAMediaTimingFunctionEaseIn);
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0,0,0.58,1),kCAMediaTimingFunctionEaseOut);
objj_msgSend(_1,"setObject:forKey:",objj_msgSend(CAMediaTimingFunction,"functionWithControlPoints::::",0.42,0,0.58,1),kCAMediaTimingFunctionEaseInEaseOut);
}
return objj_msgSend(_1,"objectForKey:",_10);
}
}),new objj_method(sel_getUid("functionWithControlPoints::::"),function(_11,_12,c1x,c1y,c2x,c2y){
with(_11){
return objj_msgSend(objj_msgSend(_11,"alloc"),"initWithControlPoints::::",c1x,c1y,c2x,c2y);
}
})]);
p;19;CGAffineTransform.ji;12;CGGeometry.jc;2950;
CGAffineTransformMake=function(a,b,c,d,tx,ty){
return {a:a,b:b,c:c,d:d,tx:tx,ty:ty};
};
CGAffineTransformMakeIdentity=function(){
return {a:1,b:0,c:0,d:1,tx:0,ty:0};
};
CGAffineTransformMakeCopy=function(_7){
return {a:_7.a,b:_7.b,c:_7.c,d:_7.d,tx:_7.tx,ty:_7.ty};
};
CGAffineTransformMakeScale=function(sx,sy){
return {a:sx,b:0,c:0,d:sy,tx:0,ty:0};
};
CGAffineTransformMakeTranslation=function(tx,ty){
return {a:1,b:0,c:0,d:1,tx:tx,ty:ty};
};
CGAffineTransformTranslate=function(_c,tx,ty){
return {a:_c.a,b:_c.b,c:_c.c,d:_c.d,tx:_c.tx+_c.a*tx+_c.c*ty,ty:_c.ty+_c.b*tx+_c.d*ty};
};
CGAffineTransformScale=function(_f,sx,sy){
return {a:_f.a*sx,b:_f.b*sx,c:_f.c*sy,d:_f.d*sy,tx:_f.tx,ty:_f.ty};
};
CGAffineTransformConcat=function(lhs,rhs){
return {a:lhs.a*rhs.a+lhs.b*rhs.c,b:lhs.a*rhs.b+lhs.b*rhs.d,c:lhs.c*rhs.a+lhs.d*rhs.c,d:lhs.c*rhs.b+lhs.d*rhs.d,tx:lhs.tx*rhs.a+lhs.ty*rhs.c+rhs.tx,ty:lhs.tx*rhs.b+lhs.ty*rhs.d+rhs.ty};
};
CGPointApplyAffineTransform=function(_14,_15){
return {x:_14.x*_15.a+_14.y*_15.c+_15.tx,y:_14.x*_15.b+_14.y*_15.d+_15.ty};
};
CGSizeApplyAffineTransform=function(_16,_17){
return {width:_16.width*_17.a+_16.height*_17.c,height:_16.width*_17.b+_16.height*_17.d};
};
CGAffineTransformIsIdentity=function(_18){
return (_18.a==1&&_18.b==0&&_18.c==0&&_18.d==1&&_18.tx==0&&_18.ty==0);
};
CGAffineTransformEqualToTransform=function(lhs,rhs){
return (lhs.a==rhs.a&&lhs.b==rhs.b&&lhs.c==rhs.c&&lhs.d==rhs.d&&lhs.tx==rhs.tx&&lhs.ty==rhs.ty);
};
CGStringCreateWithCGAffineTransform=function(_1b){
return (" [[ "+_1b.a+", "+_1b.b+", 0 ], [ "+_1b.c+", "+_1b.d+", 0 ], [ "+_1b.tx+", "+_1b.ty+", 1]]");
};
CGAffineTransformCreateCopy=function(_1c){
return {a:_1c.a,b:_1c.b,c:_1c.c,d:_1c.d,tx:_1c.tx,ty:_1c.ty};
};
CGAffineTransformMakeRotation=function(_1d){
var sin=SIN(_1d),cos=COS(_1d);
return {a:cos,b:sin,c:-sin,d:cos,tx:0,ty:0};
};
CGAffineTransformRotate=function(_20,_21){
var sin=SIN(_21),cos=COS(_21);
return {a:_20.a*cos+_20.c*sin,b:_20.b*cos+_20.d*sin,c:_20.c*cos-_20.a*sin,d:_20.d*cos-_20.b*sin,tx:_20.tx,ty:_20.ty};
};
CGAffineTransformInvert=function(_24){
var _25=1/(_24.a*_24.d-_24.b*_24.c);
return {a:_25*_24.d,b:-_25*_24.b,c:-_25*_24.c,d:_25*_24.a,tx:_25*(_24.c*_24.ty-_24.d*_24.tx),ty:_25*(_24.b*_24.tx-_24.a*_24.ty)};
};
CGRectApplyAffineTransform=function(_26,_27){
var top=(_26.origin.y),_29=(_26.origin.x),_2a=(_26.origin.x+_26.size.width),_2b=(_26.origin.y+_26.size.height),_2c=CGPointApplyAffineTransform({x:_29,y:top},_27),_2d=CGPointApplyAffineTransform({x:_2a,y:top},_27),_2e=CGPointApplyAffineTransform({x:_29,y:_2b},_27),_2f=CGPointApplyAffineTransform({x:_2a,y:_2b},_27),_30=MIN(_2c.x,_2d.x,_2e.x,_2f.x),_31=MAX(_2c.x,_2d.x,_2e.x,_2f.x),_32=MIN(_2c.y,_2d.y,_2e.y,_2f.y),_33=MAX(_2c.y,_2d.y,_2e.y,_2f.y);
return {origin:{x:_30,y:_32},size:{width:(_31-_30),height:(_33-_32)}};
};
CPStringFromCGAffineTransform=function(_34){
return "{"+_34.a+", "+_34.b+", "+_34.c+", "+_34.d+", "+_34.tx+", "+_34.ty+"}";
};
p;9;CGColor.ji;14;CGColorSpace.jc;2065;
var _1=0;
CFHashCode=function(_2){
if(!_2.hash){
_2.hash=++_1;
}
return _2;
};
kCGColorWhite="kCGColorWhite";
kCGColorBlack="kCGColorBlack";
kCGColorClear="kCGColorClear";
var _3={};
CGColorGetConstantColor=function(_4){
alert("FIX ME");
};
CGColorRetain=function(_5){
return _5;
};
CGColorRelease=function(){
};
CGColorCreate=function(_6,_7){
if(!_6||!_7){
return NULL;
}
var _7=_7.slice();
CGColorSpaceStandardizeComponents(_6,_7);
var _8=CFHashCode(_6)+_7.join("");
if(_3[_8]){
return _3[_8];
}
return _3[_8]={colorspace:_6,pattern:NULL,components:_7};
};
CGColorCreateCopy=function(_9){
return _9;
};
CGColorCreateGenericGray=function(_a,_b){
return CGColorCreate(0,[_a,_b]);
};
CGColorCreateGenericRGB=function(_c,_d,_e,_f){
return CGColorCreate(0,[_c,_d,_e,_f]);
};
CGColorCreateGenericCMYK=function(_10,_11,_12,_13,_14){
return CGColorCreate(0,[_10,_11,_12,_13,_14]);
};
CGColorCreateCopyWithAlpha=function(_15,_16){
var _17=_15.components;
if(!_15||_16==_17[_17.length-1]){
return _15;
}
if(_15.pattern){
var _18=CGColorCreateWithPattern(_15.colorspace,_15.pattern,_17);
}else{
var _18=CGColorCreate(_15.colorspace,_17);
}
_18.components[_17.length-1]=_16;
return _18;
};
CGColorCreateWithPattern=function(_19,_1a,_1b){
if(!_19||!_1a||!_1b){
return NULL;
}
return {colorspace:_19,pattern:_1a,components:_1b.slice()};
};
CGColorEqualToColor=function(lhs,rhs){
if(lhs==rhs){
return true;
}
if(!lhs||!rhs){
return false;
}
var _1e=lhs.components,_1f=rhs.components,_20=_1e.length;
if(_20!=_1f.length){
return false;
}
while(_20--){
if(_1e[_20]!=_1f[_20]){
return false;
}
}
if(lhs.pattern!=rhs.pattern){
return false;
}
if(CGColorSpaceEqualToColorSpace(lhs.colorspace,rhs.colorspace)){
return false;
}
return true;
};
CGColorGetAlpha=function(_21){
var _22=_21.components;
return _22[_22.length-1];
};
CGColorGetColorSpace=function(_23){
return _23.colorspace;
};
CGColorGetComponents=function(_24){
return _24.components;
};
CGColorGetNumberOfComponents=function(_25){
return _25.components.length;
};
CGColorGetPattern=function(_26){
return _26.pattern;
};
p;14;CGColorSpace.jc;3502;
kCGColorSpaceModelUnknown=-1;
kCGColorSpaceModelMonochrome=0;
kCGColorSpaceModelRGB=1;
kCGColorSpaceModelCMYK=2;
kCGColorSpaceModelLab=3;
kCGColorSpaceModelDeviceN=4;
kCGColorSpaceModelIndexed=5;
kCGColorSpaceModelPattern=6;
kCGColorSpaceGenericGray="CGColorSpaceGenericGray";
kCGColorSpaceGenericRGB="CGColorSpaceGenericRGB";
kCGColorSpaceGenericCMYK="CGColorSpaceGenericCMYK";
kCGColorSpaceGenericRGBLinear="CGColorSpaceGenericRGBLinear";
kCGColorSpaceGenericRGBHDR="CGColorSpaceGenericRGBHDR";
kCGColorSpaceAdobeRGB1998="CGColorSpaceAdobeRGB1998";
kCGColorSpaceSRGB="CGColorSpaceSRGB";
var _1={};
CGColorSpaceCreateCalibratedGray=function(_2,_3,_4){
return {model:kCGColorSpaceModelMonochrome,count:1,base:NULL};
};
CGColorSpaceCreateCalibratedRGB=function(_5,_6,_7){
return {model:kCGColorSpaceModelRGB,count:1,base:NULL};
};
CGColorSpaceCreateICCBased=function(_8,_9,_a,_b){
return NULL;
};
CGColorSpaceCreateLab=function(_c,_d,_e){
return NULL;
};
CGColorSpaceCreateDeviceCMYK=function(){
return CGColorSpaceCreateWithName(kCGColorSpaceGenericCMYK);
};
CGColorSpaceCreateDeviceGray=function(){
return CGColorSpaceCreateWithName(kCGColorSpaceGenericGray);
};
CGColorSpaceCreateDeviceRGB=function(){
return CGColorSpaceCreateWithName(kCGColorSpaceGenericRGB);
};
CGColorSpaceCreateWithPlatformColorSpace=function(){
return NULL;
};
CGColorSpaceCreateIndexed=function(_f,_10,_11){
return NULL;
};
CGColorSpaceCreatePattern=function(_12){
if(_12){
return {model:kCGColorSpaceModelPattern,count:_12.count,base:_12};
}
return {model:kCGColorSpaceModelPattern,count:0,base:NULL};
};
CGColorSpaceCreateWithName=function(_13){
var _14=_1[_13];
if(_14){
return _14;
}
switch(_13){
case kCGColorSpaceGenericGray:
return _1[_13]={model:kCGColorSpaceModelMonochrome,count:1,base:NULL};
case kCGColorSpaceGenericRGB:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceGenericCMYK:
return _1[_13]={model:kCGColorSpaceModelCMYK,count:4,base:NULL};
case kCGColorSpaceGenericRGBLinear:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceGenericRGBHDR:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceAdobeRGB1998:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
case kCGColorSpaceSRGB:
return _1[_13]={model:kCGColorSpaceModelRGB,count:3,base:NULL};
}
return NULL;
};
CGColorSpaceCopyICCProfile=function(_15){
return NULL;
};
CGColorSpaceGetNumberOfComponents=function(_16){
return _16.count;
};
CGColorSpaceGetTypeID=function(_17){
};
CGColorSpaceGetModel=function(_18){
return _18.model;
};
CGColorSpaceGetBaseColorSpace=function(_19){
};
CGColorSpaceGetColorTableCount=function(_1a){
};
CGColorSpaceGetColorTable=function(_1b){
};
CGColorSpaceRelease=function(_1c){
};
CGColorSpaceRetain=function(_1d){
return _1d;
};
CGColorSpaceStandardizeComponents=function(_1e,_1f){
var _20=_1e.count;
if(_20>_1f.length){
_1f[_20]=1;
return;
}
var _21=_1f[_20];
if(_21<0){
_1f[_20]=0;
}else{
if(_21>1){
_1f[_20]=1;
}else{
_1f[_20]=ROUND(_21*1000)/1000;
}
}
if(_1e.base){
_1e=_1e.base;
}
switch(_1e.model){
case kCGColorSpaceModelMonochrome:
case kCGColorSpaceModelRGB:
case kCGColorSpaceModelCMYK:
case kCGColorSpaceModelDeviceN:
while(_20--){
if(_20>_1f.length){
_1f[_20]=1;
return;
}
var _21=_1f[_20];
if(_21<0){
_1f[_20]=0;
}else{
if(_21>1){
_1f[_20]=1;
}else{
_1f[_20]=ROUND(_21*255)/255;
}
}
}
break;
case kCGColorSpaceModelIndexed:
case kCGColorSpaceModelLab:
case kCGColorSpaceModelPattern:
break;
}
};
p;11;CGContext.ji;12;CGGeometry.ji;19;CGAffineTransform.ji;8;CGPath.jc;21422;
kCGLineCapButt=0;
kCGLineCapRound=1;
kCGLineCapSquare=2;
kCGLineJoinMiter=0;
kCGLineJoinRound=1;
kCGLineJoinBevel=2;
kCGPathFill=0;
kCGPathEOFill=1;
kCGPathStroke=2;
kCGPathFillStroke=3;
kCGPathEOFillStroke=4;
kCGBlendModeNormal=0;
kCGBlendModeMultiply=1;
kCGBlendModeScreen=2;
kCGBlendModeOverlay=3;
kCGBlendModeDarken=4;
kCGBlendModeLighten=5;
kCGBlendModeColorDodge=6;
kCGBlendModeColorBurn=7;
kCGBlendModeSoftLight=8;
kCGBlendModeHardLight=9;
kCGBlendModeDifference=10;
kCGBlendModeExclusion=11;
kCGBlendModeHue=12;
kCGBlendModeSaturation=13;
kCGBlendModeColor=14;
kCGBlendModeLuminosity=15;
kCGBlendModeClear=16;
kCGBlendModeCopy=17;
kCGBlendModeSourceIn=18;
kCGBlendModeSourceOut=19;
kCGBlendModeSourceAtop=20;
kCGBlendModeDestinationOver=21;
kCGBlendModeDestinationIn=22;
kCGBlendModeDestinationOut=23;
kCGBlendModeDestinationAtop=24;
kCGBlendModeXOR=25;
kCGBlendModePlusDarker=26;
kCGBlendModePlusLighter=27;
CGContextRelease=function(){
};
CGContextRetain=function(_1){
return _1;
};
if(!CPFeatureIsCompatible(CPHTMLCanvasFeature)){
CGGStateCreate=function(){
return {alpha:1,strokeStyle:"#000",fillStyle:"#ccc",lineWidth:1,lineJoin:kCGLineJoinMiter,lineCap:kCGLineCapButt,miterLimit:10,globalAlpha:1,blendMode:kCGBlendModeNormal,shadowOffset:{width:0,height:0},shadowBlur:0,shadowColor:NULL,CTM:{a:1,b:0,c:0,d:1,tx:0,ty:0}};
};
CGGStateCreateCopy=function(_2){
return {alpha:_2.alpha,strokeStyle:_2.strokeStyle,fillStyle:_2.fillStyle,lineWidth:_2.lineWidth,lineJoin:_2.lineJoin,lineCap:_2.lineCap,miterLimit:_2.miterLimit,globalAlpha:_2.globalAlpha,blendMode:_2.blendMode,shadowOffset:_2.shadowOffset,shadowBlur:_2.shadowBlur,shadowColor:_2.shadowColor,CTM:{a:_2.CTM.a,b:_2.CTM.b,c:_2.CTM.c,d:_2.CTM.d,tx:_2.CTM.tx,ty:_2.CTM.ty}};
};
CGBitmapGraphicsContextCreate=function(){
return {DOMElement:document.createElement("div"),path:NULL,gState:CGGStateCreate(),gStateStack:[]};
};
CGContextSaveGState=function(_3){
_3.gStateStack.push(CGGStateCreateCopy(_3.gState));
};
CGContextRestoreGState=function(_4){
_4.gState=_4.gStateStack.pop();
};
CGContextSetLineCap=function(_5,_6){
_5.gState.lineCap=_6;
};
CGContextSetLineJoin=function(_7,_8){
_7.gState.lineJoin=_8;
};
CGContextSetLineWidth=function(_9,_a){
_9.gState.lineWidth=_a;
};
CGContextSetMiterLimit=function(_b,_c){
_b.gState.miterLimit=_c;
};
CGContextSetBlendMode=function(_d,_e){
_d.gState.blendMode=_e;
};
CGContextAddArc=function(_f,x,y,_12,_13,_14,_15){
CGPathAddArc(_f.path,_f.gState.CTM,x,y,_12,_13,_14,_15);
};
CGContextAddArcToPoint=function(_16,x1,y1,x2,y2,_1b){
CGPathAddArcToPoint(_16.path,_16.gState.CTM,x1,y1,x2,y2,_1b);
};
CGContextAddCurveToPoint=function(_1c,_1d,_1e,_1f,_20,x,y){
CGPathAddCurveToPoint(_1c.path,_1c.gState.CTM,_1d,_1e,_1f,_20,x,y);
};
CGContextAddLines=function(_23,_24,_25){
CGPathAddLines(_23.path,_23.gState.CTM,_24,_25);
};
CGContextAddLineToPoint=function(_26,x,y){
CGPathAddLineToPoint(_26.path,_26.gState.CTM,x,y);
};
CGContextAddPath=function(_29,_2a){
if(!_29||CGPathIsEmpty(_2a)){
return;
}
if(!_29.path){
_29.path=CGPathCreateMutable();
}
CGPathAddPath(_29.path,_29.gState.CTM,_2a);
};
CGContextAddQuadCurveToPoint=function(_2b,cpx,cpy,x,y){
CGPathAddQuadCurveToPoint(_2b.path,_2b.gState.CTM,cpx,cpy,x,y);
};
CGContextAddRect=function(_30,_31){
CGPathAddRect(_30.path,_30.gState.CTM,_31);
};
CGContextAddRects=function(_32,_33,_34){
CGPathAddRects(_32.path,_32.gState.CTM,_33,_34);
};
CGContextBeginPath=function(_35){
_35.path=CGPathCreateMutable();
};
CGContextClosePath=function(_36){
CGPathCloseSubpath(_36.path);
};
CGContextMoveToPoint=function(_37,x,y){
if(!_37.path){
_37.path=CGPathCreateMutable();
}
CGPathMoveToPoint(_37.path,_37.gState.CTM,x,y);
};
CGContextFillRect=function(_3a,_3b){
CGContextFillRects(_3a,[_3b],1);
};
CGContextFillRects=function(_3c,_3d,_3e){
if(arguments[2]===undefined){
var _3e=_3d.length;
}
CGContextBeginPath(_3c);
CGContextAddRects(_3c,_3d,_3e);
CGContextClosePath(_3c);
CGContextDrawPath(_3c,kCGPathFill);
};
CGContextStrokeRect=function(_3f,_40){
CGContextBeginPath(_3f);
CGContextAddRect(_3f,_40);
CGContextClosePath(_3f);
CGContextDrawPath(_3f,kCGPathStroke);
};
CGContextStrokeRectWithWidth=function(_41,_42,_43){
CGContextSaveGState(_41);
CGContextSetLineWidth(_41,_43);
CGContextStrokeRect(_41,_42);
CGContextRestoreGState(_41);
};
CGContextConcatCTM=function(_44,_45){
var CTM=_44.gState.CTM;
var tx=CTM.tx*_45.a+CTM.ty*_45.c+_45.tx;
CTM.ty=CTM.tx*_45.b+CTM.ty*_45.d+_45.ty;
CTM.tx=tx;
var a=CTM.a*_45.a+CTM.b*_45.c,b=CTM.a*_45.b+CTM.b*_45.d,c=CTM.c*_45.a+CTM.d*_45.c;
CTM.d=CTM.c*_45.b+CTM.d*_45.d;
CTM.a=a;
CTM.b=b;
CTM.c=c;
};
CGContextGetCTM=function(_4b){
return _4b.gState.CTM;
};
CGContextRotateCTM=function(_4c,_4d){
var _4e=_4c.gState;
_4e.CTM=CGAffineTransformRotate(_4e.CTM,_4d);
};
CGContextScaleCTM=function(_4f,sx,sy){
var _52=_4f.gState;
_52.CTM={a:_52.CTM.a*sx,b:_52.CTM.b*sx,c:_52.CTM.c*sy,d:_52.CTM.d*sy,tx:_52.CTM.tx,ty:_52.CTM.ty};
};
CGContextTranslateCTM=function(_53,tx,ty){
var _56=_53.gState;
_56.CTM={a:_56.CTM.a,b:_56.CTM.b,c:_56.CTM.c,d:_56.CTM.d,tx:_56.CTM.tx+_56.CTM.a*tx+_56.CTM.c*ty,ty:_56.CTM.ty+_56.CTM.b*tx+_56.CTM.d*ty};
};
CGContextSetShadow=function(_57,_58,_59){
var _5a=_57.gState;
_5a.shadowOffset={width:_58.width,height:_58.height};
_5a.shadowBlur=_59;
_5a.shadowColor=objj_msgSend(CPColor,"shadowColor");
};
CGContextSetShadowWithColor=function(_5b,_5c,_5d,_5e){
var _5f=_5b.gState;
_5f.shadowOffset={width:_5c.width,height:_5c.height};
_5f.shadowBlur=_5d;
_5f.shadowColor=_5e;
};
CGContextSetAlpha=function(_60,_61){
_60.gState.alpha=MAX(MIN(_61,1),0);
};
}
CGContextEOFillPath=function(_62){
CGContextDrawPath(_62,kCGPathEOFill);
};
CGContextFillPath=function(_63){
CGContextDrawPath(_63,kCGPathFill);
};
var _64=4*((SQRT2-1)/3);
CGContextAddEllipseInRect=function(_65,_66){
CGContextBeginPath(_65);
if((_66.size.width)==(_66.size.height)){
CGContextAddArc(_65,(_66.origin.x+(_66.size.width)/2),(_66.origin.y+(_66.size.height)/2),(_66.size.width)/2,0,2*PI,YES);
}else{
var _67={width:(_66.size.width)/2,height:(_66.size.height)/2},_68={x:(_66.origin.x)+_67.width,y:(_66.origin.y)+_67.height};
CGContextMoveToPoint(_65,_68.x,_68.y-_67.height);
CGContextAddCurveToPoint(_65,_68.x+(_64*_67.width),_68.y-_67.height,_68.x+_67.width,_68.y-(_64*_67.height),_68.x+_67.width,_68.y);
CGContextAddCurveToPoint(_65,_68.x+_67.width,_68.y+(_64*_67.height),_68.x+(_64*_67.width),_68.y+_67.height,_68.x,_68.y+_67.height);
CGContextAddCurveToPoint(_65,_68.x-(_64*_67.width),_68.y+_67.height,_68.x-_67.width,_68.y+(_64*_67.height),_68.x-_67.width,_68.y);
CGContextAddCurveToPoint(_65,_68.x-_67.width,_68.y-(_64*_67.height),_68.x-(_64*_67.width),_68.y-_67.height,_68.x,_68.y-_67.height);
}
CGContextClosePath(_65);
};
CGContextFillEllipseInRect=function(_69,_6a){
CGContextAddEllipseInRect(_69,_6a);
CGContextFillPath(_69);
};
CGContextStrokeEllipseInRect=function(_6b,_6c){
CGContextAddEllipseInRect(_6b,_6c);
CGContextStrokePath(_6b);
};
CGContextStrokePath=function(_6d){
CGContextDrawPath(_6d,kCGPathStroke);
};
CGContextStrokeLineSegments=function(_6e,_6f,_70){
var i=0;
if(arguments["count"]==NULL){
var _70=_6f.length;
}
CGContextBeginPath(_6e);
for(;i<_70;i+=2){
CGContextMoveToPoint(_6e,_6f[i].x,_6f[i].y);
CGContextAddLineToPoint(_6e,_6f[i+1].x,_6f[i+1].y);
}
CGContextStrokePath(_6e);
};
CGContextSetFillColor=function(_72,_73){
if(_73){
_72.gState.fillStyle=objj_msgSend(_73,"cssString");
}
};
CGContextSetStrokeColor=function(_74,_75){
if(_75){
_74.gState.strokeStyle=objj_msgSend(_75,"cssString");
}
};
CGContextFillRoundedRectangleInRect=function(_76,_77,_78,ne,se,sw,nw){
var _7d=(_77.origin.x),_7e=(_77.origin.x+_77.size.width),_7f=(_77.origin.y),_80=(_77.origin.y+_77.size.height);
CGContextBeginPath(_76);
CGContextMoveToPoint(_76,_7d+_78,_7f);
if(ne){
CGContextAddLineToPoint(_76,_7e-_78,_7f);
CGContextAddCurveToPoint(_76,_7e-_78,_7f,_7e,_7f,_7e,_7f+_78);
}else{
CGContextAddLineToPoint(_76,_7e,_7f);
}
if(se){
CGContextAddLineToPoint(_76,_7e,_80-_78);
CGContextAddCurveToPoint(_76,_7e,_80-_78,_7e,_80,_7e-_78,_80);
}else{
CGContextAddLineToPoint(_76,_7e,_80);
}
if(sw){
CGContextAddLineToPoint(_76,_7d+_78,_80);
CGContextAddCurveToPoint(_76,_7d+_78,_80,_7d,_80,_7d,_80-_78);
}else{
CGContextAddLineToPoint(_76,_7d,_80);
}
if(nw){
CGContextAddLineToPoint(_76,_7d,_7f+_78);
CGContextAddCurveToPoint(_76,_7d,_7f+_78,_7d,_7f,_7d+_78,_7f);
}else{
CGContextAddLineToPoint(_76,_7d,_7f);
}
CGContextClosePath(_76);
CGContextFillPath(_76);
};
CGContextStrokeRoundedRectangleInRect=function(_81,_82,_83,ne,se,sw,nw){
var _88=(_82.origin.x),_89=(_82.origin.x+_82.size.width),_8a=(_82.origin.y),_8b=(_82.origin.y+_82.size.height);
CGContextBeginPath(_81);
CGContextMoveToPoint(_81,_88+_83,_8a);
if(ne){
CGContextAddLineToPoint(_81,_89-_83,_8a);
CGContextAddCurveToPoint(_81,_89-_83,_8a,_89,_8a,_89,_8a+_83);
}else{
CGContextAddLineToPoint(_81,_89,_8a);
}
if(se){
CGContextAddLineToPoint(_81,_89,_8b-_83);
CGContextAddCurveToPoint(_81,_89,_8b-_83,_89,_8b,_89-_83,_8b);
}else{
CGContextAddLineToPoint(_81,_89,_8b);
}
if(sw){
CGContextAddLineToPoint(_81,_88+_83,_8b);
CGContextAddCurveToPoint(_81,_88+_83,_8b,_88,_8b,_88,_8b-_83);
}else{
CGContextAddLineToPoint(_81,_88,_8b);
}
if(nw){
CGContextAddLineToPoint(_81,_88,_8a+_83);
CGContextAddCurveToPoint(_81,_88,_8a+_83,_88,_8a,_88+_83,_8a);
}else{
CGContextAddLineToPoint(_81,_88,_8a);
}
CGContextClosePath(_81);
CGContextStrokePath(_81);
};
if(CPFeatureIsCompatible(CPHTMLCanvasFeature)){
var _8c=["butt","round","square"],_8d=["miter","round","bevel"],_8e=["source-over","source-over","source-over","source-over","darker","lighter","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","source-over","copy","source-in","source-out","source-atop","destination-over","destination-in","destination-out","destination-atop","xor","source-over","source-over"];
CGContextSaveGState=function(_8f){
_8f.save();
};
CGContextRestoreGState=function(_90){
_90.restore();
};
CGContextSetLineCap=function(_91,_92){
_91.lineCap=_8c[_92];
};
CGContextSetLineJoin=function(_93,_94){
_93.lineJoin=_8d[_94];
};
CGContextSetLineWidth=function(_95,_96){
_95.lineWidth=_96;
};
CGContextSetMiterLimit=function(_97,_98){
_97.miterLimit=_98;
};
CGContextSetBlendMode=function(_99,_9a){
_99.globalCompositeOperation=_8e[_9a];
};
CGContextAddArc=function(_9b,x,y,_9e,_9f,_a0,_a1){
_9b.arc(x,y,_9e,_9f,_a0,!_a1);
};
CGContextAddArcToPoint=function(_a2,x1,y1,x2,y2,_a7){
_a2.arcTo(x1,y1,x2,y2,_a7);
};
CGContextAddCurveToPoint=function(_a8,_a9,_aa,_ab,_ac,x,y){
_a8.bezierCurveTo(_a9,_aa,_ab,_ac,x,y);
};
CGContextAddLineToPoint=function(_af,x,y){
_af.lineTo(x,y);
};
CGContextAddPath=function(_b2,_b3){
if(!_b2||CGPathIsEmpty(_b3)){
return;
}
var _b4=_b3.elements,i=0,_b6=_b3.count;
for(;i<_b6;++i){
var _b7=_b4[i],_b8=_b7.type;
switch(_b8){
case kCGPathElementMoveToPoint:
_b2.moveTo(_b7.x,_b7.y);
break;
case kCGPathElementAddLineToPoint:
_b2.lineTo(_b7.x,_b7.y);
break;
case kCGPathElementAddQuadCurveToPoint:
_b2.quadraticCurveTo(_b7.cpx,_b7.cpy,_b7.x,_b7.y);
break;
case kCGPathElementAddCurveToPoint:
_b2.bezierCurveTo(_b7.cp1x,_b7.cp1y,_b7.cp2x,_b7.cp2y,_b7.x,_b7.y);
break;
case kCGPathElementCloseSubpath:
_b2.closePath();
break;
case kCGPathElementAddArc:
_b2.arc(_b7.x,_b7.y,_b7.radius,_b7.startAngle,_b7.endAngle,_b7.clockwise);
break;
case kCGPathElementAddArcTo:
break;
}
}
};
CGContextAddRect=function(_b9,_ba){
_b9.rect((_ba.origin.x),(_ba.origin.y),(_ba.size.width),(_ba.size.height));
};
CGContextAddRects=function(_bb,_bc,_bd){
var i=0;
if(arguments["count"]==NULL){
var _bd=_bc.length;
}
for(;i<_bd;++i){
var _bf=_bc[i];
_bb.rect((_bf.origin.x),(_bf.origin.y),(_bf.size.width),(_bf.size.height));
}
};
CGContextBeginPath=function(_c0){
_c0.beginPath();
};
CGContextClosePath=function(_c1){
_c1.closePath();
};
CGContextMoveToPoint=function(_c2,x,y){
_c2.moveTo(x,y);
};
CGContextClearRect=function(_c5,_c6){
_c5.clearRect((_c6.origin.x),(_c6.origin.y),(_c6.size.width),(_c6.size.height));
};
CGContextDrawPath=function(_c7,_c8){
if(_c8==kCGPathFill||_c8==kCGPathFillStroke){
_c7.fill();
}else{
if(_c8==kCGPathEOFill||_c8==kCGPathEOFillStroke){
alert("not implemented!!!");
}
}
if(_c8==kCGPathStroke||_c8==kCGPathFillStroke||_c8==kCGPathEOFillStroke){
_c7.stroke();
}
};
CGContextFillRect=function(_c9,_ca){
_c9.fillRect((_ca.origin.x),(_ca.origin.y),(_ca.size.width),(_ca.size.height));
};
CGContextFillRects=function(_cb,_cc,_cd){
var i=0;
if(arguments["count"]==NULL){
var _cd=_cc.length;
}
for(;i<_cd;++i){
var _cf=_cc[i];
_cb.fillRect((_cf.origin.x),(_cf.origin.y),(_cf.size.width),(_cf.size.height));
}
};
CGContextStrokeRect=function(_d0,_d1){
_d0.strokeRect((_d1.origin.x),(_d1.origin.y),(_d1.size.width),(_d1.size.height));
};
CGContextClip=function(_d2){
_d2.clip();
};
CGContextClipToRect=function(_d3,_d4){
_d3.beginPath();
_d3.rect((_d4.origin.x),(_d4.origin.y),(_d4.size.width),(_d4.size.height));
_d3.closePath();
_d3.clip();
};
CGContextClipToRects=function(_d5,_d6,_d7){
if(arguments["count"]==NULL){
var _d7=_d6.length;
}
_d5.beginPath();
CGContextAddRects(_d5,_d6,_d7);
_d5.clip();
};
CGContextSetAlpha=function(_d8,_d9){
_d8.globalAlpha=_d9;
};
CGContextSetFillColor=function(_da,_db){
_da.fillStyle=objj_msgSend(_db,"cssString");
};
CGContextSetStrokeColor=function(_dc,_dd){
_dc.strokeStyle=objj_msgSend(_dd,"cssString");
};
CGContextSetShadow=function(_de,_df,_e0){
_de.shadowOffsetX=_df.width;
_de.shadowOffsetY=_df.height;
_de.shadowBlur=_e0;
};
CGContextSetShadowWithColor=function(_e1,_e2,_e3,_e4){
_e1.shadowOffsetX=_e2.width;
_e1.shadowOffsetY=_e2.height;
_e1.shadowBlur=_e3;
_e1.shadowColor=objj_msgSend(_e4,"cssString");
};
CGContextRotateCTM=function(_e5,_e6){
_e5.rotate(_e6);
};
CGContextScaleCTM=function(_e7,sx,sy){
_e7.scale(sx,sy);
};
CGContextTranslateCTM=function(_ea,tx,ty){
_ea.translate(tx,ty);
};
eigen=function(_ed){
alert("IMPLEMENT ME!");
};
if(CPFeatureIsCompatible(CPJavaScriptCanvasTransformFeature)){
CGContextConcatCTM=function(_ee,_ef){
_ee.transform(_ef.a,_ef.b,_ef.c,_ef.d,_ef.tx,_ef.ty);
};
}else{
CGContextConcatCTM=function(_f0,_f1){
var a=_f1.a,b=_f1.b,c=_f1.c,d=_f1.d,tx=_f1.tx,ty=_f1.ty,sx=1,sy=1,a1=0,a2=0;
if(b==0&&c==0){
sx=a;
sy=d;
}else{
if(a*b==-c*d){
var _fc=(a*d<0||b*c>0)?-1:1,a2=(ATAN2(b,d)+ATAN2(-_fc*c,_fc*a))/2,cos=COS(a2),sin=SIN(a2);
if(cos==0){
sx=-c/sin;
sy=b/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
}
}
}else{
if(a*c==-b*d){
var _fc=(a*d<0||b*c>0)?-1:1;
a1=(Math.atan2(_fc*b,_fc*a)+Math.atan2(-c,d))/2,cos=COS(a1),sin=SIN(a1);
if(cos==0){
sx=b/sin;
sy=-c/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
}
}
}else{
var _ff=CGAffineTransformMake(a,c,b,d,0,0),u=eigen(CGAffineTransformConcat(_f1,_ff)),v=eigen(CGAffineTransformConcat(_ff,_f1)),U=CGAffineTransformMake(u.vector_1.x,u.vector_2.x,u.vector_1.y,u.vector_2.y,0,0),VT=CGAffineTransformMake(v.vector_1.x,v.vector_1.y,v.vector_2.x,v.vector_2.y,0,0),S=CGAffineTransformConcat(CGAffineTransformConcat(CGAffineTransformInvert(U),_f1),CGAffineTransformInvert(VT));
a=VT.a;
b=VT.b;
c=VT.c;
d=VT.d;
var _fc=(a*d<0||b*c>0)?-1:1,a2=(ATAN2(b,d)+ATAN2(-_fc*c,_fc*a))/2,cos=COS(a2),sin=SIN(a2);
if(cos==0){
sx=-c/sin;
sy=b/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
}
}
S.a*=sx;
S.d*=sy;
a=U.a;
b=U.b;
c=U.c;
d=U.d;
var _fc=(a*d<0||b*c>0)?-1:1;
a1=(Math.atan2(_fc*b,_fc*a)+Math.atan2(-c,d))/2,cos=COS(a1),sin=SIN(a1);
if(cos==0){
sx=b/sin;
sy=-c/sin;
}else{
if(sin==0){
sx=a/cos;
sy=d/cos;
}else{
abs_cos=ABS(cos);
abs_sin=ABS(sin);
sx=(abs_cos*a/cos+abs_sin*b/sin)/(abs_cos+abs_sin);
sy=(abs_cos*d/cos+abs_sin*-c/sin)/(abs_cos+abs_sin);
}
}
sx=S.a*sx;
sy=S.d*sy;
}
}
}
if(tx!=0||ty!=0){
CGContextTranslateCTM(_f0,tx,ty);
}
if(a1!=0){
CGContextRotateCTM(_f0,a1);
}
if(sx!=1||sy!=1){
CGContextScaleCTM(_f0,sx,sy);
}
if(a2!=0){
CGContextRotateCTM(_f0,a2);
}
};
}
CGContextDrawImage=function(_105,_106,_107){
_105.drawImage(_107._image,(_106.origin.x),(_106.origin.y),(_106.size.width),(_106.size.height));
};
to_string=function(_108){
return "rgba("+ROUND(_108.components[0]*255)+", "+ROUND(_108.components[1]*255)+", "+ROUND(255*_108.components[2])+", "+_108.components[3]+")";
};
CGContextDrawLinearGradient=function(_109,_10a,_10b,_10c,_10d){
var _10e=_10a.colors,_10f=_10e.length,_110=_109.createLinearGradient(_10b.x,_10b.y,_10c.x,_10c.y);
while(_10f--){
_110.addColorStop(_10a.locations[_10f],to_string(_10e[_10f]));
}
_109.fillStyle=_110;
_109.fill();
};
CGBitmapGraphicsContextCreate=function(){
var _111=document.createElement("canvas"),_112=_111.getContext("2d");
_112.DOMElement=_111;
return _112;
};
}else{
if(CPFeatureIsCompatible(CPVMLFeature)){
var _113=["f","t"],_114=["flat","round","square"],_115=["miter","round","bevel"],_116=[" m "," l ","qb"," c "," x ",[" at "," wa "]];
var _117=CGBitmapGraphicsContextCreate;
CGBitmapGraphicsContextCreate=function(){
document.namespaces.add("cg_vml_","urn:schemas-microsoft-com:vml");
document.createStyleSheet().cssText="cg_vml_\\:*{behavior:url(#default#VML)}";
CGBitmapGraphicsContextCreate=_117;
return _117();
};
CGContextClearRect=function(_118,_119){
if(_118.buffer!=nil){
_118.buffer="";
}else{
_118.DOMElement.innerHTML="";
}
_118.path=NULL;
};
var W=10,H=10,Z=10,Z_2=Z/2;
CGContextDrawImage=function(_11e,_11f,_120){
var _121="";
if(_120.buffer!=nil){
_121=_120.buffer;
}else{
var ctm=_11e.gState.CTM,_123=CGPointApplyAffineTransform(_11f.origin,ctm),_124=ctm.a==ctm.d&&ctm.b==-ctm.c,vml=["<cg_vml_:group coordsize=\"1,1\" coordorigin=\"0,0\" style=\"width:1;height:1;position:absolute"];
var _126=CGRectApplyAffineTransform(_11f,ctm);
vml.push(";padding:0 ",ROUND((_126.origin.x+_126.size.width)),"px ",ROUND((_126.origin.y+_126.size.height)),"px 0;filter:progid:DXImageTransform.Microsoft.Matrix(","M11='",ctm.a,"',M12='",ctm.c,"',M21='",ctm.b,"',M22='",ctm.d,"',","Dx='",ROUND(_123.x),"', Dy='",ROUND(_123.y),"', sizingmethod='clip');");
vml.push("\"><cg_vml_:image src=\"",_120._image.src,"\" style=\"width:",(_11f.size.width),"px;height:",(_11f.size.height),"px;\"/></g_vml_:group>");
_121=vml.join("");
}
if(_11e.buffer!=nil){
_11e.buffer+=_121;
}else{
_11e.DOMElement.insertAdjacentHTML("BeforeEnd",_121);
}
};
CGContextDrawPath=function(_127,_128){
if(!_127||CGPathIsEmpty(_127.path)){
return;
}
var _129=_127.path.elements,i=0,_12b=_127.path.count,_12c=_127.gState,fill=(_128==kCGPathFill||_128==kCGPathFillStroke)?1:0,_12e=(_128==kCGPathStroke||_128==kCGPathFillStroke)?1:0,_12f=_12c.alpha,vml=["<cg_vml_:shape"," fillcolor=\"",_12c.fillStyle,"\" filled=\"",_113[fill],"\" style=\"position:absolute;width:",W,";height:",H,";\" coordorigin=\"0 0\" coordsize=\"",Z*W," ",Z*H,"\" stroked=\"",_113[_12e],"\" strokeweight=\"",_12c.lineWidth,"\" strokecolor=\"",_12c.strokeStyle,"\" path=\""];
for(;i<_12b;++i){
var _131=_129[i],type=_131.type;
switch(type){
case kCGPathElementMoveToPoint:
case kCGPathElementAddLineToPoint:
vml.push(_116[type],(ROUND(Z*(_131.x)-Z_2)),",",(ROUND(Z*(_131.y)-Z_2)));
break;
case kCGPathElementAddQuadCurveToPoint:
vml.push(_116[type],(ROUND(Z*(_131.cpx)-Z_2)),",",(ROUND(Z*(_131.cpy)-Z_2)),",",(ROUND(Z*(_131.x)-Z_2)),",",(ROUND(Z*(_131.y)-Z_2)));
break;
case kCGPathElementAddCurveToPoint:
vml.push(_116[type],(ROUND(Z*(_131.cp1x)-Z_2)),",",(ROUND(Z*(_131.cp1y)-Z_2)),",",(ROUND(Z*(_131.cp2x)-Z_2)),",",(ROUND(Z*(_131.cp2y)-Z_2)),",",(ROUND(Z*(_131.x)-Z_2)),",",(ROUND(Z*(_131.y)-Z_2)));
break;
case kCGPathElementCloseSubpath:
vml.push(_116[type]);
break;
case kCGPathElementAddArc:
var x=_131.x,y=_131.y,_135=_131.radius,_136=_131.clockwise?1:0,_137=_131.endAngle,_138=_131.startAngle,_139={x:x+_135*COS(_138),y:y+_135*SIN(_138)};
if(_138==_137&&!_136){
vml.push(_116[kCGPathElementMoveToPoint],(ROUND(Z*(_139.x)-Z_2)),",",(ROUND(Z*(_139.y)-Z_2)));
continue;
}
var end={x:x+_135*COS(_137),y:y+_135*SIN(_137)};
if(_136&&_138!=_137&&(_139.x==end.x&&_139.y==end.y)){
if(_139.x>=x){
if(_139.y<y){
_139.x+=0.125;
}else{
_139.y+=0.125;
}
}else{
if(end.y<=y){
end.x+=0.125;
}else{
end.y+=0.125;
}
}
}
vml.push(_116[type][_136],(ROUND(Z*(x-_135)-Z_2)),",",(ROUND(Z*(y-_135)-Z_2))," ",(ROUND(Z*(x+_135)-Z_2)),",",(ROUND(Z*(y+_135)-Z_2))," ",(ROUND(Z*(_139.x)-Z_2)),",",(ROUND(Z*(_139.y)-Z_2))," ",(ROUND(Z*(end.x)-Z_2)),",",(ROUND(Z*(end.y)-Z_2)));
break;
case kCGPathElementAddArcTo:
break;
}
}
vml.push("\">");
if(fill){
vml.push("<cg_vml_:fill color=\"",_12c.fillStyle,"\" opacity=\"",_12f,"\" />");
}
if(_12e){
vml.push("<cg_vml_:stroke opacity=\"",_12f,"\" joinstyle=\"",_115[_12c.lineJoin],"\" miterlimit=\"",_12c.miterLimit,"\" endcap=\"",_114[_12c.lineCap],"\" weight=\"",_12c.lineWidth,"","px\" color=\"",_12c.strokeStyle,"\" />");
}
var _13b=_12c.shadowColor;
if(_13b){
var _13c=_12c.shadowOffset;
vml.push("<cg_vml_:shadow on=\"t\" offset=\"",_13c.width,"pt ",_13c.height,"pt\" opacity=\"",objj_msgSend(_13b,"alphaComponent"),"\" color=black />");
}
vml.push("</cg_vml_:shape>");
_127.path=NULL;
if(_127.buffer!=nil){
_127.buffer+=vml.join("");
}else{
_127.DOMElement.insertAdjacentHTML("BeforeEnd",vml.join(""));
}
};
}
}
p;12;CGGeometry.jc;5470;
CGPointMake=function(x,y){
return {x:x,y:y};
};
CGPointMakeZero=function(){
return {x:0,y:0};
};
CGPointMakeCopy=function(_3){
return {x:_3.x,y:_3.y};
};
CGPointCreateCopy=function(_4){
return {x:_4.x,y:_4.y};
};
CGPointEqualToPoint=function(_5,_6){
return (_5.x==_6.x&&_5.y==_6.y);
};
CGStringFromPoint=function(_7){
return ("{"+_7.x+", "+_7.y+"}");
};
CGSizeMake=function(_8,_9){
return {width:_8,height:_9};
};
CGSizeMakeZero=function(){
return {width:0,height:0};
};
CGSizeMakeCopy=function(_a){
return {width:_a.width,height:_a.height};
};
CGSizeCreateCopy=function(_b){
return {width:_b.width,height:_b.height};
};
CGSizeEqualToSize=function(_c,_d){
return (_c.width==_d.width&&_c.height==_d.height);
};
CGStringFromSize=function(_e){
return ("{"+_e.width+", "+_e.height+"}");
};
CGRectMake=function(x,y,_11,_12){
return {origin:{x:x,y:y},size:{width:_11,height:_12}};
};
CGRectMakeZero=function(){
return {origin:{x:0,y:0},size:{width:0,height:0}};
};
CGRectMakeCopy=function(_13){
return {origin:{x:_13.origin.x,y:_13.origin.y},size:{width:_13.size.width,height:_13.size.height}};
};
CGRectCreateCopy=function(_14){
return {origin:{x:_14.origin.x,y:_14.origin.y},size:{width:_14.size.width,height:_14.size.height}};
};
CGRectEqualToRect=function(_15,_16){
return ((_15.origin.x==_16.origin.x&&_15.origin.y==_16.origin.y)&&(_15.size.width==_16.size.width&&_15.size.height==_16.size.height));
};
CGStringFromRect=function(_17){
return ("{"+("{"+_17.origin.x+", "+_17.origin.y+"}")+", "+("{"+_17.size.width+", "+_17.size.height+"}")+"}");
};
CGRectOffset=function(_18,dX,dY){
return {origin:{x:_18.origin.x+dX,y:_18.origin.y+dY},size:{width:_18.size.width,height:_18.size.height}};
};
CGRectInset=function(_1b,dX,dY){
return {origin:{x:_1b.origin.x+dX,y:_1b.origin.y+dY},size:{width:_1b.size.width-2*dX,height:_1b.size.height-2*dY}};
};
CGRectGetHeight=function(_1e){
return (_1e.size.height);
};
CGRectGetMaxX=function(_1f){
return (_1f.origin.x+_1f.size.width);
};
CGRectGetMaxY=function(_20){
return (_20.origin.y+_20.size.height);
};
CGRectGetMidX=function(_21){
return (_21.origin.x+(_21.size.width)/2);
};
CGRectGetMidY=function(_22){
return (_22.origin.y+(_22.size.height)/2);
};
CGRectGetMinX=function(_23){
return (_23.origin.x);
};
CGRectGetMinY=function(_24){
return (_24.origin.y);
};
CGRectGetWidth=function(_25){
return (_25.size.width);
};
CGRectIsEmpty=function(_26){
return (_26.size.width<=0||_26.size.height<=0);
};
CGRectIsNull=function(_27){
return (_27.size.width<=0||_27.size.height<=0);
};
CGRectContainsPoint=function(_28,_29){
return (_29.x>=(_28.origin.x)&&_29.y>=(_28.origin.y)&&_29.x<(_28.origin.x+_28.size.width)&&_29.y<(_28.origin.y+_28.size.height));
};
CGInsetMake=function(top,_2b,_2c,_2d){
return {top:(top),left:(_2b),bottom:(_2c),right:(_2d)};
};
CGInsetMakeZero=function(){
return {top:(0),left:(0),bottom:(0),right:(0)};
};
CGInsetMakeCopy=function(_2e){
return {top:(_2e.top),left:(_2e.left),bottom:(_2e.bottom),right:(_2e.right)};
};
CGInsetIsEmpty=function(_2f){
return ((_2f).left===0&&(_2f).top===0&&(_2f).right===0&&(_2f).bottom===0);
};
CGRectContainsRect=function(_30,_31){
var _32=CGRectUnion(_30,_31);
return ((_32.origin.x==_30.origin.x&&_32.origin.y==_30.origin.y)&&(_32.size.width==_30.size.width&&_32.size.height==_30.size.height));
};
CGRectIntersectsRect=function(_33,_34){
var _35=CGRectIntersection(_33,_34);
return !(_35.size.width<=0||_35.size.height<=0);
};
CGRectIntegral=function(_36){
_36=CGRectStandardize(_36);
var x=FLOOR((_36.origin.x)),y=FLOOR((_36.origin.y));
_36.size.width=CEIL((_36.origin.x+_36.size.width))-x;
_36.size.height=CEIL((_36.origin.y+_36.size.height))-y;
_36.origin.x=x;
_36.origin.y=y;
return _36;
};
CGRectIntersection=function(_39,_3a){
var _3b={origin:{x:MAX((_39.origin.x),(_3a.origin.x)),y:MAX((_39.origin.y),(_3a.origin.y))},size:{width:0,height:0}};
_3b.size.width=MIN((_39.origin.x+_39.size.width),(_3a.origin.x+_3a.size.width))-(_3b.origin.x);
_3b.size.height=MIN((_39.origin.y+_39.size.height),(_3a.origin.y+_3a.size.height))-(_3b.origin.y);
return (_3b.size.width<=0||_3b.size.height<=0)?{origin:{x:0,y:0},size:{width:0,height:0}}:_3b;
};
CGRectStandardize=function(_3c){
var _3d=(_3c.size.width),_3e=(_3c.size.height),_3f=_3c;
if(_3d<0){
if(_3f==_3c){
_3f={origin:{x:_3c.origin.x,y:_3c.origin.y},size:{width:_3c.size.width,height:_3c.size.height}};
}
_3f.origin.x+=_3d;
_3f.size.width=-_3d;
}
if(_3e<0){
if(_3f==_3c){
_3f={origin:{x:_3c.origin.x,y:_3c.origin.y},size:{width:_3c.size.width,height:_3c.size.height}};
}
_3f.origin.y+=_3e;
_3f.size.height=-_3e;
}
return _3f;
};
CGRectUnion=function(_40,_41){
var _42=MIN((_40.origin.x),(_41.origin.x)),_43=MIN((_40.origin.y),(_41.origin.y)),_44=MAX((_40.origin.x+_40.size.width),(_41.origin.x+_41.size.width)),_45=MAX((_40.origin.y+_40.size.height),(_41.origin.y+_41.size.height));
return {origin:{x:_42,y:_43},size:{width:_44-_42,height:_45-_43}};
};
CGPointFromString=function(_46){
var _47=_46.indexOf(",");
return {x:parseInt(_46.substr(1,_47-1)),y:parseInt(_46.substring(_47+1,_46.length))};
};
CGSizeFromString=function(_48){
var _49=_48.indexOf(",");
return {width:parseInt(_48.substr(1,_49-1)),height:parseInt(_48.substring(_49+1,_48.length))};
};
CGRectFromString=function(_4a){
var _4b=_4a.indexOf(",",_4a.indexOf(",")+1);
return {origin:CGPointFromString(_4a.substr(1,_4b-1)),size:CGSizeFromString(_4a.substring(_4b+2,_4a.length))};
};
CGPointFromEvent=function(_4c){
return {x:_4c.clientX,y:_4c.clientY};
};
p;12;CGGradient.ji;9;CGColor.ji;14;CGColorSpace.jc;497;
kCGGradientDrawsBeforeStartLocation=1<<0;
kCGGradientDrawsAfterEndLocation=1<<1;
CGGradientCreateWithColorComponents=function(_1,_2,_3,_4){
if(arguments["count"]==NULL){
var _4=_3.length;
}
var _5=[];
while(_4--){
var _6=_4*4;
_5[_4]=CGColorCreate(_1,_2.slice(_6,_6+4));
}
return CGGradientCreateWithColors(_1,_5,_3);
};
CGGradientCreateWithColors=function(_7,_8,_9){
return {colorspace:_7,colors:_8,locations:_9};
};
CGGradientRelease=function(){
};
CGGradientRetain=function(_a){
return _a;
};
p;8;CGPath.ji;12;CGGeometry.ji;19;CGAffineTransform.jc;5005;
kCGPathElementMoveToPoint=0;
kCGPathElementAddLineToPoint=1;
kCGPathElementAddQuadCurveToPoint=2;
kCGPathElementAddCurveToPoint=3;
kCGPathElementCloseSubpath=4;
kCGPathElementAddArc=5;
kCGPathElementAddArcToPoint=6;
CGPathCreateMutable=function(){
return {count:0,start:NULL,current:NULL,elements:[]};
};
CGPathCreateMutableCopy=function(_1){
var _2=CGPathCreateMutable();
CGPathAddPath(_2,_1);
return _2;
};
CGPathCreateCopy=function(_3){
return CGPathCreateMutableCopy(_3);
};
CGPathRelease=function(_4){
};
CGPathRetain=function(_5){
return _5;
};
CGPathAddArc=function(_6,_7,x,y,_a,_b,_c,_d){
if(_7&&!(_7.a==1&&_7.b==0&&_7.c==0&&_7.d==1&&_7.tx==0&&_7.ty==0)){
var _e={x:x,y:y},_f={x:COS(_c),y:SIN(_c)},_10={x:COS(_b),y:SIN(_b)};
_f={x:_f.x*_7.a+_f.y*_7.c+_7.tx,y:_f.x*_7.b+_f.y*_7.d+_7.ty};
_10={x:_10.x*_7.a+_10.y*_7.c+_7.tx,y:_10.x*_7.b+_10.y*_7.d+_7.ty};
_e={x:_e.x*_7.a+_e.y*_7.c+_7.tx,y:_e.x*_7.b+_e.y*_7.d+_7.ty};
x=_e.x;
y=_e.y;
var _11=_c,_12=_b;
_c=ATAN2(_f.y-_7.ty,_f.x-_7.tx);
_b=ATAN2(_10.y-_7.ty,_10.x-_7.tx);
if(_c==_b&&_11!=_12){
if(_12>_11){
_c=_c-PI2;
}else{
_b=_b-PI2;
}
}
_a={width:_a,height:0};
_a={width:_a.width*_7.a+_a.height*_7.c,height:_a.width*_7.b+_a.height*_7.d};
_a=SQRT(_a.width*_a.width+_a.height*_a.height);
}
_6.current={x:x+_a*COS(_c),y:y+_a*SIN(_c)};
_6.elements[_6.count++]={type:kCGPathElementAddArc,x:x,y:y,radius:_a,startAngle:_b,endAngle:_c};
};
CGPathAddArcToPoint=function(_13,_14,x1,y1,x2,y2,_19){
};
CGPathAddCurveToPoint=function(_1a,_1b,_1c,_1d,_1e,_1f,x,y){
var cp1={x:_1c,y:_1d},cp2={x:_1e,y:_1f},end={x:x,y:y};
if(_1b){
cp1={x:cp1.x*_1b.a+cp1.y*_1b.c+_1b.tx,y:cp1.x*_1b.b+cp1.y*_1b.d+_1b.ty};
cp2={x:cp2.x*_1b.a+cp2.y*_1b.c+_1b.tx,y:cp2.x*_1b.b+cp2.y*_1b.d+_1b.ty};
end={x:end.x*_1b.a+end.y*_1b.c+_1b.tx,y:end.x*_1b.b+end.y*_1b.d+_1b.ty};
}
_1a.current=end;
_1a.elements[_1a.count++]={type:kCGPathElementAddCurveToPoint,cp1x:cp1.x,cp1y:cp1.y,cp2x:cp2.x,cp2y:cp2.y,x:end.x,y:end.y};
};
CGPathAddLines=function(_25,_26,_27,_28){
var i=1;
if(arguments["count"]==NULL){
var _28=_27.length;
}
if(!_25||_28<2){
return;
}
CGPathMoveToPoint(_25,_26,_27[0].x,_27[0].y);
for(;i<_28;++i){
CGPathAddLineToPoint(_25,_26,_27[i].x,_27[i].y);
}
};
CGPathAddLineToPoint=function(_2a,_2b,x,y){
var _2e={x:x,y:y};
if(_2b!=NULL){
_2e={x:_2e.x*_2b.a+_2e.y*_2b.c+_2b.tx,y:_2e.x*_2b.b+_2e.y*_2b.d+_2b.ty};
}
_2a.elements[_2a.count++]={type:kCGPathElementAddLineToPoint,x:_2e.x,y:_2e.y};
_2a.current=_2e;
};
CGPathAddPath=function(_2f,_30,_31){
var i=0,_33=_31.count;
for(;i<_33;++i){
var _34=_31[i];
_2f.elements[_2f.count++]={type:_34.type,points:_34.point.slice()};
if(_34.type==kCGPathElementAddArc||_34.type==kCGPathElementAddArcToPoint){
_2f.elements[_2f.count-1].radius=_34.radius;
}
}
_2f.current=_31.current;
};
CGPathAddQuadCurveToPoint=function(_35,_36,cpx,cpy,x,y){
var cp={x:cpx,y:cpy},end={x:x,y:y};
if(_36){
cp={x:control.x*_36.a+control.y*_36.c+_36.tx,y:control.x*_36.b+control.y*_36.d+_36.ty};
end={x:end.x*_36.a+end.y*_36.c+_36.tx,y:end.x*_36.b+end.y*_36.d+_36.ty};
}
_35.elements[_35.count++]={type:kCGPathElementAddQuadCurveToPoint,cpx:cp.x,cpy:cp.y,x:end.x,y:end.y};
_35.current=end;
};
CGPathAddRect=function(_3d,_3e,_3f){
CGPathAddRects(_3d,_3e,[_3f],1);
};
CGPathAddRects=function(_40,_41,_42,_43){
var i=0;
if(arguments["count"]==NULL){
var _43=_42.length;
}
for(;i<_43;++i){
var _45=_42[i];
CGPathMoveToPoint(_40,_41,(_45.origin.x),(_45.origin.y));
CGPathAddLineToPoint(_40,_41,(_45.origin.x+_45.size.width),(_45.origin.y));
CGPathAddLineToPoint(_40,_41,(_45.origin.x+_45.size.width),(_45.origin.y+_45.size.height));
CGPathAddLineToPoint(_40,_41,(_45.origin.x),(_45.origin.y+_45.size.height));
CGPathCloseSubpath(_40);
}
};
CGPathMoveToPoint=function(_46,_47,x,y){
var _4a={x:x,y:y},_4b=_46.count;
if(_47!=NULL){
_4a={x:_4a.x*_47.a+_4a.y*_47.c+_47.tx,y:_4a.x*_47.b+_4a.y*_47.d+_47.ty};
}
_46.start=_4a;
_46.current=_4a;
var _4c=_46.elements[_4b-1];
if(_4b!=0&&_4c.type==kCGPathElementMoveToPoint){
_4c.x=_4a.x;
_4c.y=_4a.y;
}else{
_46.elements[_46.count++]={type:kCGPathElementMoveToPoint,x:_4a.x,y:_4a.y};
}
};
CGPathCloseSubpath=function(_4d){
var _4e=_4d.count;
if(_4e==0||_4d.elements[_4e-1].type==kCGPathElementCloseSubpath){
return;
}
_4d.elements[_4d.count++]={type:kCGPathElementCloseSubpath,points:[_4d.start]};
};
CGPathEqualToPath=function(_4f,_50){
if(_4f==_50){
return YES;
}
if(_4f.count!=_50.count||!(_4f.start.x==_50.start.x&&_4f.start.y==_50.start.y)||!(_4f.current.x==_50.current.x&&_4f.current.y==_50.current.y)){
return NO;
}
var i=0,_52=_4f.count;
for(;i<_52;++i){
var _53=_4f[i],_54=_50[i];
if(_53.type!=_54.type){
return NO;
}
if((_53.type==kCGPathElementAddArc||_53.type==kCGPathElementAddArcToPoint)&&_53.radius!=_54.radius){
return NO;
}
var j=_53.points.length;
while(j--){
if(!(_53.points[j].x==_54.points[j].x&&_53.points[j].y==_54.points[j].y)){
return NO;
}
}
}
return YES;
};
CGPathGetCurrentPoint=function(_56){
return {x:_56.current.x,y:_56.current.y};
};
CGPathIsEmpty=function(_57){
return !_57||_57.count==0;
};
p;9;CPAlert.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;22;AppKit/CPApplication.jI;17;AppKit/CPButton.jI;16;AppKit/CPColor.jI;15;AppKit/CPFont.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;16;AppKit/CPPanel.jI;20;AppKit/CPTextField.jc;5498;
CPWarningAlertStyle=0;
CPInformationalAlertStyle=1;
CPCriticalAlertStyle=2;
var _1,_2,_3;
var _4=objj_allocateClassPair(CPObject,"CPAlert"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_alertPanel"),new objj_ivar("_messageLabel"),new objj_ivar("_alertImageView"),new objj_ivar("_alertStyle"),new objj_ivar("_windowTitle"),new objj_ivar("_windowStyle"),new objj_ivar("_buttonCount"),new objj_ivar("_buttons"),new objj_ivar("_delegate")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("init"),function(_6,_7){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPObject")},"init");
if(_6){
_buttonCount=0;
_buttons=objj_msgSend(CPArray,"array");
_alertStyle=CPWarningAlertStyle;
_messageLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMake(57,10,220,80));
objj_msgSend(_messageLabel,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",12));
objj_msgSend(_messageLabel,"setLineBreakMode:",CPLineBreakByWordWrapping);
objj_msgSend(_messageLabel,"setAlignment:",CPJustifiedTextAlignment);
_alertImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(15,12,32,32));
objj_msgSend(_6,"setWindowStyle:",nil);
}
return _6;
}
}),new objj_method(sel_getUid("setWindowStyle:"),function(_8,_9,_a){
with(_8){
_windowStyle=_a;
_alertPanel=objj_msgSend(objj_msgSend(CPPanel,"alloc"),"initWithContentRect:styleMask:",CGRectMake(0,0,300,130),_a?_a|CPTitledWindowMask:CPTitledWindowMask);
objj_msgSend(_alertPanel,"setFloatingPanel:",YES);
objj_msgSend(_alertPanel,"center");
objj_msgSend(_messageLabel,"setTextColor:",(_a==CPHUDBackgroundWindowMask)?objj_msgSend(CPColor,"whiteColor"):objj_msgSend(CPColor,"blackColor"));
var _b=objj_msgSend(_buttons,"count");
for(var i=0;i<_b;i++){
var _d=_buttons[i];
objj_msgSend(_d,"setFrameSize:",CGSizeMake(objj_msgSend(_d,"frame").size.width,(_a==CPHUDBackgroundWindowMask)?20:18));
objj_msgSend(_d,"setBezelStyle:",(_a==CPHUDBackgroundWindowMask)?CPHUDBezelStyle:CPRoundedBezelStyle);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_d);
}
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_messageLabel);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_alertImageView);
}
}),new objj_method(sel_getUid("setTitle:"),function(_e,_f,_10){
with(_e){
_windowTitle=_10;
}
}),new objj_method(sel_getUid("title"),function(_11,_12){
with(_11){
return _windowTitle;
}
}),new objj_method(sel_getUid("windowStyle"),function(_13,_14){
with(_13){
return _windowStyle;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_15,_16,_17){
with(_15){
_delegate=_17;
}
}),new objj_method(sel_getUid("delegate"),function(_18,_19){
with(_18){
return _delegate;
}
}),new objj_method(sel_getUid("setAlertStyle:"),function(_1a,_1b,_1c){
with(_1a){
_alertStyle=_1c;
}
}),new objj_method(sel_getUid("alertStyle"),function(_1d,_1e){
with(_1d){
return _alertStyle;
}
}),new objj_method(sel_getUid("setMessageText:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_messageLabel,"setStringValue:",_21);
}
}),new objj_method(sel_getUid("messageText"),function(_22,_23){
with(_22){
return objj_msgSend(_messageLabel,"stringValue");
}
}),new objj_method(sel_getUid("addButtonWithTitle:"),function(_24,_25,_26){
with(_24){
var _27=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(200-(_buttonCount*90),98,80,(_windowStyle==CPHUDBackgroundWindowMask)?20:18));
objj_msgSend(_27,"setTitle:",_26);
objj_msgSend(_27,"setTarget:",_24);
objj_msgSend(_27,"setTag:",_buttonCount);
objj_msgSend(_27,"setAction:",sel_getUid("_notifyDelegate:"));
objj_msgSend(_27,"setBezelStyle:",(_windowStyle==CPHUDBackgroundWindowMask)?CPHUDBezelStyle:CPRoundRectBezelStyle);
objj_msgSend(objj_msgSend(_alertPanel,"contentView"),"addSubview:",_27);
_buttonCount++;
objj_msgSend(_buttons,"addObject:",_27);
}
}),new objj_method(sel_getUid("runModal"),function(_28,_29){
with(_28){
var _2a;
switch(_alertStyle){
case CPWarningAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_1);
_2a="Warning";
break;
case CPInformationalAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_2);
_2a="Information";
break;
case CPCriticalAlertStyle:
objj_msgSend(_alertImageView,"setImage:",_3);
_2a="Error";
break;
}
objj_msgSend(_alertPanel,"setTitle:",_windowTitle?_windowTitle:_2a);
objj_msgSend(CPApp,"runModalForWindow:",_alertPanel);
}
}),new objj_method(sel_getUid("_notifyDelegate:"),function(_2b,_2c,_2d){
with(_2b){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("alertDidEnd:returnCode:"))){
objj_msgSend(_delegate,"alertDidEnd:returnCode:",_2b,objj_msgSend(_2d,"tag"));
}
objj_msgSend(CPApp,"abortModal");
objj_msgSend(_alertPanel,"close");
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("initialize"),function(_2e,_2f){
with(_2e){
if(_2e!=CPAlert){
return;
}
var _30=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_2e,"class"));
_1=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_30,"pathForResource:","CPAlert/dialog-warning.png"),CGSizeMake(32,32));
_2=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_30,"pathForResource:","CPAlert/dialog-information.png"),CGSizeMake(32,32));
_3=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_30,"pathForResource:","CPAlert/dialog-error.png"),CGSizeMake(32,32));
}
})]);
p;13;CPAnimation.jI;21;Foundation/CPObject.ji;23;CAMediaTimingFunction.jc;4269;
CPAnimationEaseInOut=0;
CPAnimationEaseIn=1;
CPAnimationEaseOut=2;
CPAnimationLinear=3;
ACTUAL_FRAME_RATE=0;
var _1=objj_allocateClassPair(CPObject,"CPAnimation"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_lastTime"),new objj_ivar("_duration"),new objj_ivar("_animationCurve"),new objj_ivar("_timingFunction"),new objj_ivar("_frameRate"),new objj_ivar("_progress"),new objj_ivar("_delegate"),new objj_ivar("_timer")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithDuration:animationCurve:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_progress=0;
_duration=MAX(0,_5);
_animationCurve=_6;
_frameRate=60;
}
return _3;
}
}),new objj_method(sel_getUid("setAnimationCurve:"),function(_7,_8,_9){
with(_7){
switch(_animationCurve){
case CPAnimationEaseInOut:
timingFunctionName=kCAMediaTimingFunctionEaseInEaseOut;
break;
case CPAnimationEaseIn:
timingFunctionName=kCAMediaTimingFunctionEaseIn;
break;
case CPAnimationEaseOut:
timingFunctionName=kCAMediaTimingFunctionEaseOut;
break;
case CPAnimationLinear:
timingFunctionName=kCAMediaTimingFunctionLinear;
break;
default:
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"Invalid value provided for animation curve");
break;
}
_animationCurve=_9;
_timingFunction=objj_msgSend(CAMediaTimingFunction,"functionWithName:",timingFunctionName);
}
}),new objj_method(sel_getUid("animationCurve"),function(_a,_b){
with(_a){
return _animationCurve;
}
}),new objj_method(sel_getUid("setDuration:"),function(_c,_d,_e){
with(_c){
if(_e<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"aDuration can't be negative");
}
_duration=_e;
}
}),new objj_method(sel_getUid("duration"),function(_f,_10){
with(_f){
return _duration;
}
}),new objj_method(sel_getUid("setFrameRate:"),function(_11,_12,_13){
with(_11){
if(_13<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"frameRate can't be negative");
}
_frameRate=_13;
}
}),new objj_method(sel_getUid("frameRate"),function(_14,_15){
with(_14){
return _frameRate;
}
}),new objj_method(sel_getUid("delegate"),function(_16,_17){
with(_16){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_18,_19,_1a){
with(_18){
_delegate=_1a;
}
}),new objj_method(sel_getUid("startAnimation"),function(_1b,_1c){
with(_1b){
if(_timer||_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationShouldStart"))&&!objj_msgSend(_delegate,"animationShouldStart:",_1b)){
return;
}
if(_progress===1){
_progress=0;
}
ACTUAL_FRAME_RATE=0;
_lastTime=new Date();
_timer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:",0,_1b,sel_getUid("animationTimerDidFire:"),nil,YES);
}
}),new objj_method(sel_getUid("animationTimerDidFire:"),function(_1d,_1e,_1f){
with(_1d){
var _20=new Date(),_21=MIN(1,objj_msgSend(_1d,"currentProgress")+(_20-_lastTime)/(_duration*1000));
_lastTime=_20;
++ACTUAL_FRAME_RATE;
objj_msgSend(_1d,"setCurrentProgress:",_21);
if(_21===1){
objj_msgSend(_timer,"invalidate");
_timer=nil;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationDidEnd:"))){
objj_msgSend(_delegate,"animationDidEnd:",_1d);
}
}
}
}),new objj_method(sel_getUid("stopAnimation"),function(_22,_23){
with(_22){
if(!_timer){
return;
}
objj_msgSend(_timer,"invalidate");
_timer=nil;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animationDidStop:"))){
objj_msgSend(_delegate,"animationDidStop:",_22);
}
}
}),new objj_method(sel_getUid("isAnimating"),function(_24,_25){
with(_24){
return _timer;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(_26,_27,_28){
with(_26){
_progress=_28;
}
}),new objj_method(sel_getUid("currentProgress"),function(_29,_2a){
with(_29){
return _progress;
}
}),new objj_method(sel_getUid("currentValue"),function(_2b,_2c){
with(_2b){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("animation:valueForProgress:"))){
return objj_msgSend(_delegate,"animation:valueForProgress:",_2b,_progress);
}
if(_animationCurve==CPAnimationLinear){
return _progress;
}
alert("IMPLEMENT ANIMATION CURVES!!!");
}
})]);
p;15;CPApplication.jI;21;Foundation/CPBundle.ji;17;CPCompatibility.ji;9;CPEvent.ji;8;CPMenu.ji;13;CPResponder.ji;22;CPDocumentController.jc;15225;
CPApp=nil;
CPApplicationWillFinishLaunchingNotification="CPApplicationWillFinishLaunchingNotification";
CPApplicationDidFinishLaunchingNotification="CPApplicationDidFinishLaunchingNotification";
CPRunStoppedResponse=-1000;
CPRunAbortedResponse=-1001;
CPRunContinuesResponse=-1002;
var _1=objj_allocateClassPair(CPResponder,"CPApplication"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_eventListeners"),new objj_ivar("_currentEvent"),new objj_ivar("_windows"),new objj_ivar("_keyWindow"),new objj_ivar("_mainWindow"),new objj_ivar("_mainMenu"),new objj_ivar("_documentController"),new objj_ivar("_currentSession"),new objj_ivar("_delegate"),new objj_ivar("_namedArgs"),new objj_ivar("_args"),new objj_ivar("_fullArgsString")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_3,_4){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPResponder")},"init");
if(_3){
_eventListeners=[];
_windows=[];
objj_msgSend(_windows,"addObject:",nil);
_mainMenu=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","MainMenu");
objj_msgSend(_mainMenu,"setAutoenablesItems:",NO);
var _5=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPApplication,"class")),_6=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","New",sel_getUid("newDocument:"),"N");
objj_msgSend(_6,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:","CPApplication/New.png"),CGSizeMake(16,16)));
objj_msgSend(_6,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:","CPApplication/NewHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_mainMenu,"addItem:",_6);
var _7=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Open",sel_getUid("openDocument:"),"O");
objj_msgSend(_7,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:","CPApplication/Open.png"),CGSizeMake(16,16)));
objj_msgSend(_7,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:","CPApplication/OpenHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_mainMenu,"addItem:",_7);
var _8=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Save"),_9=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),nil);
objj_msgSend(_9,"setImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:","CPApplication/Save.png"),CGSizeMake(16,16)));
objj_msgSend(_9,"setAlternateImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_5,"pathForResource:","CPApplication/SaveHighlighted.png"),CGSizeMake(16,16)));
objj_msgSend(_8,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save",sel_getUid("saveDocument:"),"S"));
objj_msgSend(_8,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Save As",sel_getUid("saveDocumentAs:"),nil));
objj_msgSend(_9,"setSubmenu:",_8);
objj_msgSend(_mainMenu,"addItem:",_9);
var _a=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Edit",nil,nil),_b=objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:","Edit"),_c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Undo",sel_getUid("undo:"),CPUndoKeyEquivalent),_d=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Redo",sel_getUid("redo:"),CPRedoKeyEquivalent);
objj_msgSend(_c,"setKeyEquivalentModifierMask:",CPUndoKeyEquivalentModifierMask);
objj_msgSend(_d,"setKeyEquivalentModifierMask:",CPRedoKeyEquivalentModifierMask);
objj_msgSend(_b,"addItem:",_c);
objj_msgSend(_b,"addItem:",_d);
objj_msgSend(_b,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Cut",sel_getUid("cut:"),"X")),objj_msgSend(_b,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Copy",sel_getUid("copy:"),"C")),objj_msgSend(_b,"addItem:",objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:","Paste",sel_getUid("paste:"),"V"));
objj_msgSend(_a,"setSubmenu:",_b);
objj_msgSend(_a,"setHidden:",YES);
objj_msgSend(_mainMenu,"addItem:",_a);
objj_msgSend(_mainMenu,"addItem:",objj_msgSend(CPMenuItem,"separatorItem"));
}
return _3;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_e,_f,_10){
with(_e){
if(_delegate==_10){
return;
}
var _11=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_delegate){
objj_msgSend(_11,"removeObserver:name:object:",_delegate,CPApplicationWillFinishLaunchingNotification,_e);
objj_msgSend(_11,"removeObserver:name:object:",_delegate,CPApplicationDidFinishLaunchingNotification,_e);
}
_delegate=_10;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationWillFinishLaunching:"))){
objj_msgSend(_11,"addObserver:selector:name:object:",_delegate,sel_getUid("applicationWillFinishLaunching:"),CPApplicationWillFinishLaunchingNotification,_e);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("applicationDidFinishLaunching:"))){
objj_msgSend(_11,"addObserver:selector:name:object:",_delegate,sel_getUid("applicationDidFinishLaunching:"),CPApplicationDidFinishLaunchingNotification,_e);
}
}
}),new objj_method(sel_getUid("delegate"),function(_12,_13){
with(_12){
return _delegate;
}
}),new objj_method(sel_getUid("finishLaunching"),function(_14,_15){
with(_14){
var _16=objj_msgSend(CPBundle,"mainBundle"),_17=objj_msgSend(_16,"objectForInfoDictionaryKey:","CPBundleDocumentTypes");
if(objj_msgSend(_17,"count")>0){
_documentController=objj_msgSend(CPDocumentController,"sharedDocumentController");
}
var _18=objj_msgSend(_16,"objectForInfoDictionaryKey:","CPApplicationDelegateClass");
if(_18){
var _19=objj_getClass(_18);
if(_19){
if(objj_msgSend(_documentController,"class")==_19){
objj_msgSend(_14,"setDelegate:",_documentController);
}else{
objj_msgSend(_14,"setDelegate:",objj_msgSend(objj_msgSend(_19,"alloc"),"init"));
}
}
}
var _1a=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_1a,"postNotificationName:object:",CPApplicationWillFinishLaunchingNotification,_14);
if(_documentController){
objj_msgSend(_documentController,"newDocument:",_14);
}
objj_msgSend(_1a,"postNotificationName:object:",CPApplicationDidFinishLaunchingNotification,_14);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
}),new objj_method(sel_getUid("run"),function(_1b,_1c){
with(_1b){
objj_msgSend(_1b,"finishLaunching");
}
}),new objj_method(sel_getUid("runModalForWindow:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_1d,"runModalSession:",objj_msgSend(_1d,"beginModalSessionForWindow:",_1f));
}
}),new objj_method(sel_getUid("stopModalWithCode:"),function(_20,_21,_22){
with(_20){
if(!_currentSession){
return;
}
_currentSession._state=_22;
_currentSession=_currentSession._previous;
objj_msgSend(_20,"_removeRunModalLoop");
}
}),new objj_method(sel_getUid("_removeRunModalLoop"),function(_23,_24){
with(_23){
var _25=_eventListeners.length;
while(_25--){
if(_eventListeners[_25]._callback===_26){
_eventListeners.splice(_25,1);
return;
}
}
}
}),new objj_method(sel_getUid("stopModal"),function(_27,_28){
with(_27){
objj_msgSend(_27,"stopModalWithCode:",CPRunStoppedResponse);
}
}),new objj_method(sel_getUid("abortModal"),function(_29,_2a){
with(_29){
objj_msgSend(_29,"stopModalWithCode:",CPRunAbortedResponse);
}
}),new objj_method(sel_getUid("beginModalSessionForWindow:"),function(_2b,_2c,_2d){
with(_2b){
return _2e(_2d,0);
}
}),new objj_method(sel_getUid("runModalSession:"),function(_2f,_30,_31){
with(_2f){
_31._previous=_currentSession;
_currentSession=_31;
var _32=_31._window;
objj_msgSend(_32,"center");
objj_msgSend(_32,"makeKeyAndOrderFront:",_2f);
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_26,CPAnyEventMask,nil,0,NO);
}
}),new objj_method(sel_getUid("modalWindow"),function(_33,_34){
with(_33){
if(!_currentSession){
return nil;
}
return _currentSession._window;
}
}),new objj_method(sel_getUid("_handleKeyEquivalent:"),function(_35,_36,_37){
with(_35){
if(objj_msgSend(_mainMenu,"performKeyEquivalent:",_37)){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("sendEvent:"),function(_38,_39,_3a){
with(_38){
if(objj_msgSend(_3a,"type")==CPKeyDown&&objj_msgSend(_3a,"modifierFlags")&(CPCommandKeyMask|CPControlKeyMask)&&objj_msgSend(objj_msgSend(_3a,"characters"),"length")>0&&objj_msgSend(_38,"_handleKeyEquivalent:",_3a)){
return;
}
if(_eventListeners.length){
if(_eventListeners[_eventListeners.length-1]._mask&(1<<objj_msgSend(_3a,"type"))){
_eventListeners.pop()._callback(_3a);
}
return;
}
objj_msgSend(objj_msgSend(_3a,"window"),"sendEvent:",_3a);
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_3b,_3c,_3d){
with(_3b){
if(objj_msgSend(_delegate,"respondsToSelector:",_3d)){
objj_msgSend(_delegate,"performSelector:",_3d);
}else{
objj_msgSendSuper({receiver:_3b,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_3d);
}
}
}),new objj_method(sel_getUid("keyWindow"),function(_3e,_3f){
with(_3e){
return _keyWindow;
}
}),new objj_method(sel_getUid("mainWindow"),function(_40,_41){
with(_40){
return _mainWindow;
}
}),new objj_method(sel_getUid("windowWithWindowNumber:"),function(_42,_43,_44){
with(_42){
return _windows[_44];
}
}),new objj_method(sel_getUid("windows"),function(_45,_46){
with(_45){
return _windows;
}
}),new objj_method(sel_getUid("mainMenu"),function(_47,_48){
with(_47){
return _mainMenu;
}
}),new objj_method(sel_getUid("setMainMenu:"),function(_49,_4a,_4b){
with(_49){
_mainMenu=_4b;
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_4c,_4d,_4e,_4f){
with(_4c){
if(!_4e){
return NO;
}
if(objj_msgSendSuper({receiver:_4c,super_class:objj_getClass("CPResponder")},"tryToPerform:with:",_4e,_4f)){
return YES;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_4e)){
objj_msgSend(_delegate,"performSelector:withObject:",_4e,_4f);
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("sendAction:to:from:"),function(_50,_51,_52,_53,_54){
with(_50){
var _55=objj_msgSend(_50,"targetForAction:to:from:",_52,_53,_54);
if(!_55){
return NO;
}
objj_msgSend(_55,"performSelector:withObject:",_52,_54);
return YES;
}
}),new objj_method(sel_getUid("targetForAction:to:from:"),function(_56,_57,_58,_59,_5a){
with(_56){
if(!_58){
return nil;
}
if(_59){
return _59;
}
return objj_msgSend(_56,"targetForAction:",_58);
}
}),new objj_method(sel_getUid("_targetForWindow:action:"),function(_5b,_5c,_5d,_5e){
with(_5b){
var _5f=objj_msgSend(_5d,"firstResponder"),_60=YES;
while(_5f){
if(objj_msgSend(_5f,"respondsToSelector:",_5e)){
return _5f;
}
if(_5f==_5d){
_60=NO;
}
_5f=objj_msgSend(_5f,"nextResponder");
}
if(_60&&objj_msgSend(_5d,"respondsToSelector:",_5e)){
return _5d;
}
var _61=objj_msgSend(_5d,"delegate");
if(objj_msgSend(_61,"respondsToSelector:",_5e)){
return _61;
}
var _62=objj_msgSend(_5d,"windowController");
if(objj_msgSend(_62,"respondsToSelector:",_5e)){
return _62;
}
var _63=objj_msgSend(_62,"document");
if(_63!=_61&&objj_msgSend(_63,"respondsToSelector:",_5e)){
return _63;
}
return nil;
}
}),new objj_method(sel_getUid("targetForAction:"),function(_64,_65,_66){
with(_64){
if(!_66){
return nil;
}
var _67=objj_msgSend(_64,"_targetForWindow:action:",objj_msgSend(_64,"keyWindow"),_66);
if(_67){
return _67;
}
_67=objj_msgSend(_64,"_targetForWindow:action:",objj_msgSend(_64,"mainWindow"),_66);
if(_67){
return _67;
}
if(objj_msgSend(_64,"respondsToSelector:",_66)){
return _64;
}
if(objj_msgSend(_delegate,"respondsToSelector:",_66)){
return _delegate;
}
if(objj_msgSend(_documentController,"respondsToSelector:",_66)){
return _documentController;
}
return nil;
}
}),new objj_method(sel_getUid("setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_68,_69,_6a,_6b,_6c,_6d,_6e){
with(_68){
_eventListeners.push(_6f(_6b,_6a));
if(_eventListeners.length==3){
objj_debug_print_backtrace();
}
}
}),new objj_method(sel_getUid("setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:"),function(_70,_71,_72,_73,_74,_75,_76,_77){
with(_70){
_eventListeners.push(_6f(_74,function(_78){
objj_msgSend(_72,_73,_78);
}));
}
}),new objj_method(sel_getUid("beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:"),function(_79,_7a,_7b,_7c,_7d,_7e,_7f){
with(_79){
objj_msgSend(_7c,"_attachSheet:modalDelegate:didEndSelector:contextInfo:",_7b,_7d,_7e,_7f);
}
}),new objj_method(sel_getUid("arguments"),function(_80,_81){
with(_80){
if(_fullArgsString!=window.location.hash){
objj_msgSend(_80,"_reloadArguments");
}
return _args;
}
}),new objj_method(sel_getUid("setArguments:"),function(_82,_83,_84){
with(_82){
if(!_84||_84.length==0){
_args=[];
window.location.hash="#";
return;
}
if(objj_msgSend(_84,"class")!=CPArray){
_84=objj_msgSend(CPArray,"arrayWithObject:",_84);
}
_args=_84;
var _85=objj_msgSend(_args,"copy");
for(var i=0,_87=_85.length;i<_87;i++){
_85[i]=encodeURIComponent(_85[i]);
}
var _88=objj_msgSend(_85,"componentsJoinedByString:","/");
window.location.hash="#"+_88;
}
}),new objj_method(sel_getUid("_reloadArguments"),function(_89,_8a){
with(_89){
_fullArgsString=window.location.hash;
var _8b=_fullArgsString.replace("#","").split("/").slice(0);
for(var i=0,_8d=_8b.length;i<_8d;i++){
_8b[i]=decodeURIComponent(_8b[i]);
}
_args=_8b;
}
}),new objj_method(sel_getUid("namedArguments"),function(_8e,_8f){
with(_8e){
return _namedArgs;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("sharedApplication"),function(_90,_91){
with(_90){
if(!CPApp){
CPApp=objj_msgSend(objj_msgSend(CPApplication,"alloc"),"init");
}
return CPApp;
}
})]);
var _2e=function(_92,_93){
return {_window:_92,_state:CPRunContinuesResponse,_previous:nil};
};
var _6f=function(_94,_95){
return {_mask:_94,_callback:_95};
};
var _26=function(_96){
objj_msgSend(CPApp,"setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:",_26,CPAnyEventMask,nil,0,NO);
var _97=objj_msgSend(_96,"window"),_98=CPApp._currentSession;
if(_97==_98._window||objj_msgSend(_97,"worksWhenModal")){
objj_msgSend(_97,"sendEvent:",_96);
}
};
CPApplicationMain=function(_99,_9a){
var _9b=objj_msgSend(CPBundle,"mainBundle"),_9c=objj_msgSend(_9b,"principalClass");
if(!_9c){
_9c=objj_msgSend(CPApplication,"class");
}
objj_msgSend(_9c,"sharedApplication");
if(!_99&&!_9a){
var _99=objj_msgSend(CPApp,"arguments"),_9d=window.location.search.substring(1).split("&");
_9a=objj_msgSend(CPDictionary,"dictionary");
if(objj_msgSend(_99,"containsObject:","debug")){
CPLogRegister(CPLogPopup);
}
for(var i=0;i<_9d.length;i++){
var _9f=_9d[i].indexOf("=");
if(_9f==-1){
objj_msgSend(_9a,"setObject:forKey:","",_9d[i]);
}else{
objj_msgSend(_9a,"setObject:forKey:",_9d[i].substring(_9f+1),_9d[i].substring(0,_9f));
}
}
}
CPApp._args=_99;
CPApp._namedArgs=_9a;
objj_msgSend(CPApp,"run");
};
p;10;CPButton.ji;21;_CPImageAndTextView.ji;12;CGGeometry.ji;11;CPControl.jc;11926;
CPScaleProportionally=0;
CPScaleToFit=1;
CPScaleNone=2;
CPNoImage=0;
CPImageOnly=1;
CPImageLeft=2;
CPImageRight=3;
CPImageBelow=4;
CPImageAbove=5;
CPImageOverlaps=6;
CPOnState=1;
CPOffState=0;
CPMixedState=-1;
CPRoundedBezelStyle=1;
CPRegularSquareBezelStyle=2;
CPThickSquareBezelStyle=3;
CPThickerSquareBezelStyle=4;
CPDisclosureBezelStyle=5;
CPShadowlessSquareBezelStyle=6;
CPCircularBezelStyle=7;
CPTexturedSquareBezelStyle=8;
CPHelpButtonBezelStyle=9;
CPSmallSquareBezelStyle=10;
CPTexturedRoundedBezelStyle=11;
CPRoundRectBezelStyle=12;
CPRecessedBezelStyle=13;
CPRoundedDisclosureBezelStyle=14;
CPHUDBezelStyle=-1;
CPMomentaryLightButton=0;
CPPushOnPushOffButton=1;
CPToggleButton=2;
CPSwitchButton=3;
CPRadioButton=4;
CPMomentaryChangeButton=5;
CPOnOffButton=6;
CPMomentaryPushInButton=7;
CPMomentaryPushButton=0;
CPMomentaryLight=7;
var _1=nil;
var _2=nil,_3={},_4={},_5="Highlighted";
var _6=objj_allocateClassPair(CPControl,"CPButton"),_7=_6.isa;
class_addIvars(_6,[new objj_ivar("_tag"),new objj_ivar("_state"),new objj_ivar("_allowsMixedState"),new objj_ivar("_title"),new objj_ivar("_alternateTitle"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_bezelInset"),new objj_ivar("_contentInset"),new objj_ivar("_bezelColor"),new objj_ivar("_bezelView"),new objj_ivar("_contentView"),new objj_ivar("_bezelStyle"),new objj_ivar("_isBordered"),new objj_ivar("_controlSize")]);
objj_registerClassPair(_6);
objj_addClassForBundle(_6,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_6,[new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPControl")},"initWithFrame:",_a);
if(_8){
objj_msgSend(_8,"setValue:forThemedAttributeName:",CPCenterTextAlignment,"alignment");
objj_msgSend(_8,"setValue:forThemedAttributeName:",CPCenterVerticalTextAlignment,"vertical-alignment");
objj_msgSend(_8,"setValue:forThemedAttributeName:",CPImageLeft,"image-position");
objj_msgSend(_8,"setValue:forThemedAttributeName:",CPScaleNone,"image-scaling");
_controlSize=CPRegularControlSize;
objj_msgSend(_8,"setBordered:",YES);
}
return _8;
}
}),new objj_method(sel_getUid("allowsMixedState"),function(_b,_c){
with(_b){
return _allowsMixedState;
}
}),new objj_method(sel_getUid("setAllowsMixedState:"),function(_d,_e,_f){
with(_d){
_allowsMixedState=_f;
}
}),new objj_method(sel_getUid("setNextState"),function(_10,_11){
with(_10){
if(_state==CPOffState){
_state=CPOnState;
}else{
_state=(_state>=CPOnState&&_allowsMixedState)?CPMixedState:CPOffState;
}
}
}),new objj_method(sel_getUid("setState:"),function(_12,_13,_14){
with(_12){
_state=_14;
}
}),new objj_method(sel_getUid("state"),function(_15,_16){
with(_15){
return _state;
}
}),new objj_method(sel_getUid("setTitle:"),function(_17,_18,_19){
with(_17){
if(_title===_19){
return;
}
_title=_19;
objj_msgSend(_17,"setNeedsLayout");
objj_msgSend(_17,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("title"),function(_1a,_1b){
with(_1a){
return _title;
}
}),new objj_method(sel_getUid("setAlternateTitle:"),function(_1c,_1d,_1e){
with(_1c){
if(_alternateTitle===_1e){
return;
}
_alternateTitle=_1e;
objj_msgSend(_1c,"setNeedsLayout");
objj_msgSend(_1c,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("alternateTitle"),function(_1f,_20){
with(_1f){
return _alternateTitle;
}
}),new objj_method(sel_getUid("setImage:"),function(_21,_22,_23){
with(_21){
if(_image===_23){
return;
}
_image=_23;
objj_msgSend(_21,"setNeedsLayout");
objj_msgSend(_21,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("image"),function(_24,_25){
with(_24){
return _image;
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_26,_27,_28){
with(_26){
if(_alternateImage===_28){
return;
}
_alternateImage=_28;
objj_msgSend(_26,"setNeedsLayout");
objj_msgSend(_26,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("alternateImage"),function(_29,_2a){
with(_29){
return _alternateImage;
}
}),new objj_method(sel_getUid("highlight:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("CPControl")},"highlight:",_2d);
objj_msgSend(_2b,"drawBezelWithHighlight:",_2d);
}
}),new objj_method(sel_getUid("setTag:"),function(_2e,_2f,_30){
with(_2e){
_tag=_30;
}
}),new objj_method(sel_getUid("tag"),function(_31,_32){
with(_31){
return _tag;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"highlight:",YES);
return objj_msgSendSuper({receiver:_33,super_class:objj_getClass("CPControl")},"startTrackingAt:",_35);
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_36,_37,_38,_39,_3a){
with(_36){
objj_msgSend(_36,"highlight:",NO);
objj_msgSendSuper({receiver:_36,super_class:objj_getClass("CPControl")},"stopTracking:at:mouseIsUp:",_38,_39,_3a);
}
}),new objj_method(sel_getUid("drawBezelWithHighlight:"),function(_3b,_3c,_3d){
with(_3b){
return;
_bezelBorderNeedsUpdate=!objj_msgSend(_3b,"window");
if(_bezelBorderNeedsUpdate){
return;
}
objj_msgSend(_3b,"setBackgroundColorWithName:",_3d?CPControlHighlightedBackgroundColor:CPControlNormalBackgroundColor);
}
}),new objj_method(sel_getUid("createBezelView"),function(_3e,_3f){
with(_3e){
var _40=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_40,"setHitTests:",NO);
return _40;
}
}),new objj_method(sel_getUid("createContentView"),function(_41,_42){
with(_41){
var _43=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
return _43;
}
}),new objj_method(sel_getUid("contentRectForBounds:"),function(_44,_45,_46){
with(_44){
var _47=objj_msgSend(_44,"currentValueForThemedAttributeName:","content-inset");
if(!_47){
return _46;
}
_46.origin.x+=_47.left;
_46.origin.y+=_47.top;
_46.size.width-=_47.left+_47.right;
_46.size.height-=_47.top+_47.bottom;
return _46;
}
}),new objj_method(sel_getUid("bezelRectForBounds:"),function(_48,_49,_4a){
with(_48){
if(!objj_msgSend(_48,"isBordered")){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _4b=objj_msgSend(_48,"currentValueForThemedAttributeName:","bezel-inset");
if(!((_4b).left===0&&(_4b).top===0&&(_4b).right===0&&(_4b).bottom===0)){
return _4a;
}
_4a.origin.x+=_4b.left;
_4a.origin.y+=_4b.top;
_4a.size.width-=_4b.left+_4b.right;
_4a.size.height-=_4b.top+_4b.bottom;
return _4a;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_4c,_4d,_4e){
with(_4c){
if(_4e==="bezel-view"){
return objj_msgSend(_4c,"bezelRectForBounds:",objj_msgSend(_4c,"bounds"));
}else{
if(_4e==="content-view"){
return objj_msgSend(_4c,"contentRectForBounds:",objj_msgSend(_4c,"bounds"));
}
}
return objj_msgSendSuper({receiver:_4c,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_4e);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_4f,_50,_51){
with(_4f){
if(_51==="bezel-view"){
var _52=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_52,"setHitTests:",NO);
return _52;
}else{
return objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
}
return objj_msgSendSuper({receiver:_4f,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_51);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_53,_54){
with(_53){
var _55=objj_msgSend(_53,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"content-view");
if(_55){
objj_msgSend(_55,"setBackgroundColor:",objj_msgSend(_53,"currentValueForThemedAttributeName:","bezel-color"));
}
var _56=objj_msgSend(_53,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","content-view",CPWindowAbove,"bezel-view");
if(_56){
objj_msgSend(_56,"setText:",((_controlState&CPControlStateHighlighted)&&_alternateTitle)?_alternateTitle:_title);
objj_msgSend(_56,"setImage:",((_controlState&CPControlStateHighlighted)&&_alternateImage)?_alternateImage:_image);
objj_msgSend(_56,"setFont:",objj_msgSend(_53,"currentValueForThemedAttributeName:","font"));
objj_msgSend(_56,"setTextColor:",objj_msgSend(_53,"currentValueForThemedAttributeName:","text-color"));
objj_msgSend(_56,"setAlignment:",objj_msgSend(_53,"currentValueForThemedAttributeName:","alignment"));
objj_msgSend(_56,"setVerticalAlignment:",objj_msgSend(_53,"currentValueForThemedAttributeName:","vertical-alignment"));
objj_msgSend(_56,"setLineBreakMode:",objj_msgSend(_53,"currentValueForThemedAttributeName:","line-break-mode"));
objj_msgSend(_56,"setTextShadowColor:",objj_msgSend(_53,"currentValueForThemedAttributeName:","text-shadow-color"));
objj_msgSend(_56,"setTextShadowOffset:",objj_msgSend(_53,"currentValueForThemedAttributeName:","text-shadow-offset"));
objj_msgSend(_56,"setImagePosition:",objj_msgSend(_53,"currentValueForThemedAttributeName:","image-position"));
objj_msgSend(_56,"setImageScaling:",objj_msgSend(_53,"currentValueForThemedAttributeName:","image-scaling"));
}
}
})]);
class_addMethods(_7,[new objj_method(sel_getUid("themedAttributes"),function(_57,_58){
with(_57){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),left:(0),bottom:(0),right:(0)},{top:(0),left:(0),bottom:(0),right:(0)},nil],["bezel-inset","content-inset","bezel-color"]);
}
})]);
var _6=objj_getClass("CPButton");
if(!_6){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPButton\""));
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("setBezelStyle:"),function(_59,_5a,_5b){
with(_59){
}
}),new objj_method(sel_getUid("bezelStyle"),function(_5c,_5d){
with(_5c){
}
}),new objj_method(sel_getUid("setBordered:"),function(_5e,_5f,_60){
with(_5e){
if((!!(_controlState&CPControlStateBordered))===_60){
return;
}
if(_60){
_controlState|=CPControlStateBordered;
}else{
_controlState&=~CPControlStateBordered;
}
objj_msgSend(_5e,"setNeedsLayout");
objj_msgSend(_5e,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("isBordered"),function(_61,_62){
with(_61){
return !!(_controlState&CPControlStateBordered);
}
})]);
var _63="CPButtonImageKey",_64="CPButtonAlternateImageKey",_65="CPButtonTitleKey",_66="CPButtonAlternateTitleKey",_67="CPButtonContentInsetKey",_68="CPButtonBezelInsetKey",_69="CPButtonBezelColorKey",_6a="CPButtonImageAndTitleViewKey",_6b="CPButtonImagePositionKey",_6c="CPButtonImageScalingKey",_6d="CPButtonIsBorderedKey",_6e="CPButtonBezelStyleKey",_6a="CPButtonImageAndTitleViewKey";
var _6=objj_getClass("CPButton");
if(!_6){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPButton\""));
}
var _7=_6.isa;
class_addMethods(_6,[new objj_method(sel_getUid("initWithCoder:"),function(_6f,_70,_71){
with(_6f){
_6f=objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("CPControl")},"initWithCoder:",_71);
if(_6f){
_controlSize=CPRegularControlSize;
objj_msgSend(_6f,"setImage:",objj_msgSend(_71,"decodeObjectForKey:",_63));
objj_msgSend(_6f,"setAlternateImage:",objj_msgSend(_71,"decodeObjectForKey:",_64));
objj_msgSend(_6f,"setTitle:",objj_msgSend(_71,"decodeObjectForKey:",_65));
objj_msgSend(_6f,"setAlternateTitle:",objj_msgSend(_71,"decodeObjectForKey:",_66));
objj_msgSend(_6f,"setNeedsLayout");
objj_msgSend(_6f,"setNeedsDisplay:",YES);
}
return _6f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_72,_73,_74){
with(_72){
objj_msgSendSuper({receiver:_72,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_74);
objj_msgSend(_74,"encodeObject:forKey:",_image,_63);
objj_msgSend(_74,"encodeObject:forKey:",_alternateImage,_64);
objj_msgSend(_74,"encodeObject:forKey:",_title,_65);
objj_msgSend(_74,"encodeObject:forKey:",_alternateTitle,_66);
objj_msgSend(_74,"encodeInt:forKey:",_bezelStyle,_6e);
}
})]);
p;13;CPButtonBar.jI;15;AppKit/CPView.jc;1602;
var _1=objj_allocateClassPair(CPControl,"CPButtonBar"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_3,_4,_5){
with(_3){
if(_5==="bezel-view"){
return objj_msgSend(_3,"bounds");
}
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_5);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_6,_7,_8){
with(_6){
if(_8==="bezel-view"){
var _9=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_9,"setHitTests:",NO);
return _9;
}
return objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_8);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_a,_b){
with(_a){
var _c=objj_msgSend(_a,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","bezel-view",CPWindowBelow,"");
if(_c){
objj_msgSend(_c,"setBackgroundColor:",objj_msgSend(_a,"currentValueForThemedAttributeName:","bezel-color"));
}
}
}),new objj_method(sel_getUid("addSubview:"),function(_d,_e,_f){
with(_d){
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPControl")},"addSubview:",_f);
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinXMargin);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themedAttributes"),function(_10,_11){
with(_10){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil],["bezel-color"]);
}
})]);
p;7;CPCib.jI;21;Foundation/CPObject.jI;28;Foundation/CPURLConnection.jI;25;Foundation/CPURLRequest.ji;20;_CPCibCustomObject.ji;22;_CPCibCustomResource.ji;18;_CPCibCustomView.ji;23;_CPCibKeyedUnarchiver.ji;18;_CPCibObjectData.ji;22;_CPCibWindowTemplate.jc;2297;
CPCibOwner="CPCibOwner",CPCibTopLevelObjects="CPCibTopLevelObjects",CPCibReplacementClasses="CPCibReplacementClasses";
var _1="CPCibObjectDataKey";
var _2=objj_allocateClassPair(CPObject,"CPCib"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_data"),new objj_ivar("_bundle")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithContentsOfURL:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_data=objj_msgSend(CPURLConnection,"sendSynchronousRequest:returningResponse:error:",objj_msgSend(CPURLRequest,"requestWithURL:",_6),nil,nil);
}
return _4;
}
}),new objj_method(sel_getUid("initWithCibNamed:bundle:"),function(_7,_8,_9,_a){
with(_7){
_7=objj_msgSend(_7,"initWithContentsOfURL:",_9);
if(_7){
_bundle=_a;
}
return _7;
}
}),new objj_method(sel_getUid("instantiateCibWithExternalNameTable:"),function(_b,_c,_d){
with(_b){
var _e=objj_msgSend(objj_msgSend(_CPCibKeyedUnarchiver,"alloc"),"initForReadingWithData:bundle:",_data,_bundle),_f=objj_msgSend(_d,"objectForKey:",CPCibReplacementClasses);
if(_f){
var key=nil,_11=objj_msgSend(_f,"keyEnumerator");
while(key=objj_msgSend(_11,"nextObject")){
objj_msgSend(_e,"setClass:forClassName:",objj_msgSend(_f,"objectForKey:",key),key);
}
}
var _12=objj_msgSend(_e,"decodeObjectForKey:",_1);
if(!_12||!objj_msgSend(_12,"isKindOfClass:",objj_msgSend(_CPCibObjectData,"class"))){
return NO;
}
var _13=objj_msgSend(_d,"objectForKey:",CPCibOwner),_14=objj_msgSend(_d,"objectForKey:",CPCibTopLevelObjects);
objj_msgSend(_12,"instantiateWithOwner:topLevelObjects:",_13,_14);
objj_msgSend(_12,"establishConnectionsWithOwner:topLevelObjects:",_13,_14);
objj_msgSend(_12,"awakeWithOwner:topLevelObjects:",_13,_14);
var _15;
if((_15=objj_msgSend(_12,"mainMenu"))!=nil){
objj_msgSend(CPApp,"setMainMenu:",_15);
objj_msgSend(CPMenu,"setMenuBarVisible:",YES);
}
objj_msgSend(_12,"displayVisibleWindows");
return YES;
}
}),new objj_method(sel_getUid("instantiateCibWithOwner:topLevelObjects:"),function(_16,_17,_18,_19){
with(_16){
objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_18,CPCibOwner,_19,CPCibTopLevelObjects);
return objj_msgSend(_16,"instantiate");
}
})]);
p;12;CPClipView.ji;8;CPView.jc;5055;
{var the_class = objj_allocateClassPair(CPView, "CPClipView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_documentView")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("setDocumentView:"), function $CPClipView__setDocumentView_(self, _cmd, aView)
{ with(self)
{
    if (_documentView == aView)
        return;
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_documentView)
    {
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPViewFrameDidChangeNotification, _documentView);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", self, CPViewBoundsDidChangeNotification, _documentView);
        objj_msgSend(_documentView, "removeFromSuperview");
    }
    _documentView = aView;
    if (_documentView)
    {
        objj_msgSend(self, "addSubview:", _documentView);
  objj_msgSend(_documentView, "setPostsFrameChangedNotifications:", YES);
  objj_msgSend(_documentView, "setPostsBoundsChangedNotifications:", YES);
  objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("viewFrameChanged:"), CPViewFrameDidChangeNotification, _documentView);
  objj_msgSend(defaultCenter, "addObserver:selector:name:object:", self, sel_getUid("viewBoundsChanged:"), CPViewBoundsDidChangeNotification, _documentView);
    }
}
}), new objj_method(sel_getUid("documentView"), function $CPClipView__documentView(self, _cmd)
{ with(self)
{
    return _documentView;
}
}), new objj_method(sel_getUid("constrainScrollPoint:"), function $CPClipView__constrainScrollPoint_(self, _cmd, aPoint)
{ with(self)
{
    var documentFrame = objj_msgSend(_documentView, "frame");
    aPoint.x = MAX(0.0, MIN(aPoint.x, MAX((documentFrame.size.width) - (_bounds.size.width), 0.0)));
    aPoint.y = MAX(0.0, MIN(aPoint.y, MAX((documentFrame.size.height) - (_bounds.size.height), 0.0)));
    return aPoint;
}
}), new objj_method(sel_getUid("setBoundsOrigin:"), function $CPClipView__setBoundsOrigin_(self, _cmd, aPoint)
{ with(self)
{
    if ((_bounds.origin.x == aPoint.x && _bounds.origin.y == aPoint.y))
        return;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "setBoundsOrigin:", aPoint);
    var superview = objj_msgSend(self, "superview");
    if(objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPScrollView, "class")))
        objj_msgSend(superview, "reflectScrolledClipView:", self);
}
}), new objj_method(sel_getUid("scrollToPoint:"), function $CPClipView__scrollToPoint_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSend(self, "setBoundsOrigin:", objj_msgSend(self, "constrainScrollPoint:", aPoint));
}
}), new objj_method(sel_getUid("viewBoundsChanged:"), function $CPClipView__viewBoundsChanged_(self, _cmd, aNotification)
{ with(self)
{
    objj_msgSend(self, "_constrainScrollPoint");
}
}), new objj_method(sel_getUid("viewFrameChanged:"), function $CPClipView__viewFrameChanged_(self, _cmd, aNotification)
{ with(self)
{
    objj_msgSend(self, "_constrainScrollPoint");
}
}), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPClipView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "resizeSubviewsWithOldSize:", aSize);
    objj_msgSend(self, "_constrainScrollPoint");
}
}), new objj_method(sel_getUid("_constrainScrollPoint"), function $CPClipView___constrainScrollPoint(self, _cmd)
{ with(self)
{
    var oldScrollPoint = objj_msgSend(self, "bounds").origin;
    objj_msgSend(self, "scrollToPoint:", oldScrollPoint);
    if (!CGPointEqualToPoint(oldScrollPoint, objj_msgSend(self, "bounds").origin))
        return;
    var superview = objj_msgSend(self, "superview");
    if (objj_msgSend(superview, "isKindOfClass:", objj_msgSend(CPScrollView, "class")))
        objj_msgSend(superview, "reflectScrolledClipView:", self);
}
})]);
}
var CPClipViewDocumentViewKey = "CPScrollViewDocumentView";
{
var the_class = objj_getClass("CPClipView")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPClipView\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPClipView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithCoder:", aCoder))
        objj_msgSend(self, "setDocumentView:", objj_msgSend(aCoder, "decodeObjectForKey:", CPClipViewDocumentViewKey));
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPClipView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", _documentView, CPClipViewDocumentViewKey);
}
})]);
}

p;18;CPCollectionView.jI;20;Foundation/CPArray.jI;19;Foundation/CPData.jI;23;Foundation/CPIndexSet.jI;28;Foundation/CPKeyedArchiver.jI;30;Foundation/CPKeyedUnarchiver.jI;15;AppKit/CPView.jc;18330;
{var the_class = objj_allocateClassPair(CPView, "CPCollectionView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_content"), new objj_ivar("_items"), new objj_ivar("_itemData"), new objj_ivar("_itemPrototype"), new objj_ivar("_itemForDragging"), new objj_ivar("_cachedItems"), new objj_ivar("_maxNumberOfRows"), new objj_ivar("_maxNumberOfColumns"), new objj_ivar("_minItemSize"), new objj_ivar("_maxItemSize"), new objj_ivar("_tileWidth"), new objj_ivar("_isSelectable"), new objj_ivar("_allowsMultipleSelection"), new objj_ivar("_selectionIndexes"), new objj_ivar("_itemSize"), new objj_ivar("_horizontalMargin"), new objj_ivar("_verticalMargin"), new objj_ivar("_numberOfRows"), new objj_ivar("_numberOfColumns"), new objj_ivar("_delegate")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPCollectionView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        _items = [];
        _content = [];
        _cachedItems = [];
        _itemSize = CGSizeMakeZero();
        _minItemSize = CGSizeMakeZero();
        _maxItemSize = CGSizeMakeZero();
        _verticalMargin = 5.0;
        _tileWidth = -1.0;
        _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
    }
    return self;
}
}), new objj_method(sel_getUid("setItemPrototype:"), function $CPCollectionView__setItemPrototype_(self, _cmd, anItem)
{ with(self)
{
    _itemData = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", anItem);
    _itemForDragging = anItem
    objj_msgSend(self, "reloadContent");
}
}), new objj_method(sel_getUid("itemPrototype"), function $CPCollectionView__itemPrototype(self, _cmd)
{ with(self)
{
    return _itemPrototype;
}
}), new objj_method(sel_getUid("newItemForRepresentedObject:"), function $CPCollectionView__newItemForRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    var item = nil;
    if (_cachedItems.length)
        item = _cachedItems.pop();
    else
        item = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", _itemData);
    objj_msgSend(item, "setRepresentedObject:", anObject);
    objj_msgSend(objj_msgSend(item, "view"), "setFrameSize:", _itemSize);
    return item;
}
}), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPCollectionView__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return YES;
}
}), new objj_method(sel_getUid("isFirstResponder"), function $CPCollectionView__isFirstResponder(self, _cmd)
{ with(self)
{
    return objj_msgSend(objj_msgSend(self, "window"), "firstResponder") == self;
}
}), new objj_method(sel_getUid("setContent:"), function $CPCollectionView__setContent_(self, _cmd, anArray)
{ with(self)
{
    if (_content == anArray)
        return;
    _content = anArray;
    objj_msgSend(self, "reloadContent");
}
}), new objj_method(sel_getUid("content"), function $CPCollectionView__content(self, _cmd)
{ with(self)
{
    return _content;
}
}), new objj_method(sel_getUid("items"), function $CPCollectionView__items(self, _cmd)
{ with(self)
{
    return _items;
}
}), new objj_method(sel_getUid("setSelectable:"), function $CPCollectionView__setSelectable_(self, _cmd, isSelectable)
{ with(self)
{
    if (_isSelectable == isSelectable)
        return;
    _isSelectable = isSelectable;
    if (!_isSelectable)
    {
        var index = CPNotFound;
        while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
            objj_msgSend(_items[index], "setSelected:", NO);
    }
}
}), new objj_method(sel_getUid("isSelected"), function $CPCollectionView__isSelected(self, _cmd)
{ with(self)
{
    return _isSelected;
}
}), new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $CPCollectionView__setAllowsMultipleSelection_(self, _cmd, shouldAllowMultipleSelection)
{ with(self)
{
    _allowsMultipleSelection = shouldAllowMultipleSelection;
}
}), new objj_method(sel_getUid("allowsMultipleSelection"), function $CPCollectionView__allowsMultipleSelection(self, _cmd)
{ with(self)
{
    return _allowsMultipleSelection;
}
}), new objj_method(sel_getUid("setSelectionIndexes:"), function $CPCollectionView__setSelectionIndexes_(self, _cmd, anIndexSet)
{ with(self)
{
    if (_selectionIndexes == anIndexSet)
        return;
    var index = CPNotFound;
    while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
        objj_msgSend(_items[index], "setSelected:", NO);
    _selectionIndexes = anIndexSet;
    var index = CPNotFound;
    while ((index = objj_msgSend(_selectionIndexes, "indexGreaterThanIndex:", index)) != CPNotFound)
        objj_msgSend(_items[index], "setSelected:", YES);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionViewDidChangeSelection:")))
        objj_msgSend(_delegate, "collectionViewDidChangeSelection:", self)
}
}), new objj_method(sel_getUid("selectionIndexes"), function $CPCollectionView__selectionIndexes(self, _cmd)
{ with(self)
{
    return _selectionIndexes;
}
}), new objj_method(sel_getUid("reloadContent"), function $CPCollectionView__reloadContent(self, _cmd)
{ with(self)
{
    var count = _items.length;
    while (count--)
    {
        objj_msgSend(objj_msgSend(_items[count], "view"), "removeFromSuperview");
        _cachedItems.push(_items[count]);
    }
    _items = [];
    if (!_itemData || !_content)
        return;
    var index = 0;
    count = _content.length;
    for (; index < count; ++index)
    {
        _items.push(objj_msgSend(self, "newItemForRepresentedObject:", _content[index]));
        objj_msgSend(self, "addSubview:", objj_msgSend(_items[index], "view"));
    }
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("tile"), function $CPCollectionView__tile(self, _cmd)
{ with(self)
{
    var width = CGRectGetWidth(objj_msgSend(self, "bounds"));
    if (!objj_msgSend(_content, "count") || width == _tileWidth)
        return;
    var itemSize = CGSizeMakeCopy(_minItemSize);
    _numberOfColumns = MAX(1.0, FLOOR(width / itemSize.width));
    if (_maxNumberOfColumns > 0)
        _numberOfColumns = MIN(_maxNumberOfColumns, _numberOfColumns);
    var remaining = width - _numberOfColumns * itemSize.width,
        itemsNeedSizeUpdate = NO;
    if (remaining > 0 && itemSize.width < _maxItemSize.width)
        itemSize.width = MIN(_maxItemSize.width, itemSize.width + FLOOR(remaining / _numberOfColumns));
    if (_maxNumberOfColumns == 1 && itemSize.width < _maxItemSize.width && itemSize.width < width)
        itemSize.width = MIN(_maxItemSize.width, width);
    if (!CGSizeEqualToSize(_itemSize, itemSize))
    {
        _itemSize = itemSize;
        itemsNeedSizeUpdate = YES;
    }
    var index = 0,
        count = _items.length;
    if (_maxNumberOfColumns > 0 && _maxNumberOfRows > 0)
        count = MIN(count, _maxNumberOfColumns * _maxNumberOfRows);
    _numberOfRows = CEIL(count / _numberOfColumns);
    _horizontalMargin = FLOOR((width - _numberOfColumns * itemSize.width) / (_numberOfColumns + 1));
    var x = _horizontalMargin,
        y = -itemSize.height;
    for (; index < count; ++index)
    {
        if (index % _numberOfColumns == 0)
        {
            x = _horizontalMargin;
            y += _verticalMargin + itemSize.height;
        }
        var view = objj_msgSend(_items[index], "view");
        objj_msgSend(view, "setFrameOrigin:", CGPointMake(x, y));
        if (itemsNeedSizeUpdate)
            objj_msgSend(view, "setFrameSize:", _itemSize);
        x += itemSize.width + _horizontalMargin;
    }
    _tileWidth = width;
    objj_msgSend(self, "setFrameSize:", CGSizeMake(width, y + itemSize.height + _verticalMargin));
    _tileWidth = -1.0;
}
}), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPCollectionView__resizeSubviewsWithOldSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("setMaxNumberOfRows:"), function $CPCollectionView__setMaxNumberOfRows_(self, _cmd, aMaxNumberOfRows)
{ with(self)
{
    if (_maxNumberOfRows == aMaxNumberOfRows)
        return;
    _maxNumberOfRows = aMaxNumberOfRows;
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("maxNumberOfRows"), function $CPCollectionView__maxNumberOfRows(self, _cmd)
{ with(self)
{
    return _maxNumberOfRows;
}
}), new objj_method(sel_getUid("setMaxNumberOfColumns:"), function $CPCollectionView__setMaxNumberOfColumns_(self, _cmd, aMaxNumberOfColumns)
{ with(self)
{
    if (_maxNumberOfColumns == aMaxNumberOfColumns)
        return;
    _maxNumberOfColumns = aMaxNumberOfColumns;
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("maxNumberOfColumns"), function $CPCollectionView__maxNumberOfColumns(self, _cmd)
{ with(self)
{
    return _maxNumberOfColumns;
}
}), new objj_method(sel_getUid("numberOfRows"), function $CPCollectionView__numberOfRows(self, _cmd)
{ with(self)
{
    return _numberOfRows;
}
}), new objj_method(sel_getUid("numberOfColumns"), function $CPCollectionView__numberOfColumns(self, _cmd)
{ with(self)
{
    return _numberOfColumns;
}
}), new objj_method(sel_getUid("setMinItemSize:"), function $CPCollectionView__setMinItemSize_(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(_minItemSize, aSize))
        return;
    _minItemSize = CGSizeMakeCopy(aSize);
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("minItemSize"), function $CPCollectionView__minItemSize(self, _cmd)
{ with(self)
{
    return _minItemSize;
}
}), new objj_method(sel_getUid("setMaxItemSize:"), function $CPCollectionView__setMaxItemSize_(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(_maxItemSize, aSize))
        return;
    _maxItemSize = CGSizeMakeCopy(aSize);
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("maxItemSize"), function $CPCollectionView__maxItemSize(self, _cmd)
{ with(self)
{
    return _maxItemSize;
}
}), new objj_method(sel_getUid("mouseUp:"), function $CPCollectionView__mouseUp_(self, _cmd, anEvent)
{ with(self)
{
    if (objj_msgSend(_selectionIndexes, "count") && objj_msgSend(anEvent, "clickCount") == 2 && objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionView:didDoubleClickOnItemAtIndex:")))
        objj_msgSend(_delegate, "collectionView:didDoubleClickOnItemAtIndex:", self, objj_msgSend(_selectionIndexes, "firstIndex"));
}
}), new objj_method(sel_getUid("mouseDown:"), function $CPCollectionView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    var location = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        row = FLOOR(location.y / (_itemSize.height + _verticalMargin)),
        column = FLOOR(location.x / (_itemSize.width + _horizontalMargin)),
        index = row * _numberOfColumns + column;
    if (index >= 0 && index < _items.length)
        objj_msgSend(self, "setSelectionIndexes:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", index));
}
}), new objj_method(sel_getUid("mouseDragged:"), function $CPCollectionView__mouseDragged_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("collectionView:dragTypesForItemsAtIndexes:")))
        return;
    if (!objj_msgSend(_selectionIndexes, "count"))
        return;
    var dragTypes = objj_msgSend(_delegate, "collectionView:dragTypesForItemsAtIndexes:", self, _selectionIndexes);
    objj_msgSend(objj_msgSend(CPPasteboard, "pasteboardWithName:", CPDragPboard), "declareTypes:owner:", dragTypes, self);
    var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
    objj_msgSend(_itemForDragging, "setRepresentedObject:", _content[objj_msgSend(_selectionIndexes, "firstIndex")]);
    var view = objj_msgSend(_itemForDragging, "view"),
        frame = objj_msgSend(view, "frame");
    objj_msgSend(view, "setFrameSize:", _itemSize);
    objj_msgSend(view, "setAlphaValue:", 0.7);
    objj_msgSend(self, "dragView:at:offset:event:pasteboard:source:slideBack:", view, objj_msgSend(objj_msgSend(_items[objj_msgSend(_selectionIndexes, "firstIndex")], "view"), "frame").origin, CGPointMakeZero(), anEvent, nil, self, YES);
}
}), new objj_method(sel_getUid("pasteboard:provideDataForType:"), function $CPCollectionView__pasteboard_provideDataForType_(self, _cmd, aPasteboard, aType)
{ with(self)
{
    objj_msgSend(aPasteboard, "setData:forType:", objj_msgSend(_delegate, "collectionView:dataForItemsAtIndexes:forType:", self, _selectionIndexes, aType), aType);
}
}), new objj_method(sel_getUid("setVerticalMargin:"), function $CPCollectionView__setVerticalMargin_(self, _cmd, aVerticalMargin)
{ with(self)
{
    if (_verticalMargin == aVerticalMargin)
        return;
    _verticalMargin = aVerticalMargin;
    objj_msgSend(self, "tile");
}
}), new objj_method(sel_getUid("verticalMargin"), function $CPCollectionView__verticalMargin(self, _cmd)
{ with(self)
{
    return _verticalMargin;
}
}), new objj_method(sel_getUid("setDelegate:"), function $CPCollectionView__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    _delegate = aDelegate;
}
}), new objj_method(sel_getUid("delegate"), function $CPCollectionView__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPCollectionViewItem"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_representedObject"), new objj_ivar("_view"), new objj_ivar("_isSelected")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("setRepresentedObject:"), function $CPCollectionViewItem__setRepresentedObject_(self, _cmd, anObject)
{ with(self)
{
    if (_representedObject == anObject)
        return;
    _representedObject = anObject;
    objj_msgSend(_view, "setRepresentedObject:", anObject);
}
}), new objj_method(sel_getUid("representedObject"), function $CPCollectionViewItem__representedObject(self, _cmd)
{ with(self)
{
    return _representedObject;
}
}), new objj_method(sel_getUid("setView:"), function $CPCollectionViewItem__setView_(self, _cmd, aView)
{ with(self)
{
    _view = aView;
}
}), new objj_method(sel_getUid("view"), function $CPCollectionViewItem__view(self, _cmd)
{ with(self)
{
    return _view;
}
}), new objj_method(sel_getUid("setSelected:"), function $CPCollectionViewItem__setSelected_(self, _cmd, shouldBeSelected)
{ with(self)
{
    if (_isSelected == shouldBeSelected)
        return;
    _isSelected = shouldBeSelected;
    objj_msgSend(_view, "setSelected:", _isSelected);
}
}), new objj_method(sel_getUid("isSelected"), function $CPCollectionViewItem__isSelected(self, _cmd)
{ with(self)
{
    return _isSelected;
}
}), new objj_method(sel_getUid("collectionView"), function $CPCollectionViewItem__collectionView(self, _cmd)
{ with(self)
{
    return objj_msgSend(_view, "superview");
}
})]);
}
var CPCollectionViewMinItemSizeKey = "CPCollectionViewMinItemSizeKey",
    CPCollectionViewMaxItemSizeKey = "CPCollectionViewMaxItemSizeKey",
    CPCollectionViewVerticalMarginKey = "CPCollectionViewVerticalMarginKey";
{
var the_class = objj_getClass("CPCollectionView")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPCollectionView\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPCollectionView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithCoder:", aCoder);
    if (self)
    {
        _items = [];
        _content = [];
        _cachedItems = [];
        _itemSize = CGSizeMakeZero();
        _minItemSize = objj_msgSend(aCoder, "decodeSizeForKey:", CPCollectionViewMinItemSizeKey);
        _maxItemSize = objj_msgSend(aCoder, "decodeSizeForKey:", CPCollectionViewMaxItemSizeKey);
        _verticalMargin = objj_msgSend(aCoder, "decodeSizeForKey:", CPCollectionViewVerticalMarginKey);
        _tileWidth = -1.0;
        _selectionIndexes = objj_msgSend(CPIndexSet, "indexSet");
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPCollectionView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeSize:forKey:", _minItemSize, CPCollectionViewMinItemSizeKey);
    objj_msgSend(aCoder, "encodeSize:forKey:", _maxItemSize, CPCollectionViewMaxItemSizeKey);
    objj_msgSend(aCoder, "encodeSize:forKey:", _verticalMargin, CPCollectionViewVerticalMarginKey);
}
})]);
}
var CPCollectionViewItemViewKey = "CPCollectionViewItemViewKey";
{
var the_class = objj_getClass("CPCollectionViewItem")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPCollectionViewItem\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("copy"), function $CPCollectionViewItem__copy(self, _cmd)
{ with(self)
{
}
})]);
}
var CPCollectionViewItemViewKey = "CPCollectionViewItemViewKey";
{
var the_class = objj_getClass("CPCollectionViewItem")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPCollectionViewItem\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPCollectionViewItem__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
        _view = objj_msgSend(aCoder, "decodeObjectForKey:", CPCollectionViewItemViewKey);
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPCollectionViewItem__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", _view, CPCollectionViewItemViewKey);
}
})]);
}

p;9;CPColor.jI;21;Foundation/CPObject.ji;9;CGColor.ji;17;CPCompatibility.ji;9;CPImage.jc;10815;
var _1=0,_2=1,_3=2,_4=3;
var _5=0,_6=1,_7=2;
var _8=objj_allocateClassPair(CPObject,"CPColor"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_components"),new objj_ivar("_patternImage"),new objj_ivar("_cssString")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("_initWithCSSString:"),function(_a,_b,_c){
with(_a){
if(_c.indexOf("rgb")==CPNotFound){
return nil;
}
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPObject")},"init");
var _d=_c.indexOf("(");
var _e=_c.substring(_d+1).split(",");
_components=[parseInt(_e[0],10)/255,parseInt(_e[1],10)/255,parseInt(_e[2],10)/255,_e[3]?parseInt(_e[3],10)/255:1];
_cssString=_c;
return _a;
}
}),new objj_method(sel_getUid("_initWithRGBA:"),function(_f,_10,_11){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPObject")},"init");
if(_f){
_components=_11;
if(!CPFeatureIsCompatible(CPCSSRGBAFeature)&&_components[3]!=1&&window.Base64&&window.CRC32){
var _12=[137,80,78,71,13,10,26,10,0,0,0,13,73,72,68,82,0,0,0,1,0,0,0,1,8,3,0,0,0,40,203,52,187,0,0,3,0,80,76,84,69,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,23,137,153,85,0,0,0,1,116,82,78,83,0,64,230,216,102,0,0,0,16,73,68,65,84,120,218,98,96,0,0,0,0,255,255,3,0,0,2,0,1,36,127,36,241,0,0,0,0,73,69,78,68,174,66,96,130,255];
var _13=41;
var _14=42;
var _15=43;
var _16=821;
var _17=809;
var _18=822;
var _19=37;
var _1a=817;
_12[_13]=Math.round(_components[0]*255);
_12[_14]=Math.round(_components[1]*255);
_12[_15]=Math.round(_components[2]*255);
_12[_16]=Math.round(_components[3]*255);
var _1b=integerToBytes(CRC32.getCRC(_12,_19,4+768),4);
var _1c=integerToBytes(CRC32.getCRC(_12,_1a,4+1),4);
for(var i=0;i<4;i++){
_12[_17+i]=_1b[i];
_12[_18+i]=_1c[i];
}
var _1e=Base64.encode(_12);
_cssString="url(\"data:image/png;base64,"+_1e+"\")";
}else{
var _1f=CPFeatureIsCompatible(CPCSSRGBAFeature)&&_components[3]!=1;
_cssString=(_1f?"rgba(":"rgb(")+parseInt(_components[0]*255)+", "+parseInt(_components[1]*255)+", "+parseInt(_components[2]*255)+(_1f?(", "+_components[3]):"")+")";
}
}
return _f;
}
}),new objj_method(sel_getUid("_initWithPatternImage:"),function(_20,_21,_22){
with(_20){
_20=objj_msgSendSuper({receiver:_20,super_class:objj_getClass("CPObject")},"init");
if(_20){
_patternImage=_22;
_cssString="url(\""+objj_msgSend(_patternImage,"filename")+"\")";
}
return _20;
}
}),new objj_method(sel_getUid("patternImage"),function(_23,_24){
with(_23){
return _patternImage;
}
}),new objj_method(sel_getUid("alphaComponent"),function(_25,_26){
with(_25){
return _components[3];
}
}),new objj_method(sel_getUid("blueComponent"),function(_27,_28){
with(_27){
return _components[2];
}
}),new objj_method(sel_getUid("greenComponent"),function(_29,_2a){
with(_29){
return _components[1];
}
}),new objj_method(sel_getUid("redComponent"),function(_2b,_2c){
with(_2b){
return _components[0];
}
}),new objj_method(sel_getUid("components"),function(_2d,_2e){
with(_2d){
return _components;
}
}),new objj_method(sel_getUid("colorWithAlphaComponent:"),function(_2f,_30,_31){
with(_2f){
var _32=_components.slice();
_32[_32.length-1]=_31;
return objj_msgSend(objj_msgSend(objj_msgSend(_2f,"class"),"alloc"),"_initWithRGBA:",_32);
}
}),new objj_method(sel_getUid("hsbComponents"),function(_33,_34){
with(_33){
var red=ROUND(_components[_1]*255),_36=ROUND(_components[_2]*255),_37=ROUND(_components[_3]*255);
var max=MAX(red,_36,_37),min=MIN(red,_36,_37),_3a=max-min;
var _3b=max/255,_3c=(max!=0)?_3a/max:0;
var hue;
if(_3c==0){
hue=0;
}else{
var rr=(max-red)/_3a;
var gr=(max-_36)/_3a;
var br=(max-_37)/_3a;
if(red==max){
hue=br-gr;
}else{
if(_36==max){
hue=2+rr-br;
}else{
hue=4+gr-rr;
}
}
hue/=6;
if(hue<0){
hue++;
}
}
return [ROUND(hue*360),ROUND(_3c*100),ROUND(_3b*100)];
}
}),new objj_method(sel_getUid("cssString"),function(_41,_42){
with(_41){
return _cssString;
}
}),new objj_method(sel_getUid("hexString"),function(_43,_44){
with(_43){
return rgbToHex(objj_msgSend(_43,"redComponent"),objj_msgSend(_43,"greenComponent"),objj_msgSend(_43,"blueComponent"));
}
}),new objj_method(sel_getUid("description"),function(_45,_46){
with(_45){
return objj_msgSendSuper({receiver:_45,super_class:objj_getClass("CPObject")},"description")+" "+objj_msgSend(_45,"cssString");
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("colorWithCalibratedRed:green:blue:alpha:"),function(_47,_48,red,_4a,_4b,_4c){
with(_47){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[red,_4a,_4b,_4c]);
}
}),new objj_method(sel_getUid("colorWithCalibratedWhite:alpha:"),function(_4d,_4e,_4f,_50){
with(_4d){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[_4f,_4f,_4f,_50]);
}
}),new objj_method(sel_getUid("colorWithHue:saturation:brightness:"),function(_51,_52,hue,_54,_55){
with(_51){
if(_54==0){
return objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",_55/100,1);
}
var f=hue%60,p=(_55*(100-_54))/10000,q=(_55*(6000-_54*f))/600000,t=(_55*(6000-_54*(60-f)))/600000,b=_55/100;
switch(FLOOR(hue/60)){
case 0:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",b,t,p,1);
case 1:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",q,b,p,1);
case 2:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",p,b,t,1);
case 3:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",p,q,b,1);
case 4:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",t,p,b,1);
case 5:
return objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",b,p,q,1);
}
}
}),new objj_method(sel_getUid("colorWithHexString:"),function(_5b,_5c,hex){
with(_5b){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",hexToRGB(hex));
}
}),new objj_method(sel_getUid("blackColor"),function(_5e,_5f){
with(_5e){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,0,1]);
}
}),new objj_method(sel_getUid("blueColor"),function(_60,_61){
with(_60){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,1,1]);
}
}),new objj_method(sel_getUid("darkGrayColor"),function(_62,_63){
with(_62){
return objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",1/3,1);
}
}),new objj_method(sel_getUid("grayColor"),function(_64,_65){
with(_64){
return objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",0.5,1);
}
}),new objj_method(sel_getUid("greenColor"),function(_66,_67){
with(_66){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,1,0,1]);
}
}),new objj_method(sel_getUid("lightGrayColor"),function(_68,_69){
with(_68){
return objj_msgSend(CPColor,"colorWithCalibratedWhite:alpha:",2/3,1);
}
}),new objj_method(sel_getUid("redColor"),function(_6a,_6b){
with(_6a){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,0,0,1]);
}
}),new objj_method(sel_getUid("whiteColor"),function(_6c,_6d){
with(_6c){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,1,1,1]);
}
}),new objj_method(sel_getUid("yellowColor"),function(_6e,_6f){
with(_6e){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[1,1,0,1]);
}
}),new objj_method(sel_getUid("shadowColor"),function(_70,_71){
with(_70){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0,0,0,1/3]);
}
}),new objj_method(sel_getUid("colorWithPatternImage:"),function(_72,_73,_74){
with(_72){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithPatternImage:",_74);
}
}),new objj_method(sel_getUid("colorWithCSSString:"),function(_75,_76,_77){
with(_75){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithCSSString:",_77);
}
})]);
var _78="CPColorComponentsKey",_79="CPColorPatternImageKey";
var _8=objj_getClass("CPColor");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColor\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_7a,_7b,_7c){
with(_7a){
if(objj_msgSend(_7c,"containsValueForKey:",_79)){
return objj_msgSend(_7a,"_initWithPatternImage:",objj_msgSend(_7c,"decodeObjectForKey:",_79));
}
return objj_msgSend(_7a,"_initWithRGBA:",objj_msgSend(_7c,"decodeObjectForKey:",_78));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_7d,_7e,_7f){
with(_7d){
if(_patternImage){
objj_msgSend(_7f,"encodeObject:forKey:",_patternImage,_79);
}else{
objj_msgSend(_7f,"encodeObject:forKey:",_components,_78);
}
}
})]);
var _80="0123456789ABCDEF";
hexToRGB=function(hex){
if(hex.length!=6){
return null;
}
hex=hex.toUpperCase();
for(var i=0;i<hex.length;i++){
if(_80.indexOf(hex.charAt(i))==-1){
return null;
}
}
var red=(_80.indexOf(hex.charAt(0))*16+_80.indexOf(hex.charAt(1)))/255;
var _84=(_80.indexOf(hex.charAt(2))*16+_80.indexOf(hex.charAt(3)))/255;
var _85=(_80.indexOf(hex.charAt(4))*16+_80.indexOf(hex.charAt(5)))/255;
return [red,_84,_85,1];
};
integerToBytes=function(_86,_87){
if(!_87){
_87=(_86==0)?1:Math.round((Math.log(_86)/Math.log(2))/8+0.5);
}
var _88=new Array(_87);
for(var i=_87-1;i>=0;i--){
_88[i]=_86&255;
_86=_86>>8;
}
return _88;
};
rgbToHex=function(r,g,b){
return byteToHex(r)+byteToHex(g)+byteToHex(b);
};
byteToHex=function(n){
if(!n||isNaN(n)){
return "00";
}
n=ROUND(MIN(255,MAX(0,256*n)));
return _80.charAt((n-n%16)/16)+_80.charAt(n%16);
};
p;14;CPColorPanel.ji;10;CPButton.ji;10;CPCookie.ji;9;CPPanel.ji;8;CPView.jc;15017;
CPColorPanelColorDidChangeNotification="CPColorPanelColorDidChangeNotification";
var _1=20,_2=32,_3=14,_4=32,_5=12;
var _6=nil,_7=[];
CPWheelColorPickerMode=1;
CPSliderColorPickerMode=2;
CPColorPickerViewWidth=265,CPColorPickerViewHeight=370;
var _8=objj_allocateClassPair(CPPanel,"CPColorPanel"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_toolbar"),new objj_ivar("_swatchView"),new objj_ivar("_previewView"),new objj_ivar("_previewLabel"),new objj_ivar("_swatchLabel"),new objj_ivar("_colorPickers"),new objj_ivar("_currentView"),new objj_ivar("_activePicker"),new objj_ivar("_color"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_mode")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(_a,_b){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPPanel")},"initWithContentRect:styleMask:",CGRectMake(500,50,218,360),(CPHUDBackgroundWindowMask|CPTitledWindowMask|CPClosableWindowMask|CPResizableWindowMask));
if(_a){
objj_msgSend(_a,"setTitle:","Color Panel");
objj_msgSend(_a,"setLevel:",CPFloatingWindowLevel);
objj_msgSend(_a,"setFloatingPanel:",YES);
objj_msgSend(_a,"setBecomesKeyOnlyIfNeeded:",YES);
objj_msgSend(_a,"setMinSize:",CGSizeMake(218,360));
objj_msgSend(_a,"setMaxSize:",CGSizeMake(327,540));
}
return _a;
}
}),new objj_method(sel_getUid("setColor:"),function(_c,_d,_e){
with(_c){
_color=_e;
objj_msgSend(_previewView,"setBackgroundColor:",_color);
objj_msgSend(CPApp,"sendAction:to:from:",sel_getUid("changeColor:"),nil,_c);
if(_target&&_action){
objj_msgSend(CPApp,"sendAction:to:from:",_action,_target,_c);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPColorPanelColorDidChangeNotification,_c);
objj_msgSend(_activePicker,"setColor:",_color);
}
}),new objj_method(sel_getUid("setColor:updatePicker:"),function(_f,_10,_11,_12){
with(_f){
objj_msgSend(_f,"setColor:",_11);
if(_12){
objj_msgSend(_activePicker,"setColor:",_color);
}
}
}),new objj_method(sel_getUid("color"),function(_13,_14){
with(_13){
return _color;
}
}),new objj_method(sel_getUid("setTarget:"),function(_15,_16,_17){
with(_15){
_target=_17;
}
}),new objj_method(sel_getUid("target"),function(_18,_19){
with(_18){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1a,_1b,_1c){
with(_1a){
_action=_1c;
}
}),new objj_method(sel_getUid("action"),function(_1d,_1e){
with(_1d){
return _action;
}
}),new objj_method(sel_getUid("setMode:"),function(_1f,_20,_21){
with(_1f){
_mode=_21;
}
}),new objj_method(sel_getUid("_setPicker:"),function(_22,_23,_24){
with(_22){
var _25=_colorPickers[objj_msgSend(_24,"tag")],_26=objj_msgSend(_25,"provideNewView:",NO);
if(!_26){
_26=objj_msgSend(_25,"provideNewView:",YES);
}
if(_26==_currentView){
return;
}
if(_currentView){
objj_msgSend(_26,"setFrame:",objj_msgSend(_currentView,"frame"));
}else{
var _27=(_2+10+_1+5+_3+10),_28=objj_msgSend(objj_msgSend(_22,"contentView"),"bounds");
objj_msgSend(_26,"setFrameSize:",CPSizeMake(_28.size.width-10,_28.size.height-_27));
objj_msgSend(_26,"setFrameOrigin:",CPPointMake(5,_27));
}
objj_msgSend(_currentView,"removeFromSuperview");
objj_msgSend(objj_msgSend(_22,"contentView"),"addSubview:",_26);
_currentView=_26;
_activePicker=_25;
objj_msgSend(_25,"setColor:",objj_msgSend(_22,"color"));
}
}),new objj_method(sel_getUid("mode"),function(_29,_2a){
with(_29){
return _mode;
}
}),new objj_method(sel_getUid("orderFront:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_2b,"_loadContentsIfNecessary");
objj_msgSendSuper({receiver:_2b,super_class:objj_getClass("CPPanel")},"orderFront:",_2d);
}
}),new objj_method(sel_getUid("_loadContentsIfNecessary"),function(_2e,_2f){
with(_2e){
if(_toolbar){
return;
}
_colorPickers=[];
var _30=objj_msgSend(_7,"count");
for(var i=0;i<_30;i++){
var _32=_7[i],_33=objj_msgSend(objj_msgSend(_32,"alloc"),"initWithPickerMask:colorPanel:",0,_2e);
_colorPickers.push(_33);
}
var _34=objj_msgSend(_2e,"contentView"),_35=objj_msgSend(_34,"bounds");
_toolbar=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,CGRectGetWidth(_35),_2));
objj_msgSend(_toolbar,"setAutoresizingMask:",CPViewWidthSizable);
var _36=_30*_4+(_30-1)*_5,_37=(CGRectGetWidth(_35)-_36)/2,_38=nil;
for(var i=0;i<_30;i++){
var _39=objj_msgSend(_colorPickers[i],"provideNewButtonImage"),_3a=objj_msgSend(_colorPickers[i],"provideNewAlternateButtonImage"),_3b=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(_37+i*(_4+_5),0,_4,_4));
objj_msgSend(_3b,"setTag:",i);
objj_msgSend(_3b,"setTarget:",_2e);
objj_msgSend(_3b,"setAction:",sel_getUid("_setPicker:"));
objj_msgSend(_3b,"setBordered:",NO);
objj_msgSend(_3b,"setAutoresizingMask:",CPViewMinXMargin|CPViewMaxXMargin);
objj_msgSend(_3b,"setImage:",_39);
objj_msgSend(_3b,"setAlternateImage:",_3a);
objj_msgSend(_toolbar,"addSubview:",_3b);
if(!_38){
_38=_3b;
}
}
var _3c=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(76,_2+10,CGRectGetWidth(_35)-86,_1));
_previewView=objj_msgSend(objj_msgSend(_CPColorPanelPreview,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3c,"bounds"),2,2));
objj_msgSend(_previewView,"setColorPanel:",_2e);
objj_msgSend(_previewView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3c,"setBackgroundColor:",objj_msgSend(CPColor,"grayColor"));
objj_msgSend(_3c,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3c,"addSubview:",_previewView);
_previewLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+14,60,15));
objj_msgSend(_previewLabel,"setStringValue:","Preview:");
objj_msgSend(_previewLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_previewLabel,"setAlignment:",CPRightTextAlignment);
var _3d=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(76,_2+10+_1+5,CGRectGetWidth(_35)-86,_3+2));
objj_msgSend(_3d,"setBackgroundColor:",objj_msgSend(CPColor,"grayColor"));
objj_msgSend(_3d,"setAutoresizingMask:",CPViewWidthSizable);
_swatchView=objj_msgSend(objj_msgSend(_CPColorPanelSwatches,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_3d,"bounds"),1,1));
objj_msgSend(_swatchView,"setColorPanel:",_2e);
objj_msgSend(_swatchView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_3d,"addSubview:",_swatchView);
_swatchLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(10,_2+8+_1+5,60,15));
objj_msgSend(_swatchLabel,"setStringValue:","Swatches:");
objj_msgSend(_swatchLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_swatchLabel,"setAlignment:",CPRightTextAlignment);
objj_msgSend(_34,"addSubview:",_toolbar);
objj_msgSend(_34,"addSubview:",_3c);
objj_msgSend(_34,"addSubview:",_previewLabel);
objj_msgSend(_34,"addSubview:",_3d);
objj_msgSend(_34,"addSubview:",_swatchLabel);
_target=nil;
_action=nil;
_activePicker=nil;
objj_msgSend(_previewView,"setBackgroundColor:",_color?_color:objj_msgSend(CPColor,"whiteColor"));
if(_38){
objj_msgSend(_2e,"_setPicker:",_38);
}
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("provideColorPickerClass:"),function(_3e,_3f,_40){
with(_3e){
_7.push(_40);
}
}),new objj_method(sel_getUid("sharedColorPanel"),function(_41,_42){
with(_41){
if(!_6){
_6=objj_msgSend(objj_msgSend(CPColorPanel,"alloc"),"init");
}
return _6;
}
}),new objj_method(sel_getUid("setPickerMode:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(CPColorPanel,"sharedColorPanel");
objj_msgSend(_46,"setMode:",_45);
}
})]);
CPColorDragType="CPColorDragType";
var _47="CPColorPanelSwatchesCookie";
var _8=objj_allocateClassPair(CPView,"_CPColorPanelSwatches"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_swatches"),new objj_ivar("_dragColor"),new objj_ivar("_colorPanel"),new objj_ivar("_swatchCookie")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_48,_49,_4a){
with(_48){
_48=objj_msgSendSuper({receiver:_48,super_class:objj_getClass("CPView")},"initWithFrame:",_4a);
objj_msgSend(_48,"setBackgroundColor:",objj_msgSend(CPColor,"grayColor"));
objj_msgSend(_48,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",CPColorDragType));
var _4b=objj_msgSend(CPColor,"whiteColor");
_swatchCookie=objj_msgSend(objj_msgSend(CPCookie,"alloc"),"initWithName:",_47);
var _4c=objj_msgSend(_48,"startingColorList");
_swatches=[];
for(var i=0;i<50;i++){
var _4e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(13*i+1,1,12,12)),_4f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_4e,"bounds"),1,1));
objj_msgSend(_4e,"setBackgroundColor:",_4b);
objj_msgSend(_4f,"setBackgroundColor:",(i<_4c.length)?_4c[i]:_4b);
objj_msgSend(_4e,"addSubview:",_4f);
objj_msgSend(_48,"addSubview:",_4e);
_swatches.push(_4e);
}
return _48;
}
}),new objj_method(sel_getUid("isOpaque"),function(_50,_51){
with(_50){
return YES;
}
}),new objj_method(sel_getUid("startingColorList"),function(_52,_53){
with(_52){
var _54=objj_msgSend(_swatchCookie,"value");
if(_54==""){
return [objj_msgSend(CPColor,"blackColor"),objj_msgSend(CPColor,"darkGrayColor"),objj_msgSend(CPColor,"grayColor"),objj_msgSend(CPColor,"lightGrayColor"),objj_msgSend(CPColor,"whiteColor"),objj_msgSend(CPColor,"redColor"),objj_msgSend(CPColor,"greenColor"),objj_msgSend(CPColor,"blueColor"),objj_msgSend(CPColor,"yellowColor")];
}
var _54=eval(_54);
var _55=[];
for(var i=0;i<_54.length;i++){
_55.push(objj_msgSend(CPColor,"colorWithHexString:",_54[i]));
}
return _55;
}
}),new objj_method(sel_getUid("saveColorList"),function(_57,_58){
with(_57){
var _59=[];
for(var i=0;i<_swatches.length;i++){
_59.push(objj_msgSend(objj_msgSend(objj_msgSend(_swatches[i],"subviews")[0],"backgroundColor"),"hexString"));
}
var _5b=new Date();
_5b.setYear(2019);
objj_msgSend(_swatchCookie,"setValue:expires:domain:",CPJSObjectCreateJSON(_59),_5b,nil);
}
}),new objj_method(sel_getUid("setColorPanel:"),function(_5c,_5d,_5e){
with(_5c){
_colorPanel=_5e;
}
}),new objj_method(sel_getUid("colorPanel"),function(_5f,_60){
with(_5f){
return _colorPanel;
}
}),new objj_method(sel_getUid("colorAtIndex:"),function(_61,_62,_63){
with(_61){
return objj_msgSend(objj_msgSend(_swatches[_63],"subviews")[0],"backgroundColor");
}
}),new objj_method(sel_getUid("setColor:atIndex:"),function(_64,_65,_66,_67){
with(_64){
objj_msgSend(objj_msgSend(_swatches[_67],"subviews")[0],"setBackgroundColor:",_66);
objj_msgSend(_64,"saveColorList");
}
}),new objj_method(sel_getUid("mouseUp:"),function(_68,_69,_6a){
with(_68){
var _6b=objj_msgSend(_68,"convertPoint:fromView:",objj_msgSend(_6a,"locationInWindow"),nil);
if(_6b.x>objj_msgSend(_68,"bounds").size.width-1||_6b.x<1){
return NO;
}
objj_msgSend(_colorPanel,"setColor:updatePicker:",objj_msgSend(_68,"colorAtIndex:",FLOOR(_6b.x/13)),YES);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_6c,_6d,_6e){
with(_6c){
var _6f=objj_msgSend(_6c,"convertPoint:fromView:",objj_msgSend(_6e,"locationInWindow"),nil);
if(_6f.x>objj_msgSend(_6c,"bounds").size.width-1||_6f.x<1){
return NO;
}
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",CPColorDragType),_6c);
var _70=_swatches[FLOOR(_6f.x/13)];
_dragColor=objj_msgSend(objj_msgSend(_70,"subviews")[0],"backgroundColor");
var _71=CPRectCreateCopy(objj_msgSend(_70,"bounds"));
var _72=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_71);
dragFillView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(_71,1,1));
objj_msgSend(_72,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(dragFillView,"setBackgroundColor:",_dragColor);
objj_msgSend(_72,"addSubview:",dragFillView);
objj_msgSend(_6c,"dragView:at:offset:event:pasteboard:source:slideBack:",_72,CPPointMake(_6f.x-_71.size.width/2,_6f.y-_71.size.height/2),CPPointMake(0,0),_6e,nil,_6c,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_73,_74,_75,_76){
with(_73){
if(_76==CPColorDragType){
objj_msgSend(_75,"setData:forType:",_dragColor,_76);
}
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_77,_78,_79){
with(_77){
var _7a=objj_msgSend(_77,"convertPoint:fromView:",objj_msgSend(_79,"draggingLocation"),nil),_7b=objj_msgSend(_79,"draggingPasteboard"),_7c=nil;
if(!objj_msgSend(_7b,"availableTypeFromArray:",[CPColorDragType])||_7a.x>objj_msgSend(_77,"bounds").size.width-1||_7a.x<1){
return NO;
}
objj_msgSend(_77,"setColor:atIndex:",objj_msgSend(_7b,"dataForType:",CPColorDragType),FLOOR(_7a.x/13));
}
})]);
var _8=objj_allocateClassPair(CPView,"_CPColorPanelPreview"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_colorPanel")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_7d,_7e,_7f){
with(_7d){
_7d=objj_msgSendSuper({receiver:_7d,super_class:objj_getClass("CPView")},"initWithFrame:",_7f);
objj_msgSend(_7d,"registerForDraggedTypes:",objj_msgSend(CPArray,"arrayWithObjects:",CPColorDragType));
return _7d;
}
}),new objj_method(sel_getUid("setColorPanel:"),function(_80,_81,_82){
with(_80){
_colorPanel=_82;
}
}),new objj_method(sel_getUid("colorPanel"),function(_83,_84){
with(_83){
return _colorPanel;
}
}),new objj_method(sel_getUid("performDragOperation:"),function(_85,_86,_87){
with(_85){
var _88=objj_msgSend(_87,"draggingPasteboard");
if(!objj_msgSend(_88,"availableTypeFromArray:",[CPColorDragType])){
return NO;
}
var _89=objj_msgSend(_88,"dataForType:",CPColorDragType);
objj_msgSend(_colorPanel,"setColor:updatePicker:",_89,YES);
}
}),new objj_method(sel_getUid("isOpaque"),function(_8a,_8b){
with(_8a){
return YES;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_8c,_8d,_8e){
with(_8c){
var _8f=objj_msgSend(_8c,"convertPoint:fromView:",objj_msgSend(_8e,"locationInWindow"),nil);
objj_msgSend(objj_msgSend(CPPasteboard,"pasteboardWithName:",CPDragPboard),"declareTypes:owner:",objj_msgSend(CPArray,"arrayWithObject:",CPColorDragType),_8c);
var _90=CPRectMake(0,0,15,15);
var _91=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_90);
dragFillView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(_90,1,1));
objj_msgSend(_91,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(dragFillView,"setBackgroundColor:",objj_msgSend(_8c,"backgroundColor"));
objj_msgSend(_91,"addSubview:",dragFillView);
objj_msgSend(_8c,"dragView:at:offset:event:pasteboard:source:slideBack:",_91,CPPointMake(_8f.x-_90.size.width/2,_8f.y-_90.size.height/2),CPPointMake(0,0),_8e,nil,_8c,YES);
}
}),new objj_method(sel_getUid("pasteboard:provideDataForType:"),function(_92,_93,_94,_95){
with(_92){
if(_95==CPColorDragType){
objj_msgSend(_94,"setData:forType:",objj_msgSend(_92,"backgroundColor"),_95);
}
}
})]);
i;15;CPColorPicker.ji;21;CPSliderColorPicker.jc;155;
objj_msgSend(CPColorPanel,"provideColorPickerClass:",CPColorWheelColorPicker);
objj_msgSend(CPColorPanel,"provideColorPickerClass:",CPSliderColorPicker);
p;15;CPColorPicker.jI;21;Foundation/CPObject.ji;14;CPColorPanel.jc;10371;
var _1=objj_allocateClassPair(CPObject,"CPColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_panel"),new objj_ivar("_mask")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_3,_4,_5,_6){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
_panel=_6;
_mask=_5;
return _3;
}
}),new objj_method(sel_getUid("colorPanel"),function(_7,_8){
with(_7){
return _panel;
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_9,_a){
with(_9){
return nil;
}
}),new objj_method(sel_getUid("setMode:"),function(_b,_c,_d){
with(_b){
return;
}
}),new objj_method(sel_getUid("setColor:"),function(_e,_f,_10){
with(_e){
return;
}
})]);
var _1=objj_allocateClassPair(CPColorPicker,"CPColorWheelColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_pickerView"),new objj_ivar("_brightnessSlider"),new objj_ivar("_brightnessBarImage"),new objj_ivar("_hueSaturationView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_11,_12,_13,_14){
with(_11){
return objj_msgSendSuper({receiver:_11,super_class:objj_getClass("CPColorPicker")},"initWithPickerMask:colorPanel:",_13,_14);
}
}),new objj_method(sel_getUid("initView"),function(_15,_16){
with(_15){
aFrame=CPRectMake(0,0,CPColorPickerViewWidth,CPColorPickerViewHeight);
_pickerView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",aFrame);
objj_msgSend(_pickerView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _17=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","brightness_bar.png");
_brightnessBarImage=new Image();
_brightnessBarImage.src=_17;
_brightnessBarImage.style.width="100%";
_brightnessBarImage.style.height="100%";
_brightnessBarImage.style.position="absolute";
_brightnessBarImage.style.top="0px";
_brightnessBarImage.style.left="0px";
var _18=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(0,(aFrame.size.height-34),aFrame.size.width,15));
objj_msgSend(_18,"setAutoresizingMask:",(CPViewWidthSizable|CPViewMinYMargin));
_18._DOMElement.appendChild(_brightnessBarImage);
_brightnessSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(0,aFrame.size.height-22,aFrame.size.width,12));
objj_msgSend(_brightnessSlider,"setMaxValue:",100);
objj_msgSend(_brightnessSlider,"setMinValue:",0);
objj_msgSend(_brightnessSlider,"setFloatValue:",100);
objj_msgSend(_brightnessSlider,"setTarget:",_15);
objj_msgSend(_brightnessSlider,"setAction:",sel_getUid("brightnessSliderDidChange:"));
objj_msgSend(_brightnessSlider,"setAutoresizingMask:",(CPViewWidthSizable|CPViewMinYMargin));
_hueSaturationView=objj_msgSend(objj_msgSend(__CPColorWheel,"alloc"),"initWithFrame:",CPRectMake(0,0,aFrame.size.width,aFrame.size.height-38));
objj_msgSend(_hueSaturationView,"setDelegate:",_15);
objj_msgSend(_hueSaturationView,"setAutoresizingMask:",(CPViewWidthSizable|CPViewHeightSizable));
objj_msgSend(_pickerView,"addSubview:",_18);
objj_msgSend(_pickerView,"addSubview:",_hueSaturationView);
objj_msgSend(_pickerView,"addSubview:",_brightnessSlider);
}
}),new objj_method(sel_getUid("brightnessSliderDidChange:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_19,"updateColor");
}
}),new objj_method(sel_getUid("colorWheelDidChange:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"updateColor");
}
}),new objj_method(sel_getUid("updateColor"),function(_1f,_20){
with(_1f){
var hue=objj_msgSend(_hueSaturationView,"angle"),_22=objj_msgSend(_hueSaturationView,"distance"),_23=objj_msgSend(_brightnessSlider,"floatValue");
objj_msgSend(_hueSaturationView,"setWheelBrightness:",_23/100);
_brightnessBarImage.style.backgroundColor="#"+objj_msgSend(objj_msgSend(CPColor,"colorWithHue:saturation:brightness:",hue,_22,100),"hexString");
objj_msgSend(objj_msgSend(_1f,"colorPanel"),"setColor:",objj_msgSend(CPColor,"colorWithHue:saturation:brightness:",hue,_22,_23));
}
}),new objj_method(sel_getUid("supportsMode:"),function(_24,_25,_26){
with(_24){
return (_26==CPWheelColorPickerMode)?YES:NO;
}
}),new objj_method(sel_getUid("currentMode"),function(_27,_28){
with(_27){
return CPWheelColorPickerMode;
}
}),new objj_method(sel_getUid("provideNewView:"),function(_29,_2a,_2b){
with(_29){
if(_2b){
objj_msgSend(_29,"initView");
}
return _pickerView;
}
}),new objj_method(sel_getUid("setColor:"),function(_2c,_2d,_2e){
with(_2c){
var hsb=objj_msgSend(_2e,"hsbComponents");
objj_msgSend(_hueSaturationView,"setPositionToColor:",_2e);
objj_msgSend(_brightnessSlider,"setFloatValue:",hsb[2]);
objj_msgSend(_hueSaturationView,"setWheelBrightness:",hsb[2]/100);
_brightnessBarImage.style.backgroundColor="#"+objj_msgSend(objj_msgSend(CPColor,"colorWithHue:saturation:brightness:",hsb[0],hsb[1],100),"hexString");
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_30,_31){
with(_30){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel_button.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("provideNewAlternateButtonImage"),function(_32,_33){
with(_32){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel_button_h.png"),CGSizeMake(32,32));
}
})]);
var _1=objj_allocateClassPair(CPView,"__CPColorWheel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_wheelImage"),new objj_ivar("_blackWheelImage"),new objj_ivar("_crosshair"),new objj_ivar("_delegate"),new objj_ivar("_angle"),new objj_ivar("_distance"),new objj_ivar("_radius")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_34,_35,_36){
with(_34){
_34=objj_msgSendSuper({receiver:_34,super_class:objj_getClass("CPView")},"initWithFrame:",_36);
var _37=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel.png");
_wheelImage=new Image();
_wheelImage.src=_37;
_wheelImage.style.position="absolute";
_37=objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","wheel_black.png");
_blackWheelImage=new Image();
_blackWheelImage.src=_37;
_blackWheelImage.style.opacity="0";
_blackWheelImage.style.filter="alpha(opacity=0)";
_blackWheelImage.style.position="absolute";
_DOMElement.appendChild(_wheelImage);
_DOMElement.appendChild(_blackWheelImage);
objj_msgSend(_34,"setWheelSize:",_36.size);
_crosshair=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(_radius-2,_radius-2,4,4));
objj_msgSend(_crosshair,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
var _38=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectInset(objj_msgSend(_crosshair,"bounds"),1,1));
objj_msgSend(_38,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_crosshair,"addSubview:",_38);
objj_msgSend(_34,"addSubview:",_crosshair);
return _34;
}
}),new objj_method(sel_getUid("setWheelBrightness:"),function(_39,_3a,_3b){
with(_39){
_blackWheelImage.style.opacity=1-_3b;
_blackWheelImage.style.filter="alpha(opacity="+(1-_3b)*100+")";
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSendSuper({receiver:_3c,super_class:objj_getClass("CPView")},"setFrameSize:",_3e);
objj_msgSend(_3c,"setWheelSize:",_3e);
}
}),new objj_method(sel_getUid("setWheelSize:"),function(_3f,_40,_41){
with(_3f){
var min=MIN(_41.width,_41.height);
_blackWheelImage.style.width=min;
_blackWheelImage.style.height=min;
_blackWheelImage.width=min;
_blackWheelImage.height=min;
_blackWheelImage.style.top=(_41.height-min)/2+"px";
_blackWheelImage.style.left=(_41.width-min)/2+"px";
_wheelImage.style.width=min;
_wheelImage.style.height=min;
_wheelImage.width=min;
_wheelImage.height=min;
_wheelImage.style.top=(_41.height-min)/2+"px";
_wheelImage.style.left=(_41.width-min)/2+"px";
_radius=min/2;
objj_msgSend(_3f,"setAngle:distance:",objj_msgSend(_3f,"degreesToRadians:",_angle),(_distance/100)*_radius);
}
}),new objj_method(sel_getUid("setDelegate:"),function(_43,_44,_45){
with(_43){
_delegate=_45;
}
}),new objj_method(sel_getUid("delegate"),function(_46,_47){
with(_46){
return _delegate;
}
}),new objj_method(sel_getUid("angle"),function(_48,_49){
with(_48){
return _angle;
}
}),new objj_method(sel_getUid("distance"),function(_4a,_4b){
with(_4a){
return _distance;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_4c,_4d,_4e){
with(_4c){
objj_msgSend(_4c,"reposition:",_4e);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_4f,_50,_51){
with(_4f){
objj_msgSend(_4f,"reposition:",_51);
}
}),new objj_method(sel_getUid("reposition:"),function(_52,_53,_54){
with(_52){
var _55=objj_msgSend(_52,"bounds"),_56=objj_msgSend(_52,"convertPoint:fromView:",objj_msgSend(_54,"locationInWindow"),nil);
var _57=CGRectGetMidX(_55);
var _58=CGRectGetMidY(_55);
var _59=MIN(SQRT((_56.x-_57)*(_56.x-_57)+(_56.y-_58)*(_56.y-_58)),_radius);
var _5a=ATAN2(_56.y-_58,_56.x-_57);
objj_msgSend(_52,"setAngle:distance:",_5a,_59);
if(_delegate){
objj_msgSend(_delegate,"colorWheelDidChange:",_52);
}
}
}),new objj_method(sel_getUid("setAngle:distance:"),function(_5b,_5c,_5d,_5e){
with(_5b){
var _5f=objj_msgSend(_5b,"bounds");
var _60=CGRectGetMidX(_5f);
var _61=CGRectGetMidY(_5f);
_angle=objj_msgSend(_5b,"radiansToDegrees:",_5d);
_distance=(_5e/_radius)*100;
objj_msgSend(_crosshair,"setFrameOrigin:",CPPointMake(COS(_5d)*_5e+_60-2,SIN(_5d)*_5e+_61-2));
}
}),new objj_method(sel_getUid("setPositionToColor:"),function(_62,_63,_64){
with(_62){
var hsb=objj_msgSend(_64,"hsbComponents"),_66=objj_msgSend(_62,"bounds");
var _67=objj_msgSend(_62,"degreesToRadians:",hsb[0]),_68=(hsb[1]/100)*_radius;
objj_msgSend(_62,"setAngle:distance:",_67,_68);
}
}),new objj_method(sel_getUid("radiansToDegrees:"),function(_69,_6a,_6b){
with(_69){
return ((-_6b/PI)*180+360)%360;
}
}),new objj_method(sel_getUid("degreesToRadians:"),function(_6c,_6d,_6e){
with(_6c){
return -(((_6e-360)/180)*PI);
}
})]);
p;13;CPColorWell.jI;21;Foundation/CPString.ji;8;CPView.ji;9;CPColor.ji;14;CPColorPanel.jc;5916;
var _1="_CPColorWellDidBecomeExclusiveNotification";
var _2=objj_allocateClassPair(CPControl,"CPColorWell"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_active"),new objj_ivar("_bordered"),new objj_ivar("_color"),new objj_ivar("_wellView")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPControl")},"initWithFrame:",_6);
if(_4){
_active=NO;
_bordered=YES;
_color=objj_msgSend(CPColor,"whiteColor");
objj_msgSend(_4,"drawBezelWithHighlight:",NO);
objj_msgSend(_4,"drawWellInside:",CGRectInset(objj_msgSend(_4,"bounds"),3,3));
objj_msgSend(_4,"_registerForNotifications");
}
return _4;
}
}),new objj_method(sel_getUid("_registerForNotifications"),function(_7,_8){
with(_7){
var _9=objj_msgSend(CPNotificationCenter,"defaultCenter");
objj_msgSend(_9,"addObserver:selector:name:object:",_7,sel_getUid("colorWellDidBecomeExclusive:"),_1,nil);
objj_msgSend(_9,"addObserver:selector:name:object:",_7,sel_getUid("colorPanelWillClose:"),CPWindowWillCloseNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
}),new objj_method(sel_getUid("isBordered"),function(_a,_b){
with(_a){
return _bordered;
}
}),new objj_method(sel_getUid("setBordered:"),function(_c,_d,_e){
with(_c){
if(_bordered==_e){
return;
}
_bordered=_e;
objj_msgSend(_c,"drawWellInside:",CGRectInset(objj_msgSend(_c,"bounds"),3,3));
}
}),new objj_method(sel_getUid("color"),function(_f,_10){
with(_f){
return _color;
}
}),new objj_method(sel_getUid("setColor:"),function(_11,_12,_13){
with(_11){
if(_color==_13){
return;
}
_color=_13;
objj_msgSend(_11,"drawWellInside:",CGRectInset(objj_msgSend(_11,"bounds"),3,3));
}
}),new objj_method(sel_getUid("takeColorFrom:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_14,"setColor:",objj_msgSend(_16,"color"));
}
}),new objj_method(sel_getUid("activate:"),function(_17,_18,_19){
with(_17){
if(_19){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",_1,_17);
}
if(objj_msgSend(_17,"isActive")){
return;
}
_active=YES;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_17,sel_getUid("colorPanelDidChangeColor:"),CPColorPanelColorDidChangeNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
}),new objj_method(sel_getUid("deactivate"),function(_1a,_1b){
with(_1a){
if(!objj_msgSend(_1a,"isActive")){
return;
}
_active=NO;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_1a,CPColorPanelColorDidChangeNotification,objj_msgSend(CPColorPanel,"sharedColorPanel"));
}
}),new objj_method(sel_getUid("isActive"),function(_1c,_1d){
with(_1c){
return _active;
}
}),new objj_method(sel_getUid("drawBezelWithHighlight:"),function(_1e,_1f,_20){
with(_1e){
}
}),new objj_method(sel_getUid("drawWellInside:"),function(_21,_22,_23){
with(_21){
if(!_wellView){
_wellView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_23);
objj_msgSend(_wellView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_21,"addSubview:",_wellView);
}else{
objj_msgSend(_wellView,"setFrame:",_23);
}
objj_msgSend(_wellView,"setBackgroundColor:",_color);
}
}),new objj_method(sel_getUid("colorPanelDidChangeColor:"),function(_24,_25,_26){
with(_24){
objj_msgSend(_24,"takeColorFrom:",objj_msgSend(_26,"object"));
objj_msgSend(_24,"sendAction:to:",objj_msgSend(_24,"action"),objj_msgSend(_24,"target"));
}
}),new objj_method(sel_getUid("colorWellDidBecomeExclusive:"),function(_27,_28,_29){
with(_27){
if(_27!=objj_msgSend(_29,"object")){
objj_msgSend(_27,"deactivate");
}
}
}),new objj_method(sel_getUid("colorPanelWillClose:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2a,"deactivate");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(_2d,"drawBezelWithHighlight:",YES);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_30,_31,_32){
with(_30){
objj_msgSend(_30,"drawBezelWithHighlight:",CGRectContainsPoint(objj_msgSend(_30,"bounds"),objj_msgSend(_30,"convertPoint:fromView:",objj_msgSend(_32,"locationInWindow"),nil)));
}
}),new objj_method(sel_getUid("mouseUp:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"drawBezelWithHighlight:",NO);
if(!CGRectContainsPoint(objj_msgSend(_33,"bounds"),objj_msgSend(_33,"convertPoint:fromView:",objj_msgSend(_35,"locationInWindow"),nil))){
return;
}
objj_msgSend(_33,"activate:",YES);
var _36=objj_msgSend(CPColorPanel,"sharedColorPanel");
objj_msgSend(_36,"setColor:",_color);
objj_msgSend(_36,"orderFront:",_33);
}
})]);
var _37="CPColorWellColorKey",_38="CPColorWellBorderedKey";
var _2=objj_getClass("CPColorWell");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColorWell\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_39,_3a,_3b){
with(_39){
_39=objj_msgSendSuper({receiver:_39,super_class:objj_getClass("CPControl")},"initWithCoder:",_3b);
if(_39){
_active=NO;
_bordered=objj_msgSend(_3b,"decodeObjectForKey:",_38);
_color=objj_msgSend(_3b,"decodeObjectForKey:",_37);
objj_msgSend(_39,"drawBezelWithHighlight:",NO);
objj_msgSend(_39,"drawWellInside:",CGRectInset(objj_msgSend(_39,"bounds"),3,3));
objj_msgSend(_39,"_registerForNotifications");
}
return _39;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_3c,_3d,_3e){
with(_3c){
var _3f=_subviews;
_subviews=objj_msgSend(_subviews,"copy");
objj_msgSend(_subviews,"removeObjectIdenticalTo:",_wellView);
objj_msgSendSuper({receiver:_3c,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_3e);
_subviews=_3f;
objj_msgSend(_3e,"encodeObject:forKey:",_color,_37);
objj_msgSend(_3e,"encodeObject:forKey:",_bordered,_38);
}
})]);
p;17;CPCompatibility.ji;9;CPEvent.jc;3007;
CPUnknownBrowserEngine=0;
CPGeckoBrowserEngine=1;
CPInternetExplorerBrowserEngine=2;
CPKHTMLBrowserEngine=3;
CPOperaBrowserEngine=4;
CPWebKitBrowserEngine=5;
CPCSSRGBAFeature=1<<5;
CPHTMLCanvasFeature=1<<6;
CPHTMLContentEditableFeature=1<<7;
CPJavascriptInnerTextFeature=1<<8;
CPJavascriptTextContentFeature=1<<9;
CPJavascriptClipboardEventsFeature=1<<10;
CPJavascriptClipboardAccessFeature=1<<11;
CPJavaScriptCanvasDrawFeature=1<<12;
CPJavaScriptCanvasTransformFeature=1<<13;
CPVMLFeature=1<<14;
CPJavascriptRemedialKeySupport=1<<15;
CPJavaScriptShadowFeature=1<<20;
CPJavaScriptNegativeMouseWheelValues=1<<22;
CPJavaScriptMouseWheelValues_8_15=1<<23;
CPOpacityRequiresFilterFeature=1<<24;
var _1="",_2=CPUnknownBrowserEngine,_3=0;
if(typeof window!="undfined"&&typeof window.navigator!="undefined"){
_1=window.navigator.userAgent;
}
if(window.opera){
_2=CPOperaBrowserEngine;
_3|=CPJavaScriptCanvasDrawFeature;
}else{
if(window.attachEvent){
_2=CPInternetExplorerBrowserEngine;
_3|=CPVMLFeature;
_3|=CPJavascriptRemedialKeySupport;
_3|=CPJavaScriptShadowFeature;
_3|=CPOpacityRequiresFilterFeature;
}else{
if(_1.indexOf("AppleWebKit/")!=-1){
_2=CPWebKitBrowserEngine;
_3|=CPCSSRGBAFeature;
_3|=CPHTMLContentEditableFeature;
_3|=CPJavascriptClipboardEventsFeature;
_3|=CPJavascriptClipboardAccessFeature;
_3|=CPJavaScriptShadowFeature;
var _4=_1.indexOf("AppleWebKit/")+"AppleWebKit/".length,_5=_1.indexOf(" ",_4),_6=parseFloat(_1.substring(_4,_5),10);
if(_1.indexOf("Plainview")==-1&&_6>=525.14||_1.indexOf("Chrome")!=-1){
_3|=CPJavascriptRemedialKeySupport;
}
}else{
if(_1.indexOf("KHTML")!=-1){
_2=CPKHTMLBrowserEngine;
}else{
if(_1.indexOf("Gecko")!=-1){
_2=CPGeckoBrowserEngine;
_3|=CPJavaScriptCanvasDrawFeature;
var _7=_1.indexOf("Firefox"),_6=(_7==-1)?2:parseFloat(_1.substring(_7+"Firefox".length+1));
if(_6>=3){
_3|=CPCSSRGBAFeature;
}
var _8=_1.indexOf("Gecko"),_9=(_8===-1)?0:parseFloat(_1.substring(_8+"Gecko".length+1,_1.indexOf(" ",_8)));
if(_6<20061028){
_3|=CPJavaScriptMouseWheelValues_8_15;
}
}
}
}
}
}
if(typeof document!="undefined"){
var _a=document.createElement("canvas");
if(_a&&_a.getContext){
_3|=CPHTMLCanvasFeature;
var _b=document.createElement("canvas").getContext("2d");
if(_b&&_b.setTransform&&_b.transform){
_3|=CPJavaScriptCanvasTransformFeature;
}
}
var _c=document.createElement("div");
if(_c.innerText!=undefined){
_3|=CPJavascriptInnerTextFeature;
}else{
if(_c.textContent!=undefined){
_3|=CPJavascriptTextContentFeature;
}
}
}
CPFeatureIsCompatible=function(_d){
return _3&_d;
};
CPBrowserIsEngine=function(_e){
return _2==_e;
};
if(_1.indexOf("Mac")!=-1){
CPPlatformActionKeyMask=CPCommandKeyMask;
CPUndoKeyEquivalent="Z";
CPRedoKeyEquivalent="Z";
CPUndoKeyEquivalentModifierMask=CPCommandKeyMask;
CPRedoKeyEquivalentModifierMask=CPCommandKeyMask|CPShiftKeyMask;
}else{
CPPlatformActionKeyMask=CPControlKeyMask;
CPUndoKeyEquivalent="Z";
CPRedoKeyEquivalent="Y";
CPUndoKeyEquivalentModifierMask=CPControlKeyMask;
CPRedoKeyEquivalentModifierMask=CPControlKeyMask;
}
p;11;CPControl.ji;8;CPFont.ji;10;CPShadow.ji;8;CPView.jc;25432;
CPLeftTextAlignment = 0;
CPRightTextAlignment = 1;
CPCenterTextAlignment = 2;
CPJustifiedTextAlignment = 3;
CPNaturalTextAlignment = 4;
CPRegularControlSize = 0;
CPSmallControlSize = 1;
CPMiniControlSize = 2;
CPControlNormalBackgroundColor = "CPControlNormalBackgroundColor";
CPControlSelectedBackgroundColor = "CPControlSelectedBackgroundColor";
CPControlHighlightedBackgroundColor = "CPControlHighlightedBackgroundColor";
CPControlDisabledBackgroundColor = "CPControlDisabledBackgroundColor";
CPControlTextDidBeginEditingNotification = "CPControlTextDidBeginEditingNotification";
CPControlTextDidChangeNotification = "CPControlTextDidChangeNotification";
CPControlTextDidEndEditingNotification = "CPControlTextDidEndEditingNotification";
var CPControlBlackColor = objj_msgSend(CPColor, "blackColor");
{var the_class = objj_allocateClassPair(CPView, "CPControl"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_value"), new objj_ivar("_target"), new objj_ivar("_action"), new objj_ivar("_sendActionOn"), new objj_ivar("_continuousTracking"), new objj_ivar("_trackingWasWithinFrame"), new objj_ivar("_trackingMouseDownFlags"), new objj_ivar("_previousTrackingLocation"), new objj_ivar("_controlState"), new objj_ivar("_ephemeralSubviewsForNames"), new objj_ivar("_ephereralSubviews"), new objj_ivar("_isBezeled")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPControl__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        _controlState = CPControlStateNormal;
        _sendActionOn = CPLeftMouseUpMask;
        _trackingMouseDownFlags = 0;
    }
    return self;
}
}), new objj_method(sel_getUid("setAction:"), function $CPControl__setAction_(self, _cmd, anAction)
{ with(self)
{
    _action = anAction;
}
}), new objj_method(sel_getUid("action"), function $CPControl__action(self, _cmd)
{ with(self)
{
    return _action;
}
}), new objj_method(sel_getUid("setTarget:"), function $CPControl__setTarget_(self, _cmd, aTarget)
{ with(self)
{
    _target = aTarget;
}
}), new objj_method(sel_getUid("target"), function $CPControl__target(self, _cmd)
{ with(self)
{
    return _target;
}
}), new objj_method(sel_getUid("sendAction:to:"), function $CPControl__sendAction_to_(self, _cmd, anAction, anObject)
{ with(self)
{
    objj_msgSend(CPApp, "sendAction:to:from:", anAction, anObject, self);
}
}), new objj_method(sel_getUid("sendActionOn:"), function $CPControl__sendActionOn_(self, _cmd, mask)
{ with(self)
{
    var previousMask = _sendActionOn;
    _sendActionOn = mask;
    return previousMask;
}
}), new objj_method(sel_getUid("isContinuous"), function $CPControl__isContinuous(self, _cmd)
{ with(self)
{
    return (_sendActionOn & CPPeriodicMask) !== 0;
}
}), new objj_method(sel_getUid("setContinuous:"), function $CPControl__setContinuous_(self, _cmd, flag)
{ with(self)
{
    if (flag)
        _sendActionOn |= CPPeriodicMask;
    else
        _sendActionOn &= ~CPPeriodicMask;
}
}), new objj_method(sel_getUid("tracksMouseOutsideOfFrame"), function $CPControl__tracksMouseOutsideOfFrame(self, _cmd)
{ with(self)
{
    return NO;
}
}), new objj_method(sel_getUid("trackMouse:"), function $CPControl__trackMouse_(self, _cmd, anEvent)
{ with(self)
{
    var type = objj_msgSend(anEvent, "type"),
        currentLocation = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        isWithinFrame = objj_msgSend(self, "tracksMouseOutsideOfFrame") || CGRectContainsPoint(objj_msgSend(self, "bounds"), currentLocation);
    if (type === CPLeftMouseUp)
    {
        objj_msgSend(self, "stopTracking:at:mouseIsUp:", _previousTrackingLocation, currentLocation, YES);
        _trackingMouseDownFlags = 0;
    }
    else
    {
        if (type === CPLeftMouseDown)
        {
            _trackingMouseDownFlags = objj_msgSend(anEvent, "modifierFlags");
            _continuousTracking = objj_msgSend(self, "startTrackingAt:", currentLocation);
        }
        else if (type === CPLeftMouseDragged)
        {
            if (isWithinFrame)
            {
                if (!_trackingWasWithinFrame)
                    _continuousTracking = objj_msgSend(self, "startTrackingAt:", currentLocation);
                else if (_continuousTracking)
                    _continuousTracking = objj_msgSend(self, "continueTracking:at:", _previousTrackingLocation, currentLocation);
            }
            else
                objj_msgSend(self, "stopTracking:at:mouseIsUp:", _previousTrackingLocation, currentLocation, NO);
        }
        objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackMouse:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
    }
    if ((_sendActionOn & (1 << type)) && isWithinFrame)
        objj_msgSend(self, "sendAction:to:", _action, _target);
    _trackingWasWithinFrame = isWithinFrame;
    _previousTrackingLocation = currentLocation;
}
}), new objj_method(sel_getUid("mouseDownFlags"), function $CPControl__mouseDownFlags(self, _cmd)
{ with(self)
{
    return _trackingMouseDownFlags;
}
}), new objj_method(sel_getUid("startTrackingAt:"), function $CPControl__startTrackingAt_(self, _cmd, aPoint)
{ with(self)
{
    objj_msgSend(self, "highlight:", YES);
    return (_sendActionOn & CPPeriodicMask) || (_sendActionOn & CPLeftMouseDraggedMask);
}
}), new objj_method(sel_getUid("continueTracking:at:"), function $CPControl__continueTracking_at_(self, _cmd, lastPoint, aPoint)
{ with(self)
{
    return (_sendActionOn & CPPeriodicMask) || (_sendActionOn & CPLeftMouseDraggedMask);
}
}), new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"), function $CPControl__stopTracking_at_mouseIsUp_(self, _cmd, lastPoint, aPoint, mouseIsUp)
{ with(self)
{
    objj_msgSend(self, "highlight:", NO);
}
}), new objj_method(sel_getUid("mouseDown:"), function $CPControl__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    objj_msgSend(self, "trackMouse:", anEvent);
}
}), new objj_method(sel_getUid("objectValue"), function $CPControl__objectValue(self, _cmd)
{ with(self)
{
    return _value;
}
}), new objj_method(sel_getUid("setObjectValue:"), function $CPControl__setObjectValue_(self, _cmd, anObject)
{ with(self)
{
    _value = anObject;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("floatValue"), function $CPControl__floatValue(self, _cmd)
{ with(self)
{
    var floatValue = parseFloat(_value, 10);
    return isNaN(floatValue) ? 0.0 : floatValue;
}
}), new objj_method(sel_getUid("setFloatValue:"), function $CPControl__setFloatValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", aValue);
}
}), new objj_method(sel_getUid("doubleValue"), function $CPControl__doubleValue(self, _cmd)
{ with(self)
{
    var doubleValue = parseFloat(_value, 10);
    return isNaN(doubleValue) ? 0.0 : doubleValue;
}
}), new objj_method(sel_getUid("setDoubleValue:"), function $CPControl__setDoubleValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
}), new objj_method(sel_getUid("intValue"), function $CPControl__intValue(self, _cmd)
{ with(self)
{
    var intValue = parseInt(_value, 10);
    return isNaN(intValue) ? 0.0 : intValue;
}
}), new objj_method(sel_getUid("setIntValue:"), function $CPControl__setIntValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
}), new objj_method(sel_getUid("integerValue"), function $CPControl__integerValue(self, _cmd)
{ with(self)
{
    var intValue = parseInt(_value, 10);
    return isNaN(intValue) ? 0.0 : intValue;
}
}), new objj_method(sel_getUid("setIntegerValue:"), function $CPControl__setIntegerValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
}), new objj_method(sel_getUid("stringValue"), function $CPControl__stringValue(self, _cmd)
{ with(self)
{
    return (_value === undefined || _value === nil) ? "" : String(_value);
}
}), new objj_method(sel_getUid("setStringValue:"), function $CPControl__setStringValue_(self, _cmd, anObject)
{ with(self)
{
    objj_msgSend(self, "setObjectValue:", anObject);
}
}), new objj_method(sel_getUid("takeDoubleValueFrom:"), function $CPControl__takeDoubleValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("doubleValue")))
        objj_msgSend(self, "setDoubleValue:", objj_msgSend(sender, "doubleValue"));
}
}), new objj_method(sel_getUid("takeFloatValueFrom:"), function $CPControl__takeFloatValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("floatValue")))
        objj_msgSend(self, "setFloatValue:", objj_msgSend(sender, "floatValue"));
}
}), new objj_method(sel_getUid("takeIntegerValueFrom:"), function $CPControl__takeIntegerValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("integerValue")))
        objj_msgSend(self, "setIntegerValue:", objj_msgSend(sender, "integerValue"));
}
}), new objj_method(sel_getUid("takeIntValueFrom:"), function $CPControl__takeIntValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("intValue")))
        objj_msgSend(self, "setIntValue:", objj_msgSend(sender, "intValue"));
}
}), new objj_method(sel_getUid("takeObjectValueFrom:"), function $CPControl__takeObjectValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("objectValue")))
        objj_msgSend(self, "setObjectValue:", objj_msgSend(sender, "objectValue"));
}
}), new objj_method(sel_getUid("takeStringValueFrom:"), function $CPControl__takeStringValueFrom_(self, _cmd, sender)
{ with(self)
{
    if (objj_msgSend(sender, "respondsToSelector:", sel_getUid("stringValue")))
        objj_msgSend(self, "setStringValue:", objj_msgSend(sender, "stringValue"));
}
}), new objj_method(sel_getUid("textDidBeginEditing:"), function $CPControl__textDidBeginEditing_(self, _cmd, note)
{ with(self)
{
    if(objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(note, "object"), "CPFieldEditor"));
}
}), new objj_method(sel_getUid("textDidChange:"), function $CPControl__textDidChange_(self, _cmd, note)
{ with(self)
{
    if(objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPControlTextDidChangeNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(note, "object"), "CPFieldEditor"));
}
}), new objj_method(sel_getUid("textDidEndEditing:"), function $CPControl__textDidEndEditing_(self, _cmd, note)
{ with(self)
{
    if(objj_msgSend(note, "object") != self)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", CPControlTextDidEndEditingNotification, self, objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", objj_msgSend(note, "object"), "CPFieldEditor"));
}
}), new objj_method(sel_getUid("setAlignment:"), function $CPControl__setAlignment_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "alignment");}
}), new objj_method(sel_getUid("alignment"), function $CPControl__alignment(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "alignment");}
}), new objj_method(sel_getUid("setVerticalAlignment:"), function $CPControl__setVerticalAlignment_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "vertical-alignment");}
}), new objj_method(sel_getUid("verticalAlignment"), function $CPControl__verticalAlignment(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "vertical-alignment");}
}), new objj_method(sel_getUid("setLineBreakMode:"), function $CPControl__setLineBreakMode_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "line-break-mode");}
}), new objj_method(sel_getUid("lineBreakMode"), function $CPControl__lineBreakMode(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "line-break-mode");}
}), new objj_method(sel_getUid("setTextColor:"), function $CPControl__setTextColor_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "text-color");}
}), new objj_method(sel_getUid("textColor"), function $CPControl__textColor(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "text-color");}
}), new objj_method(sel_getUid("setFont:"), function $CPControl__setFont_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "font");}
}), new objj_method(sel_getUid("font"), function $CPControl__font(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "font");}
}), new objj_method(sel_getUid("setTextShadowColor:"), function $CPControl__setTextShadowColor_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "text-shadow-color");}
}), new objj_method(sel_getUid("textShadowColor"), function $CPControl__textShadowColor(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "text-shadow-color");}
}), new objj_method(sel_getUid("setTextShadowOffset:"), function $CPControl__setTextShadowOffset_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "text-shadow-offset");}
}), new objj_method(sel_getUid("textShadowOffset"), function $CPControl__textShadowOffset(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "text-shadow-offset");}
}), new objj_method(sel_getUid("setImagePosition:"), function $CPControl__setImagePosition_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "image-position");}
}), new objj_method(sel_getUid("imagePosition"), function $CPControl__imagePosition(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "image-position");}
}), new objj_method(sel_getUid("setImageScaling:"), function $CPControl__setImageScaling_(self, _cmd, aValue)
{ with(self)
{objj_msgSend(self, "setValue:forThemedAttributeName:", aValue, "image-scaling");}
}), new objj_method(sel_getUid("imageScaling"), function $CPControl__imageScaling(self, _cmd)
{ with(self)
{return objj_msgSend(self, "valueForThemedAttributeName:", "image-scaling");}
}), new objj_method(sel_getUid("controlState"), function $CPControl__controlState(self, _cmd)
{ with(self)
{
    return _controlState;
}
}), new objj_method(sel_getUid("setEnabled:"), function $CPControl__setEnabled_(self, _cmd, isEnabled)
{ with(self)
{
    if ((!(_controlState & CPControlStateDisabled)) === isEnabled)
        return;
    if (isEnabled)
        _controlState &= ~CPControlStateDisabled;
    else
        _controlState |= CPControlStateDisabled;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("isEnabled"), function $CPControl__isEnabled(self, _cmd)
{ with(self)
{
    return !(_controlState & CPControlStateDisabled);
}
}), new objj_method(sel_getUid("highlight:"), function $CPControl__highlight_(self, _cmd, shouldHighlight)
{ with(self)
{
    objj_msgSend(self, "setHighlighted:", shouldHighlight);
}
}), new objj_method(sel_getUid("setHighlighted:"), function $CPControl__setHighlighted_(self, _cmd, isHighlighted)
{ with(self)
{
    if ((!!(_controlState & CPControlStateHighlighted)) === isHighlighted)
        return;
    if (isHighlighted)
        _controlState |= CPControlStateHighlighted;
    else
        _controlState &= ~CPControlStateHighlighted;
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("isHighlighted"), function $CPControl__isHighlighted(self, _cmd)
{ with(self)
{
    return !!(_controlState & CPControlStateHighlighted);
}
}), new objj_method(sel_getUid("createEphemeralSubviewNamed:"), function $CPControl__createEphemeralSubviewNamed_(self, _cmd, aViewName)
{ with(self)
{
    return nil;
}
}), new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"), function $CPControl__rectForEphemeralSubviewNamed_(self, _cmd, aViewName)
{ with(self)
{
    return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } };
}
}), new objj_method(sel_getUid("layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:"), function $CPControl__layoutEphemeralSubviewNamed_positioned_relativeToEphemeralSubviewNamed_(self, _cmd, aViewName, anOrderingMode, relativeToViewName)
{ with(self)
{
    if (!_ephemeralSubviewsForNames)
    {
        _ephemeralSubviewsForNames = {};
        _ephemeralSubviews = objj_msgSend(CPSet, "set");
    }
    var frame = objj_msgSend(self, "rectForEphemeralSubviewNamed:", aViewName);
    if (frame && !(frame.size.width <= 0.0 || frame.size.height <= 0.0))
    {
        if (!_ephemeralSubviewsForNames[aViewName])
        {
            _ephemeralSubviewsForNames[aViewName] = objj_msgSend(self, "createEphemeralSubviewNamed:", aViewName);
            objj_msgSend(_ephemeralSubviews, "addObject:", _ephemeralSubviewsForNames[aViewName]);
            if (_ephemeralSubviewsForNames[aViewName])
                objj_msgSend(self, "addSubview:positioned:relativeTo:", _ephemeralSubviewsForNames[aViewName], anOrderingMode, _ephemeralSubviewsForNames[relativeToViewName]);
        }
        if (_ephemeralSubviewsForNames[aViewName])
            objj_msgSend(_ephemeralSubviewsForNames[aViewName], "setFrame:", frame);
    }
    else if (_ephemeralSubviewsForNames[aViewName])
    {
        objj_msgSend(_ephemeralSubviewsForNames[aViewName], "removeFromSuperview");
        objj_msgSend(_ephemeralSubviews, "removeObject:", _ephemeralSubviewsForNames[aViewName]);
        delete _ephemeralSubviewsForNames[aViewName];
    }
    return _ephemeralSubviewsForNames[aViewName];
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themedAttributes"), function $CPControl__themedAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [
        CPLeftTextAlignment, CPTopVerticalTextAlignment, CPLineBreakByClipping, objj_msgSend(CPColor, "blackColor"), objj_msgSend(CPFont, "systemFontOfSize:", 12.0), nil, { width:0.0, height:0.0 }, CPImageLeft, CPScaleToFit], ["alignment", "vertical-alignment", "line-break-mode", "text-color", "font", "text-shadow-color", "text-shadow-offset", "image-position", "image-scaling"]);
}
})]);
}
var CPControlValueKey = "CPControlValueKey",
    CPControlControlStateKey = "CPControlControlStateKey",
    CPControlIsEnabledKey = "CPControlIsEnabledKey",
    CPControlTargetKey = "CPControlTargetKey",
    CPControlActionKey = "CPControlActionKey",
    CPControlSendActionOnKey = "CPControlSendActionOnKey";
var __Deprecated__CPImageViewImageKey = "CPImageViewImageKey";
{
var the_class = objj_getClass("CPControl")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPControl\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPControl__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithCoder:", aCoder);
    if (self)
    {
        _controlState = objj_msgSend(aCoder, "decodeObjectForKey:", CPControlControlStateKey);
        objj_msgSend(self, "setObjectValue:", objj_msgSend(aCoder, "decodeObjectForKey:", CPControlValueKey));
        objj_msgSend(self, "setTarget:", objj_msgSend(aCoder, "decodeObjectForKey:", CPControlTargetKey));
        objj_msgSend(self, "setAction:", objj_msgSend(aCoder, "decodeObjectForKey:", CPControlActionKey));
        objj_msgSend(self, "sendActionOn:", objj_msgSend(aCoder, "decodeIntForKey:", CPControlSendActionOnKey));
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPControl__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    var count = objj_msgSend(_subviews, "count"),
        ephemeral
        subviews = nil;
    if (count > 0 && objj_msgSend(_ephemeralSubviews, "count") > 0)
    {
        subviews = objj_msgSend(_subviews.slice(0), "copy");
        while (count--)
            if (objj_msgSend(_ephemeralSubviews, "containsObject:", _subviews[count]))
                _subviews.splice(count, 1);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "encodeWithCoder:", aCoder);
    if (subviews)
        _subviews = subviews;
    objj_msgSend(aCoder, "encodeObject:forKey:", _controlState, CPControlControlStateKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _value, CPControlValueKey);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _target, CPControlTargetKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _action, CPControlActionKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _sendActionOn, CPControlSendActionOnKey);
}
})]);
}
var _CPControlSizeIdentifiers = [],
    _CPControlCachedThreePartImages = {},
    _CPControlCachedColorWithPatternImages = {},
    _CPControlCachedThreePartImagePattern = {};
_CPControlSizeIdentifiers[CPRegularControlSize] = "Regular";
_CPControlSizeIdentifiers[CPSmallControlSize] = "Small";
_CPControlSizeIdentifiers[CPMiniControlSize] = "Mini";
_CPControlIdentifierForControlSize= function(aControlSize)
{
    return _CPControlSizeIdentifiers[aControlSize];
}
_CPControlColorWithPatternImage= function(sizes, aClassName)
{
    var index = 1,
        count = arguments.length,
        identifier = "";
    for (; index < count; ++index)
        identifier += arguments[index];
    var color = _CPControlCachedColorWithPatternImages[identifier];
    if (!color)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPControl, "class"));
        color = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", aClassName + "/" + identifier + ".png"), sizes[identifier]));
        _CPControlCachedColorWithPatternImages[identifier] = color;
    }
    return color;
}
_CPControlThreePartImages= function(sizes, aClassName)
{
    var index = 1,
        count = arguments.length,
        identifier = "";
    for (; index < count; ++index)
        identifier += arguments[index];
    var images = _CPControlCachedThreePartImages[identifier];
    if (!images)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPControl, "class")),
            path = aClassName + "/" + identifier;
        sizes = sizes[identifier];
        images = [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "0.png"), sizes[0]),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "1.png"), sizes[1]),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "2.png"), sizes[2])
                ];
        _CPControlCachedThreePartImages[identifier] = images;
    }
    return images;
}
_CPControlThreePartImagePattern= function(isVertical, sizes, aClassName)
{
    var index = 2,
        count = arguments.length,
        identifier = "";
    for (; index < count; ++index)
        identifier += arguments[index];
    var color = _CPControlCachedThreePartImagePattern[identifier];
    if (!color)
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(CPControl, "class")),
            path = aClassName + "/" + identifier;
        sizes = sizes[identifier];
        color = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "0.png"), sizes[0]),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "1.png"), sizes[1]),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", path + "2.png"), sizes[2])
                ], isVertical));
        _CPControlCachedThreePartImagePattern[identifier] = color;
    }
    return color;
}

p;10;CPCookie.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jc;1385;
var _1=objj_allocateClassPair(CPObject,"CPCookie"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_cookieName"),new objj_ivar("_cookieValue"),new objj_ivar("_expires")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithName:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
_cookieName=_5;
_cookieValue=objj_msgSend(_3,"_readCookieValue");
return _3;
}
}),new objj_method(sel_getUid("value"),function(_6,_7){
with(_6){
return _cookieValue;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return _cookieName;
}
}),new objj_method(sel_getUid("expires"),function(_a,_b){
with(_a){
return _expires;
}
}),new objj_method(sel_getUid("setValue:expires:domain:"),function(_c,_d,_e,_f,_10){
with(_c){
if(_f){
var _11="; expires="+_f.toGMTString();
}else{
var _11="";
}
if(_10){
_10="; domain="+_10;
}else{
_10="";
}
document.cookie=_cookieName+"="+_e+_11+"; path=/"+_10;
}
}),new objj_method(sel_getUid("_readCookieValue"),function(_12,_13){
with(_12){
var _14=_cookieName+"=";
var ca=document.cookie.split(";");
for(var i=0;i<ca.length;i++){
var c=ca[i];
while(c.charAt(0)==" "){
c=c.substring(1,c.length);
}
if(c.indexOf(_14)==0){
return c.substring(_14.length,c.length);
}
}
return "";
}
})]);
p;12;CPDocument.jI;21;Foundation/CPString.jI;20;Foundation/CPArray.ji;13;CPResponder.ji;20;CPWindowController.jc;12379;
CPSaveOperation=0;
CPSaveAsOperation=1;
CPSaveToOperation=2;
CPAutosaveOperation=3;
CPChangeDone=0;
CPChangeUndone=1;
CPChangeCleared=2;
CPChangeReadOtherContents=3;
CPChangeAutosaved=4;
CPDocumentWillSaveNotification="CPDocumentWillSaveNotification";
CPDocumentDidSaveNotification="CPDocumentDidSaveNotification";
CPDocumentDidFailToSaveNotification="CPDocumentDidFailToSaveNotification";
var _1=0;
var _2=objj_allocateClassPair(CPResponder,"CPDocument"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_fileURL"),new objj_ivar("_fileType"),new objj_ivar("_windowControllers"),new objj_ivar("_untitledDocumentIndex"),new objj_ivar("_hasUndoManager"),new objj_ivar("_undoManager"),new objj_ivar("_changeCount"),new objj_ivar("_readConnection"),new objj_ivar("_writeRequest")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPResponder")},"init");
if(_4){
_windowControllers=[];
_hasUndoManager=YES;
_changeCount=0;
objj_msgSend(_4,"setNextResponder:",CPApp);
}
return _4;
}
}),new objj_method(sel_getUid("initWithType:error:"),function(_6,_7,_8,_9){
with(_6){
_6=objj_msgSend(_6,"init");
if(_6){
objj_msgSend(_6,"setFileType:",_8);
}
return _6;
}
}),new objj_method(sel_getUid("initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_a,_b,_c,_d,_e,_f,_10){
with(_a){
_a=objj_msgSend(_a,"init");
if(_a){
objj_msgSend(_a,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_c,_d,_e,_f,_10);
objj_msgSend(_a,"setFileURL:",_c);
objj_msgSend(_a,"setFileType:",_d);
}
return _a;
}
}),new objj_method(sel_getUid("initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_11,_12,_13,_14,_15,_16,_17,_18){
with(_11){
_11=objj_msgSend(_11,"init");
if(_11){
objj_msgSend(_11,"readFromURL:ofType:delegate:didReadSelector:contextInfo:",_14,_15,_16,_17,_18);
objj_msgSend(_11,"setFileURL:",_13);
objj_msgSend(_11,"setFileType:",_15);
}
return _11;
}
}),new objj_method(sel_getUid("dataOfType:error:"),function(_19,_1a,_1b,_1c){
with(_19){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"dataOfType:error: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("readFromData:ofType:error:"),function(_1d,_1e,_1f,_20,_21){
with(_1d){
objj_msgSend(CPException,"raise:reason:",CPUnsupportedMethodException,"readFromData:ofType: must be overridden by the document subclass.");
}
}),new objj_method(sel_getUid("makeWindowControllers"),function(_22,_23){
with(_22){
var _24=objj_msgSend(objj_msgSend(CPWindowController,"alloc"),"initWithWindowCibName:",nil);
objj_msgSend(_22,"addWindowController:",_24);
}
}),new objj_method(sel_getUid("windowControllers"),function(_25,_26){
with(_25){
return _windowControllers;
}
}),new objj_method(sel_getUid("addWindowController:"),function(_27,_28,_29){
with(_27){
objj_msgSend(_windowControllers,"addObject:",_29);
if(objj_msgSend(_29,"document")!=_27){
objj_msgSend(_29,"setNextResponder:",_27);
objj_msgSend(_29,"setDocument:",_27);
}
}
}),new objj_method(sel_getUid("showWindows"),function(_2a,_2b){
with(_2a){
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("showWindow:"),_2a);
}
}),new objj_method(sel_getUid("displayName"),function(_2c,_2d){
with(_2c){
if(_fileURL){
return objj_msgSend(_fileURL,"lastPathComponent");
}
if(!_untitledDocumentIndex){
_untitledDocumentIndex=++_1;
}
if(_untitledDocumentIndex==1){
return "Untitled";
}
return "Untitled "+_untitledDocumentIndex;
}
}),new objj_method(sel_getUid("windowCibName"),function(_2e,_2f){
with(_2e){
return nil;
}
}),new objj_method(sel_getUid("windowControllerDidLoadNib:"),function(_30,_31,_32){
with(_30){
}
}),new objj_method(sel_getUid("windowControllerWillLoadNib:"),function(_33,_34,_35){
with(_33){
}
}),new objj_method(sel_getUid("readFromURL:ofType:delegate:didReadSelector:contextInfo:"),function(_36,_37,_38,_39,_3a,_3b,_3c){
with(_36){
objj_msgSend(_readConnection,"cancel");
_readConnection=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",objj_msgSend(CPURLRequest,"requestWithURL:",_38),_36);
_readConnection.session=_3d(_39,_3a,_3b,_3c);
}
}),new objj_method(sel_getUid("fileURL"),function(_3e,_3f){
with(_3e){
return _fileURL;
}
}),new objj_method(sel_getUid("setFileURL:"),function(_40,_41,_42){
with(_40){
if(_fileURL==_42){
return;
}
_fileURL=_42;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:",sel_getUid("synchronizeWindowTitleWithDocumentName"));
}
}),new objj_method(sel_getUid("saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:"),function(_43,_44,_45,_46,_47,_48,_49,_4a){
with(_43){
var _4b=objj_msgSend(_43,"dataOfType:error:",objj_msgSend(_43,"fileType"),nil),_4c=_changeCount;
_writeRequest=objj_msgSend(CPURLRequest,"requestWithURL:",_45);
objj_msgSend(_writeRequest,"setHTTPMethod:","POST");
objj_msgSend(_writeRequest,"setHTTPBody:",objj_msgSend(_4b,"string"));
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","close","Connection");
if(_47==CPSaveOperation){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
}
if(_47!=CPSaveToOperation){
objj_msgSend(_43,"updateChangeCount:",CPChangeCleared);
}
var _4d=objj_msgSend(CPURLConnection,"connectionWithRequest:delegate:",_writeRequest,_43);
_4d.session=_4e(_45,_47,_4c,_48,_49,_4a,_4d);
}
}),new objj_method(sel_getUid("connection:didReceiveResponse:"),function(_4f,_50,_51,_52){
with(_4f){
if(!objj_msgSend(_52,"isKindOfClass:",objj_msgSend(CPHTTPURLResponse,"class"))){
return;
}
var _53=objj_msgSend(_52,"statusCode");
if(_53===200){
return;
}
var _54=_51.session;
if(_51==_readConnection){
objj_msgSend(_51,"cancel");
alert("There was an error retrieving the document.");
objj_msgSend(_54.delegate,_54.didReadSelector,_4f,NO,_54.contextInfo);
}else{
if(_53==409){
objj_msgSend(_51,"cancel");
if(confirm("There already exists a file with that name, would you like to overwrite it?")){
objj_msgSend(_writeRequest,"setValue:forHTTPHeaderField:","true","x-cappuccino-overwrite");
objj_msgSend(_51,"start");
}else{
if(_54.saveOperation!=CPSaveToOperation){
_changeCount+=_54.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_4f,"isDocumentEdited"));
}
_writeRequest=nil;
objj_msgSend(_54.delegate,_54.didSaveSelector,_4f,NO,_54.contextInfo);
}
}
}
}
}),new objj_method(sel_getUid("connection:didReceiveData:"),function(_55,_56,_57,_58){
with(_55){
var _59=_57.session;
if(_57==_readConnection){
objj_msgSend(_55,"readFromData:ofType:error:",objj_msgSend(CPData,"dataWithString:",_58),_59.fileType,nil);
objj_msgSend(_59.delegate,_59.didReadSelector,_55,YES,_59.contextInfo);
}else{
if(_59.saveOperation!=CPSaveToOperation){
objj_msgSend(_55,"setFileURL:",_59.absoluteURL);
}
_writeRequest=nil;
objj_msgSend(_59.delegate,_59.didSaveSelector,_55,YES,_59.contextInfo);
}
}
}),new objj_method(sel_getUid("connection:didFailWithError:"),function(_5a,_5b,_5c,_5d){
with(_5a){
var _5e=_5c.session;
if(_readConnection==_5c){
objj_msgSend(_5e.delegate,_5e.didReadSelector,_5a,NO,_5e.contextInfo);
}else{
if(_5e.saveOperation!=CPSaveToOperation){
_changeCount+=_5e.changeCount;
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_5a,"isDocumentEdited"));
}
_writeRequest=nil;
alert("There was an error saving the document.");
objj_msgSend(_5e.delegate,_5e.didSaveSelector,_5a,NO,_5e.contextInfo);
}
}
}),new objj_method(sel_getUid("connectionDidFinishLoading:"),function(_5f,_60,_61){
with(_5f){
if(_readConnection==_61){
_readConnection=nil;
}
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_62,_63){
with(_62){
return _changeCount!=0;
}
}),new objj_method(sel_getUid("updateChangeCount:"),function(_64,_65,_66){
with(_64){
if(_66==CPChangeDone){
++_changeCount;
}else{
if(_66==CPChangeUndone){
--_changeCount;
}else{
if(_66==CPChangeCleared){
_changeCount=0;
}
}
}
objj_msgSend(_windowControllers,"makeObjectsPerformSelector:withObject:",sel_getUid("setDocumentEdited:"),objj_msgSend(_64,"isDocumentEdited"));
}
}),new objj_method(sel_getUid("setFileType:"),function(_67,_68,_69){
with(_67){
_fileType=_69;
}
}),new objj_method(sel_getUid("fileType"),function(_6a,_6b){
with(_6a){
return _fileType;
}
}),new objj_method(sel_getUid("hasUndoManager"),function(_6c,_6d){
with(_6c){
return _hasUndoManager;
}
}),new objj_method(sel_getUid("setHasUndoManager:"),function(_6e,_6f,_70){
with(_6e){
if(_hasUndoManager==_70){
return;
}
_hasUndoManager=_70;
if(!_hasUndoManager){
objj_msgSend(_6e,"setUndoManager:",nil);
}
}
}),new objj_method(sel_getUid("_undoManagerWillCloseGroup:"),function(_71,_72,_73){
with(_71){
var _74=objj_msgSend(_73,"object");
if(objj_msgSend(_74,"isUndoing")||objj_msgSend(_74,"isRedoing")){
return;
}
objj_msgSend(_71,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("_undoManagerDidUndoChange:"),function(_75,_76,_77){
with(_75){
objj_msgSend(_75,"updateChangeCount:",CPChangeUndone);
}
}),new objj_method(sel_getUid("_undoManagerDidRedoChange:"),function(_78,_79,_7a){
with(_78){
objj_msgSend(_78,"updateChangeCount:",CPChangeDone);
}
}),new objj_method(sel_getUid("setUndoManager:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_undoManager){
objj_msgSend(_7e,"removeObserver:name:object:",_7b,CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_7e,"removeObserver:name:object:",_7b,CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_7e,"removeObserver:name:object:",_7b,CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
_undoManager=_7d;
if(_undoManager){
objj_msgSend(_7e,"addObserver:selector:name:object:",_7b,sel_getUid("_undoManagerDidUndoChange:"),CPUndoManagerDidUndoChangeNotification,_undoManager);
objj_msgSend(_7e,"addObserver:selector:name:object:",_7b,sel_getUid("_undoManagerDidRedoChange:"),CPUndoManagerDidRedoChangeNotification,_undoManager);
objj_msgSend(_7e,"addObserver:selector:name:object:",_7b,sel_getUid("_undoManagerWillCloseGroup:"),CPUndoManagerWillCloseUndoGroupNotification,_undoManager);
}
}
}),new objj_method(sel_getUid("undoManager"),function(_7f,_80){
with(_7f){
if(_hasUndoManager&&!_undoManager){
objj_msgSend(_7f,"setUndoManager:",objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init"));
}
return _undoManager;
}
}),new objj_method(sel_getUid("windowWillReturnUndoManager:"),function(_81,_82,_83){
with(_81){
return objj_msgSend(_81,"undoManager");
}
}),new objj_method(sel_getUid("saveDocument:"),function(_84,_85,_86){
with(_84){
if(_fileURL){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_84);
objj_msgSend(_84,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",_fileURL,objj_msgSend(_84,"fileType"),CPSaveOperation,_84,sel_getUid("document:didSave:contextInfo:"),NULL);
}else{
objj_msgSend(_84,"saveDocumentAs:",_84);
}
}
}),new objj_method(sel_getUid("saveDocumentAs:"),function(_87,_88,_89){
with(_87){
_documentName=window.prompt("Document Name:");
if(!_documentName){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentWillSaveNotification,_87);
objj_msgSend(_87,"saveToURL:ofType:forSaveOperation:delegate:didSaveSelector:contextInfo:",objj_msgSend(_87,"proposedFileURL"),objj_msgSend(_87,"fileType"),CPSaveAsOperation,_87,sel_getUid("document:didSave:contextInfo:"),NULL);
}
}),new objj_method(sel_getUid("document:didSave:contextInfo:"),function(_8a,_8b,_8c,_8d,_8e){
with(_8a){
if(_8d){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidSaveNotification,_8a);
}else{
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPDocumentDidFailToSaveNotification,_8a);
}
}
})]);
var _3d=function(_8f,_90,_91,_92){
return {fileType:_8f,delegate:_90,didReadSelector:_91,contextInfo:_92};
};
var _4e=function(_93,_94,_95,_96,_97,_98,_99){
return {absoluteURL:_93,saveOperation:_94,changeCount:_95,delegate:_96,didSaveSelector:_97,contextInfo:_98,connection:_99};
};
p;22;CPDocumentController.jI;21;Foundation/CPObject.jI;21;Foundation/CPBundle.ji;12;CPDocument.jc;5371;
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPDocumentController"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_documents"),new objj_ivar("_documentTypes")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("init"),function(_4,_5){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_documents=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
if(!_1){
_1=_4;
}
_documentTypes=objj_msgSend(objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"infoDictionary"),"objectForKey:","CPBundleDocumentTypes");
}
return _4;
}
}),new objj_method(sel_getUid("documentForURL:"),function(_6,_7,_8){
with(_6){
var _9=0,_a=objj_msgSend(_documents,"count");
for(;_9<_a;++_9){
var _b=_documents[_9];
if(objj_msgSend(objj_msgSend(_b,"fileURL"),"isEqual:",_8)){
return _b;
}
}
return nil;
}
}),new objj_method(sel_getUid("openUntitledDocumentOfType:display:"),function(_c,_d,_e,_f){
with(_c){
var _10=objj_msgSend(_c,"makeUntitledDocumentOfType:error:",_e,nil);
if(_10){
objj_msgSend(_c,"addDocument:",_10);
}
if(_f){
objj_msgSend(_10,"makeWindowControllers");
objj_msgSend(_10,"showWindows");
}
return _10;
}
}),new objj_method(sel_getUid("makeUntitledDocumentOfType:error:"),function(_11,_12,_13,_14){
with(_11){
return objj_msgSend(objj_msgSend(objj_msgSend(_11,"documentClassForType:",_13),"alloc"),"initWithType:error:",_13,_14);
}
}),new objj_method(sel_getUid("openDocumentWithContentsOfURL:display:error:"),function(_15,_16,_17,_18,_19){
with(_15){
var _1a=objj_msgSend(_15,"documentForURL:",_17);
if(!_1a){
var _1b=objj_msgSend(_15,"typeForContentsOfURL:error:",_17,_19);
_1a=objj_msgSend(_15,"makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_17,_1b,_15,sel_getUid("document:didRead:contextInfo:"),objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_18,"shouldDisplay"));
}else{
if(_18){
objj_msgSend(_1a,"showWindows");
}
}
return _1a;
}
}),new objj_method(sel_getUid("reopenDocumentForURL:withContentsOfURL:error:"),function(_1c,_1d,_1e,_1f,_20){
with(_1c){
return objj_msgSend(_1c,"makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_1e,_1f,objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),_1c,sel_getUid("document:didRead:contextInfo:"),nil);
}
}),new objj_method(sel_getUid("makeDocumentWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_21,_22,_23,_24,_25,_26,_27){
with(_21){
return objj_msgSend(objj_msgSend(objj_msgSend(_21,"documentClassForType:",_24),"alloc"),"initWithContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_23,_24,_25,_26,_27);
}
}),new objj_method(sel_getUid("makeDocumentForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:"),function(_28,_29,_2a,_2b,_2c,_2d,_2e,_2f){
with(_28){
return objj_msgSend(objj_msgSend(objj_msgSend(_28,"documentClassForType:",_2c),"alloc"),"initForURL:withContentsOfURL:ofType:delegate:didReadSelector:contextInfo:",_2a,_2b,_2c,_2d,_2e,_2f);
}
}),new objj_method(sel_getUid("document:didRead:contextInfo:"),function(_30,_31,_32,_33,_34){
with(_30){
if(!_33){
return;
}
objj_msgSend(_30,"addDocument:",_32);
objj_msgSend(_32,"makeWindowControllers");
if(objj_msgSend(_34,"objectForKey:","shouldDisplay")){
objj_msgSend(_32,"showWindows");
}
}
}),new objj_method(sel_getUid("newDocument:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_35,"openUntitledDocumentOfType:display:",objj_msgSend(objj_msgSend(_documentTypes,"objectAtIndex:",0),"objectForKey:","CPBundleTypeName"),YES);
}
}),new objj_method(sel_getUid("documents"),function(_38,_39){
with(_38){
return _documents;
}
}),new objj_method(sel_getUid("addDocument:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(_documents,"addObject:",_3c);
}
}),new objj_method(sel_getUid("removeDocument:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_documents,"removeObjectIdenticalTo:",_3f);
}
}),new objj_method(sel_getUid("defaultType"),function(_40,_41){
with(_40){
return objj_msgSend(_documentTypes[0],"objectForKey:","CPBundleTypeName");
}
}),new objj_method(sel_getUid("typeForContentsOfURL:error:"),function(_42,_43,_44,_45){
with(_42){
var _46=0,_47=_documentTypes.length,_48=objj_msgSend(objj_msgSend(_44,"pathExtension"),"lowercaseString");
for(;_46<_47;++_46){
var _49=_documentTypes[_46],_4a=objj_msgSend(_49,"objectForKey:","CFBundleTypeExtensions"),_4b=0,_4c=_4a.length;
for(;_4b<_4c;++_4b){
if(objj_msgSend(_4a[_4b],"lowercaseString")==_48){
return objj_msgSend(_49,"objectForKey:","CPBundleTypeName");
}
}
}
return objj_msgSend(_42,"defaultType");
}
}),new objj_method(sel_getUid("_infoForType:"),function(_4d,_4e,_4f){
with(_4d){
var i=0,_51=objj_msgSend(_documentTypes,"count");
for(;i<_51;++i){
var _52=_documentTypes[i];
if(objj_msgSend(_52,"objectForKey:","CPBundleTypeName")==_4f){
return _52;
}
}
return nil;
}
}),new objj_method(sel_getUid("documentClassForType:"),function(_53,_54,_55){
with(_53){
var _56=objj_msgSend(objj_msgSend(_53,"_infoForType:",_55),"objectForKey:","CPDocumentClass");
return _56?CPClassFromString(_56):nil;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("sharedDocumentController"),function(_57,_58){
with(_57){
if(!_1){
objj_msgSend(objj_msgSend(_57,"alloc"),"init");
}
return _1;
}
})]);
p;20;CPDOMDisplayServer.jI;22;Foundation/CPRunLoop.jc;3207;
var _1=nil;
CPDOMDisplayServerInstructions=[];
CPDOMDisplayServerInstructionCount=0;
CPDOMDisplayServerViews=[];
CPDOMDisplayServerViewsCount=0;
CPDOMDisplayServerViewsContext={};
var _2=objj_allocateClassPair(CPObject,"CPDOMDisplayServer"),_3=_2.isa;
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("start"),function(_4,_5){
with(_4){
_1=objj_msgSend(CPRunLoop,"currentRunLoop");
objj_msgSend(_1,"performSelector:target:argument:order:modes:",sel_getUid("run"),CPDOMDisplayServer,nil,0,[CPDefaultRunLoopMode]);
}
}),new objj_method(sel_getUid("run"),function(_6,_7){
with(_6){
while(CPDOMDisplayServerInstructionCount||CPDOMDisplayServerViewsCount){
var _8=0;
while(_8<CPDOMDisplayServerInstructionCount){
var _9=CPDOMDisplayServerInstructions[_8++];
try{
switch(_9){
case 0:
case 1:
case 2:
case 3:
var _a=CPDOMDisplayServerInstructions[_8],_b=_a.style,x=(_9==0||_9==2)?"left":"right",y=(_9==0||_9==1)?"top":"bottom";
CPDOMDisplayServerInstructions[_8++]=nil;
var _e=CPDOMDisplayServerInstructions[_8++];
if(_e){
var _f={x:CPDOMDisplayServerInstructions[_8++],y:CPDOMDisplayServerInstructions[_8++]},_10={x:_f.x*_e.a+_f.y*_e.c+_e.tx,y:_f.x*_e.b+_f.y*_e.d+_e.ty};
_b[x]=ROUND(_10.x)+"px";
_b[y]=ROUND(_10.y)+"px";
}else{
_b[x]=ROUND(CPDOMDisplayServerInstructions[_8++])+"px";
_b[y]=ROUND(CPDOMDisplayServerInstructions[_8++])+"px";
}
_a.CPDOMDisplayContext[0]=-1;
break;
case 4:
var _a=CPDOMDisplayServerInstructions[_8],_b=_a.style;
CPDOMDisplayServerInstructions[_8++]=nil;
_a.CPDOMDisplayContext[4]=-1;
_b.width=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]))+"px";
_b.height=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]))+"px";
break;
case 5:
var _a=CPDOMDisplayServerInstructions[_8];
CPDOMDisplayServerInstructions[_8++]=nil;
_a.CPDOMDisplayContext[5]=-1;
_a.width=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]));
_a.height=MAX(0,ROUND(CPDOMDisplayServerInstructions[_8++]));
break;
case 6:
CPDOMDisplayServerInstructions[_8].appendChild(CPDOMDisplayServerInstructions[_8+1]);
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
break;
case 7:
CPDOMDisplayServerInstructions[_8].insertBefore(CPDOMDisplayServerInstructions[_8+1],CPDOMDisplayServerInstructions[_8+2]);
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
break;
case 8:
CPDOMDisplayServerInstructions[_8].removeChild(CPDOMDisplayServerInstructions[_8+1]);
CPDOMDisplayServerInstructions[_8++]=nil;
CPDOMDisplayServerInstructions[_8++]=nil;
break;
}
}
catch(e){
CPLog("here?"+_9);
}
}
CPDOMDisplayServerInstructionCount=0;
var _11=CPDOMDisplayServerViews,_8=0,_12=CPDOMDisplayServerViewsCount;
CPDOMDisplayServerViews=[];
CPDOMDisplayServerViewsCount=0;
for(;_8<_12;++_8){
var _13=_11[_8];
delete CPDOMDisplayServerViewsContext[objj_msgSend(_13,"hash")];
objj_msgSend(_13,"layoutIfNeeded");
objj_msgSend(_13,"displayIfNeeded");
}
}
objj_msgSend(_1,"performSelector:target:argument:order:modes:",sel_getUid("run"),CPDOMDisplayServer,nil,0,[CPDefaultRunLoopMode]);
}
})]);
objj_msgSend(CPDOMDisplayServer,"start");
p;19;CPDOMWindowBridge.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.ji;9;CPEvent.ji;17;CPCompatibility.ji;18;CPDOMWindowLayer.jc;19397;
CPSharedDOMWindowBridge=nil;
var _1=[];
var _2,_3,_4;
var _5=objj_allocateClassPair(CPObject,"CPDOMWindowBridge"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_orderedWindows"),new objj_ivar("_mouseDownWindow"),new objj_ivar("_DOMWindow"),new objj_ivar("_DOMBodyElement"),new objj_ivar("_DOMFocusElement"),new objj_ivar("_windowLevels"),new objj_ivar("_windowLayers"),new objj_ivar("_frame"),new objj_ivar("_contentBounds"),new objj_ivar("_mouseIsDown"),new objj_ivar("_lastMouseUp"),new objj_ivar("_lastMouseDown"),new objj_ivar("_charCodes"),new objj_ivar("_keyCode"),new objj_ivar("_DOMEventMode"),new objj_ivar("_DOMPasteboardElement"),new objj_ivar("_pasteboardKeyDownEvent"),new objj_ivar("_overriddenEventType")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
alert("unimplemented");
}
}),new objj_method(sel_getUid("_initWithDOMWindow:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPObject")},"init");
if(_a){
_DOMWindow=_c;
_windowLevels=[];
_windowLayers=objj_msgSend(CPDictionary,"dictionary");
_DOMBodyElement=document.getElementsByTagName("body")[0];
_DOMBodyElement.innerHTML="";
_DOMBodyElement.style.overflow="hidden";
_DOMBodyElement.style.webkitTouchCallout="none";
if(document.documentElement){
document.documentElement.style.overflow="hidden";
}
_frame=_2(_DOMWindow);
_contentBounds=CGRectMake(0,0,CPRectGetWidth(_frame),CPRectGetHeight(_frame));
_DOMFocusElement=document.createElement("input");
_DOMFocusElement.style.position="absolute";
_DOMFocusElement.style.zIndex="-1000";
_DOMFocusElement.style.opacity="0";
_DOMFocusElement.style.filter="alpha(opacity=0)";
_DOMBodyElement.appendChild(_DOMFocusElement);
_DOMPasteboardElement=document.createElement("input");
_DOMPasteboardElement.style.position="absolute";
_DOMPasteboardElement.style.top="-10000px";
_DOMPasteboardElement.style.zIndex="99";
_DOMBodyElement.appendChild(_DOMPasteboardElement);
_DOMPasteboardElement.blur();
_charCodes={};
var _d=objj_msgSend(_a,"class"),_e=sel_getUid("_bridgeKeyEvent:"),_f=class_getMethodImplementation(_d,_e),_10=function(_11){
_f(_a,nil,_11);
},_12=sel_getUid("_bridgeMouseEvent:"),_13=class_getMethodImplementation(_d,_12),_14=function(_15){
_13(_a,nil,_15);
},_16=sel_getUid("_bridgeScrollEvent:"),_17=class_getMethodImplementation(_d,_16),_18=function(_19){
_17(_a,nil,_19);
},_1a=sel_getUid("_bridgeResizeEvent:"),_1b=class_getMethodImplementation(_d,_1a),_1c=function(_1d){
_1b(_a,nil,_1d);
},_1e=sel_getUid("_bridgeTouchEvent:"),_1f=class_getMethodImplementation(_d,_1e),_20=function(_21){
_1f(_a,nil,_21);
},_22=_DOMWindow.document;
if(document.addEventListener){
_DOMWindow.addEventListener("resize",_1c,NO);
_22.addEventListener(CPDOMEventMouseUp,_14,NO);
_22.addEventListener(CPDOMEventMouseDown,_14,NO);
_22.addEventListener(CPDOMEventMouseMoved,_14,NO);
_22.addEventListener(CPDOMEventKeyUp,_10,NO);
_22.addEventListener(CPDOMEventKeyDown,_10,NO);
_22.addEventListener(CPDOMEventKeyPress,_10,NO);
_22.addEventListener(CPDOMEventTouchStart,_20,NO);
_22.addEventListener(CPDOMEventTouchEnd,_20,NO);
_22.addEventListener(CPDOMEventTouchMove,_20,NO);
_22.addEventListener(CPDOMEventTouchCancel,_20,NO);
_DOMWindow.addEventListener("DOMMouseScroll",_18,NO);
_DOMWindow.addEventListener(CPDOMEventScrollWheel,_18,NO);
}else{
if(document.attachEvent){
_DOMWindow.attachEvent("onresize",_1c);
_22.attachEvent("on"+CPDOMEventMouseUp,_14);
_22.attachEvent("on"+CPDOMEventMouseDown,_14);
_22.attachEvent("on"+CPDOMEventMouseMoved,_14);
_22.attachEvent("on"+CPDOMEventDoubleClick,_14);
_22.attachEvent("on"+CPDOMEventKeyUp,_10);
_22.attachEvent("on"+CPDOMEventKeyDown,_10);
_22.attachEvent("on"+CPDOMEventKeyPress,_10);
_DOMWindow.onmousewheel=_18;
_22.onmousewheel=_18;
_22.body.ondrag=function(){
return NO;
};
_22.body.onselectstart=function(){
return window.event.srcElement==_DOMPasteboardElement;
};
}
}
_1["INPUT"]=YES;
_1["SELECT"]=YES;
_1["TEXTAREA"]=YES;
_1["OPTION"]=YES;
}
return _a;
}
}),new objj_method(sel_getUid("frame"),function(_23,_24){
with(_23){
return CGRectMakeCopy(_frame);
}
}),new objj_method(sel_getUid("visibleFrame"),function(_25,_26){
with(_25){
var _27=objj_msgSend(_25,"frame");
_27.origin=CGPointMakeZero();
if(objj_msgSend(CPMenu,"menuBarVisible")){
var _28=objj_msgSend(objj_msgSend(CPApp,"mainMenu"),"menuBarHeight");
_27.origin.y+=_28;
_27.size.height-=_28;
}
return _27;
}
}),new objj_method(sel_getUid("contentBounds"),function(_29,_2a){
with(_29){
return CPRectCreateCopy(_contentBounds);
}
}),new objj_method(sel_getUid("orderedWindowsAtLevel:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=objj_msgSend(_2b,"layerAtLevel:create:",_2d,NO);
if(!_2e){
return [];
}
return objj_msgSend(_2e,"orderedWindows");
}
}),new objj_method(sel_getUid("layerAtLevel:create:"),function(_2f,_30,_31,_32){
with(_2f){
var _33=objj_msgSend(_windowLayers,"objectForKey:",_31);
if(!_33&&_32){
_33=objj_msgSend(objj_msgSend(CPDOMWindowLayer,"alloc"),"initWithLevel:",_31);
objj_msgSend(_windowLayers,"setObject:forKey:",_33,_31);
var low=0,_35=_windowLevels.length-1,_36;
while(low<=_35){
_36=FLOOR((low+_35)/2);
if(_windowLevels[_36]>_31){
_35=_36-1;
}else{
low=_36+1;
}
}
objj_msgSend(_windowLevels,"insertObject:atIndex:",_31,_windowLevels[_36]>_31?_36:_36+1);
_33._DOMElement.style.zIndex=_31;
_DOMBodyElement.appendChild(_33._DOMElement);
}
return _33;
}
}),new objj_method(sel_getUid("order:window:relativeTo:"),function(_37,_38,_39,_3a,_3b){
with(_37){
var _3c=objj_msgSend(_37,"layerAtLevel:create:",objj_msgSend(_3a,"level"),_39!=CPWindowOut);
if(_39==CPWindowOut){
return objj_msgSend(_3c,"removeWindow:",_3a);
}
objj_msgSend(_3c,"insertWindow:atIndex:",_3a,(_3b?(_39==CPWindowAbove?_3b._index+1:_3b._index):CPNotFound));
}
}),new objj_method(sel_getUid("_dragHitTest:pasteboard:"),function(_3d,_3e,_3f,_40){
with(_3d){
var _41=_windowLevels,_42=_windowLayers,_43=_41.length;
while(_43--){
if(_41[_43]>=CPDraggingWindowLevel){
continue;
}
var _44=objj_msgSend(_42,"objectForKey:",_41[_43])._windows,_45=_44.length;
while(_45--){
var _46=_44[_45];
if(objj_msgSend(_46,"containsPoint:",_3f)){
var _47=objj_msgSend(_46,"_dragHitTest:pasteboard:",_3f,_40);
if(_47){
return _47;
}else{
return nil;
}
}
}
}
return nil;
}
}),new objj_method(sel_getUid("_propagateCurrentDOMEvent:"),function(_48,_49,_4a){
with(_48){
StopDOMEventPropagation=!_4a;
}
}),new objj_method(sel_getUid("hitTest:"),function(_4b,_4c,_4d){
with(_4b){
var _4e=_windowLevels,_4f=_windowLayers,_50=_4e.length,_51=nil;
while(_50--&&!_51){
var _52=objj_msgSend(_4f,"objectForKey:",_4e[_50])._windows,_53=_52.length;
while(_53--&&!_51){
var _54=_52[_53];
if(!_54._ignoresMouseEvents&&objj_msgSend(_54,"containsPoint:",_4d)){
_51=_54;
}
}
}
return _51;
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("sharedDOMWindowBridge"),function(_55,_56){
with(_55){
if(!CPSharedDOMWindowBridge){
CPSharedDOMWindowBridge=objj_msgSend(objj_msgSend(CPDOMWindowBridge,"alloc"),"_initWithDOMWindow:",window);
}
return CPSharedDOMWindowBridge;
}
})]);
var _2=function(_57){
var _58=nil;
if(_57.outerWidth){
_58=CGRectMake(0,0,_57.outerWidth,_57.outerHeight);
}else{
_58=CGRectMake(0,0,-1,-1);
}
if(window.screenTop){
_58.origin=CGPointMake(_57.screenLeft,_57.screenTop,0);
}else{
if(window.screenX){
_58.origin=CGPointMake(_57.screenX,_57.screenY,0);
}
}
if(_57.innerWidth){
_58.size=CGSizeMake(_57.innerWidth,_57.innerHeight);
}else{
if(document.documentElement&&document.documentElement.clientWidth){
_58.size=CGSizeMake(_57.document.documentElement.clientWidth,_57.document.documentElement.clientHeight);
}else{
_58.size=CGSizeMake(_57.document.body.clientWidth,_57.document.body.clientHeight);
}
}
return _58;
};
var _59={},_5a={},_5b={"8":1,"9":1,"37":1,"38":1,"39":1,"40":1,"46":1,"33":1,"34":1};
var _5c=17;
var _5=objj_getClass("CPDOMWindowBridge");
if(!_5){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPDOMWindowBridge\""));
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("preventCharacterKeysFromPropagating:"),function(_5d,_5e,_5f){
with(_5d){
for(var i=_5f.length;i>0;i--){
_5a[""+_5f[i-1].toLowerCase()]=YES;
}
}
}),new objj_method(sel_getUid("preventCharacterKeyFromPropagating:"),function(_61,_62,_63){
with(_61){
_5a[_63.toLowerCase()]=YES;
}
}),new objj_method(sel_getUid("clearCharacterKeysToPreventFromPropagating"),function(_64,_65){
with(_64){
_5a={};
}
}),new objj_method(sel_getUid("preventKeyCodesFromPropagating:"),function(_66,_67,_68){
with(_66){
for(var i=_68.length;i>0;i--){
_59[_68[i-1]]=YES;
}
}
}),new objj_method(sel_getUid("preventKeyCodeFromPropagating:"),function(_6a,_6b,_6c){
with(_6a){
_59[_6c]=YES;
}
}),new objj_method(sel_getUid("clearKeyCodesToPreventFromPropagating"),function(_6d,_6e){
with(_6d){
_59={};
}
}),new objj_method(sel_getUid("_bridgeMouseEvent:"),function(_6f,_70,_71){
with(_6f){
var _72=_overriddenEventType||_71.type;
if(_72==CPDOMEventDoubleClick){
_overriddenEventType=CPDOMEventMouseDown;
objj_msgSend(_6f,"_bridgeMouseEvent:",_71);
_overriddenEventType=CPDOMEventMouseUp;
objj_msgSend(_6f,"_bridgeMouseEvent:",_71);
_overriddenEventType=nil;
return;
}
try{
var _73,_74={x:_71.clientX,y:_71.clientY},_75=_71.timeStamp?_71.timeStamp:new Date(),_76=(_71.target||_71.srcElement),_77=0,_78=(_71.shiftKey?CPShiftKeyMask:0)|(_71.ctrlKey?CPControlKeyMask:0)|(_71.altKey?CPAlternateKeyMask:0)|(_71.metaKey?CPCommandKeyMask:0);
StopDOMEventPropagation=YES;
if(_mouseDownWindow){
_77=objj_msgSend(_mouseDownWindow,"windowNumber");
}else{
var _79=objj_msgSend(_6f,"hitTest:",_74);
if(_71.type==CPDOMEventMouseDown&&_79){
_mouseDownWindow=_79;
}
_77=objj_msgSend(_79,"windowNumber");
}
if(_77){
var _7a=CPApp._windows[_77]._frame;
_74.x-=(_7a.origin.x);
_74.y-=(_7a.origin.y);
}
switch(_72){
case CPDOMEventMouseUp:
if(_mouseIsDown){
_73=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseUp,_74,_78,_75,_77,nil,-1,_3(_lastMouseUp,_75,_74),0);
_mouseIsDown=NO;
_lastMouseUp=_73;
_mouseDownWindow=nil;
}
if(_DOMEventMode){
_DOMEventMode=NO;
return;
}
break;
case CPDOMEventMouseDown:
if(_1[_76.tagName]&&_76!=_DOMFocusElement){
_DOMEventMode=YES;
_mouseIsDown=YES;
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,_74,_78,_75,_77,nil,-1,_3(_lastMouseDown,_75,_74),0));
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseUp,_74,_78,_75,_77,nil,-1,_3(_lastMouseDown,_75,_74),0));
return;
}
_73=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,_74,_78,_75,_77,nil,-1,_3(_lastMouseDown,_75,_74),0);
_mouseIsDown=YES;
_lastMouseDown=_73;
break;
case CPDOMEventMouseMoved:
if(_DOMEventMode){
return;
}
_73=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_mouseIsDown?CPLeftMouseDragged:CPMouseMoved,_74,_78,_75,_77,nil,-1,1,0);
break;
}
if(_73){
_73._DOMEvent=_71;
objj_msgSend(CPApp,"sendEvent:",_73);
}
if(StopDOMEventPropagation){
_4(_71);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeKeyEvent:"),function(_7b,_7c,_7d){
with(_7b){
try{
var _7e,_7f=_7d.timeStamp?_7d.timeStamp:new Date(),_80=(_7d.target||_7d.srcElement),_81=objj_msgSend(objj_msgSend(CPApp,"keyWindow"),"windowNumber"),_82=(_7d.shiftKey?CPShiftKeyMask:0)|(_7d.ctrlKey?CPControlKeyMask:0)|(_7d.altKey?CPAlternateKeyMask:0)|(_7d.metaKey?CPCommandKeyMask:0);
if(_1[_80.tagName]&&_80!=_DOMFocusElement&&_80!=_DOMPasteboardElement){
return;
}
StopDOMEventPropagation=!(_82&(CPControlKeyMask|CPCommandKeyMask))||_5a[String.fromCharCode(_7d.keyCode||_7d.charCode).toLowerCase()]||_59[_7d.keyCode];
var _83=NO,_84=NO;
switch(_7d.type){
case CPDOMEventKeyDown:
_keyCode=_7d.keyCode;
var _85=String.fromCharCode(_keyCode).toLowerCase();
if(_85=="v"&&(_82&CPPlatformActionKeyMask)){
_DOMPasteboardElement.select();
_DOMPasteboardElement.value="";
_83=YES;
}else{
if((_85=="c"||_85=="x")&&(_82&CPPlatformActionKeyMask)){
_84=YES;
}else{
if(!CPFeatureIsCompatible(CPJavascriptRemedialKeySupport)){
return;
}else{
if(!_5b[_keyCode]&&(_keyCode==_5c||!(_82&CPControlKeyMask))){
return;
}
}
}
}
case CPDOMEventKeyPress:
if((_7d.target||_7d.srcElement)==_DOMPasteboardElement){
return;
}
var _86=_keyCode,_87=_7d.keyCode||_7d.charCode,_88=(_charCodes[_86]!=nil);
_charCodes[_86]=_87;
var _85=String.fromCharCode(_87),_89=_85.toLowerCase();
_7e=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyDown,location,_82,_7f,_81,nil,_85,_89,_88,_86);
if(_83){
_pasteboardKeyDownEvent=_7e;
window.setNativeTimeout(function(){
objj_msgSend(_7b,"_checkPasteboardElement");
},0);
return;
}
break;
case CPDOMEventKeyUp:
var _86=_7d.keyCode,_87=_charCodes[_86];
_charCodes[_86]=nil;
var _85=String.fromCharCode(_87),_89=_85.toLowerCase();
if(!(_82&CPShiftKeyMask)){
_85=_89;
}
_7e=objj_msgSend(CPEvent,"keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",CPKeyUp,location,_82,_7f,_81,nil,_85,_89,NO,_86);
break;
}
if(_7e){
_7e._DOMEvent=_7d;
objj_msgSend(CPApp,"sendEvent:",_7e);
if(_84){
var _8a=objj_msgSend(CPPasteboard,"generalPasteboard"),_8b=objj_msgSend(_8a,"types");
if(_8b.length){
if(objj_msgSend(_8b,"indexOfObjectIdenticalTo:",CPStringPboardType)!=CPNotFound){
_DOMPasteboardElement.value=objj_msgSend(_8a,"stringForType:",CPStringPboardType);
}else{
_DOMPasteboardElement.value=objj_msgSend(_8a,"_generateStateUID");
}
_DOMPasteboardElement.select();
window.setNativeTimeout(function(){
objj_msgSend(_7b,"_clearPasteboardElement");
},0);
}
return;
}
}
if(StopDOMEventPropagation){
_4(_7d);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeScrollEvent:"),function(_8c,_8d,_8e){
with(_8c){
if(!_8e){
_8e=window.event;
}
try{
if(CPFeatureIsCompatible(CPJavaScriptMouseWheelValues_8_15)){
var x=0,y=0,_91=_8e.target;
while(_91.nodeType!==1){
_91=_91.parentNode;
}
if(_91.offsetParent){
do{
x+=_91.offsetLeft;
y+=_91.offsetTop;
}while(_91=_91.offsetParent);
}
var _92={x:(x+((_8e.clientX-8)/15)),y:(y+((_8e.clientY-8)/15))};
}else{
var _92={x:_8e.clientX,y:_8e.clientY};
}
var _93=0,_94=0,_95=0,_96=_8e.timeStamp?_8e.timeStamp:new Date(),_97=(_8e.shiftKey?CPShiftKeyMask:0)|(_8e.ctrlKey?CPControlKeyMask:0)|(_8e.altKey?CPAlternateKeyMask:0)|(_8e.metaKey?CPCommandKeyMask:0);
StopDOMEventPropagation=YES;
_95=objj_msgSend(objj_msgSend(_8c,"hitTest:",_92),"windowNumber");
if(!_95){
return;
}
var _98=CPApp._windows[_95]._frame;
_92.x-=CGRectGetMinX(_98);
_92.y-=CGRectGetMinY(_98);
if(typeof _8e.wheelDeltaX!="undefined"){
_93=_8e.wheelDeltaX/120;
_94=_8e.wheelDeltaY/120;
}else{
if(_8e.wheelDelta){
_94=_8e.wheelDelta/120;
}else{
if(_8e.detail){
_94=-_8e.detail/3;
}else{
return;
}
}
}
if(!CPFeatureIsCompatible(CPJavaScriptNegativeMouseWheelValues)){
_93=-_93;
_94=-_94;
}
var _99=objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPScrollWheel,_92,_97,_96,_95,nil,-1,1,0);
_99._DOMEvent=_8e;
_99._deltaX=ROUND(_93*1.5);
_99._deltaY=ROUND(_94*1.5);
objj_msgSend(CPApp,"sendEvent:",_99);
if(StopDOMEventPropagation){
_4(_8e);
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeResizeEvent:"),function(_9a,_9b,_9c){
with(_9a){
try{
var _9d=_frame.size;
_frame=_2(_DOMWindow);
_contentBounds.size=CGSizeCreateCopy(_frame.size);
var _9e=_windowLevels,_9f=_windowLayers,_a0=_9e.length;
while(_a0--){
var _a1=objj_msgSend(_9f,"objectForKey:",_9e[_a0])._windows,_a2=_a1.length;
while(_a2--){
objj_msgSend(_a1[_a2],"resizeWithOldBridgeSize:",_9d);
}
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_bridgeTouchEvent:"),function(_a3,_a4,_a5){
with(_a3){
try{
if(_a5.touches&&(_a5.touches.length==1||(_a5.touches.length==0&&_a5.changedTouches.length==1))){
var _a6={};
switch(_a5.type){
case CPDOMEventTouchStart:
_a6.type=CPDOMEventMouseDown;
break;
case CPDOMEventTouchEnd:
_a6.type=CPDOMEventMouseUp;
break;
case CPDOMEventTouchMove:
_a6.type=CPDOMEventMouseMoved;
break;
case CPDOMEventTouchCancel:
_a6.type=CPDOMEventMouseUp;
break;
}
var _a7=_a5.touches.length?_a5.touches[0]:_a5.changedTouches[0];
_a6.clientX=_a7.clientX;
_a6.clientY=_a7.clientY;
_a6.timestamp=_a5.timestamp;
_a6.target=_a5.target;
_a6.shiftKey=_a6.ctrlKey=_a6.altKey=_a6.metaKey=false;
_a6.preventDefault=function(){
if(_a5.preventDefault){
_a5.preventDefault();
}
};
_a6.stopPropagation=function(){
if(_a5.stopPropagation){
_a5.stopPropagation();
}
};
objj_msgSend(_a3,"_bridgeMouseEvent:",_a6);
return;
}else{
if(_a5.preventDefault){
_a5.preventDefault();
}
if(_a5.stopPropagation){
_a5.stopPropagation();
}
}
}
catch(e){
objj_exception_report(e,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_checkPasteboardElement"),function(_a8,_a9){
with(_a8){
try{
var _aa=_DOMPasteboardElement.value;
if(objj_msgSend(_aa,"length")){
var _ab=objj_msgSend(CPPasteboard,"generalPasteboard");
if(objj_msgSend(_ab,"_stateUID")!=_aa){
objj_msgSend(_ab,"declareTypes:owner:",[CPStringPboardType],_a8);
objj_msgSend(_ab,"setString:forType:",_aa,CPStringPboardType);
}
}
objj_msgSend(_a8,"_clearPasteboardElement");
objj_msgSend(CPApp,"sendEvent:",_pasteboardKeyDownEvent);
_pasteboardKeyDownEvent=nil;
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
catch(anException){
objj_exception_report(anException,{path:"CPDOMWindowBridge.j"});
}
}
}),new objj_method(sel_getUid("_clearPasteboardElement"),function(_ac,_ad){
with(_ac){
_DOMPasteboardElement.value="";
_DOMPasteboardElement.blur();
}
})]);
var _ae=5,_af=(typeof document!="undefined"&&document.addEventListener)?350:1000;
var _3=function(_b0,_b1,_b2){
if(!_b0){
return 1;
}
var _b3=objj_msgSend(_b0,"locationInWindow");
return (_b1-objj_msgSend(_b0,"timestamp")<_af&&ABS(_b3.x-_b2.x)<_ae&&ABS(_b3.y-_b2.y)<_ae)?objj_msgSend(_b0,"clickCount")+1:1;
};
var _4=function(_b4){
_b4.cancelBubble=true;
_b4.returnValue=false;
if(_b4.preventDefault){
_b4.preventDefault();
}
if(_b4.stopPropagation){
_b4.stopPropagation();
}
if(_b4.type==CPDOMEventMouseDown){
CPSharedDOMWindowBridge._DOMFocusElement.focus();
CPSharedDOMWindowBridge._DOMFocusElement.blur();
}
};
p;18;CPDOMWindowLayer.jI;20;Foundation/CPArray.jI;21;Foundation/CPObject.jc;3291;
{var the_class = objj_allocateClassPair(CPObject, "CPDOMWindowLayer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_level"), new objj_ivar("_windows"), new objj_ivar("_DOMElement")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithLevel:"), function $CPDOMWindowLayer__initWithLevel_(self, _cmd, aLevel)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _level = aLevel;
        _windows = [];
        _DOMElement = document.createElement("div");
        _DOMElement.style.position = "absolute";
        _DOMElement.style.top = "0px";
        _DOMElement.style.left = "0px";
        _DOMElement.style.width = "1px";
        _DOMElement.style.height = "1px";
    }
    return self;
}
}), new objj_method(sel_getUid("level"), function $CPDOMWindowLayer__level(self, _cmd)
{ with(self)
{
    return _level;
}
}), new objj_method(sel_getUid("removeWindow:"), function $CPDOMWindowLayer__removeWindow_(self, _cmd, aWindow)
{ with(self)
{
    var index = aWindow._index,
        count = _windows.length - 1;
    CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = 8; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = _DOMElement; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = aWindow._DOMElement;;
    objj_msgSend(_windows, "removeObjectAtIndex:", aWindow._index);
    for (; index < count; ++index)
    {
        _windows[index]._index = index;
        _windows[index]._DOMElement.style.zIndex = index;
    }
    aWindow._isVisible = NO;
}
}), new objj_method(sel_getUid("insertWindow:atIndex:"), function $CPDOMWindowLayer__insertWindow_atIndex_(self, _cmd, aWindow, anIndex)
{ with(self)
{
    var count = objj_msgSend(_windows, "count"),
        zIndex = (anIndex == CPNotFound ? count : anIndex),
        isVisible = aWindow._isVisible;
    if (isVisible)
    {
        zIndex = MIN(zIndex, aWindow._index);
        objj_msgSend(_windows, "removeObjectAtIndex:", aWindow._index);
    }
    else
        ++count;
    if (anIndex == CPNotFound || anIndex >= count)
        objj_msgSend(_windows, "addObject:", aWindow);
    else
        objj_msgSend(_windows, "insertObject:atIndex:", aWindow, anIndex);
    for (; zIndex < count; ++zIndex)
    {
        _windows[zIndex]._index = zIndex;
        _windows[zIndex]._DOMElement.style.zIndex = zIndex;
    }
    if (!isVisible)
    {
        if (aWindow._DOMElement.CPDOMDisplayContext) aWindow._DOMElement.CPDOMDisplayContext[0] = -1; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = 6; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = _DOMElement; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = aWindow._DOMElement;;
        aWindow._isVisible = YES;
        if (objj_msgSend(aWindow, "isFullBridge"))
            objj_msgSend(aWindow, "setFrame:", objj_msgSend(aWindow._bridge, "contentBounds"));
    }
}
}), new objj_method(sel_getUid("orderedWindows"), function $CPDOMWindowLayer__orderedWindows(self, _cmd)
{ with(self)
{
    return _windows;
}
})]);
}

p;14;CPDragServer.jI;15;AppKit/CPView.jI;16;AppKit/CPEvent.jI;21;AppKit/CPPasteboard.jI;20;AppKit/CPImageView.jc;11060;
var CPSharedDragServer = nil;
var CPDragServerView = nil,
    CPDragServerSource = nil,
    CPDragServerWindow = nil,
    CPDragServerOffset = nil,
    CPDragServerLocation = nil,
    CPDragServerPasteboard = nil,
    CPDragServerDestination = nil,
    CPDragServerDraggingInfo = nil;
var CPDragServerIsDraggingImage = NO,
    CPDragServerShouldSendDraggedViewMovedTo = NO,
    CPDragServerShouldSendDraggedImageMovedTo = NO,
    CPDragServerShouldSendDraggedViewEndedAtOperation = NO,
    CPDragServerShouldSendDraggedImageEndedAtOperation = NO;
var CPDragServerStartDragging = function(anEvent)
{
    CPDragServerUpdateDragging(anEvent);
}
var CPDragServerUpdateDragging = function(anEvent)
{
    if(objj_msgSend(anEvent, "type") == CPLeftMouseUp)
    {
        CPDragServerLocation = objj_msgSend((objj_msgSend(CPDragServerDestination, "isKindOfClass:", objj_msgSend(CPWindow, "class")) ? CPDragServerDestination : objj_msgSend(CPDragServerDestination, "window")), "convertBridgeToBase:", objj_msgSend(objj_msgSend(anEvent, "window"), "convertBaseToBridge:", objj_msgSend(anEvent, "locationInWindow")));
        objj_msgSend(CPDragServerView, "removeFromSuperview");
        objj_msgSend(CPSharedDragServer._dragWindow, "orderOut:", nil);
        if (CPDragServerDestination &&
            (!objj_msgSend(CPDragServerDestination, "respondsToSelector:", sel_getUid("prepareForDragOperation:")) || objj_msgSend(CPDragServerDestination, "prepareForDragOperation:", CPDragServerDraggingInfo)) &&
            (!objj_msgSend(CPDragServerDestination, "respondsToSelector:", sel_getUid("performDragOperation:")) || objj_msgSend(CPDragServerDestination, "performDragOperation:", CPDragServerDraggingInfo)) &&
            objj_msgSend(CPDragServerDestination, "respondsToSelector:", sel_getUid("concludeDragOperation:")))
            objj_msgSend(CPDragServerDestination, "concludeDragOperation:", CPDragServerDraggingInfo);
        if (CPDragServerShouldSendDraggedImageEndedAtOperation)
            objj_msgSend(CPDragServerSource, "draggedImage:endedAt:operation:", objj_msgSend(CPDragServerView, "image"), CPDragServerLocation, NO);
        else if (CPDragServerShouldSendDraggedViewEndedAtOperation)
            objj_msgSend(CPDragServerSource, "draggedView:endedAt:operation:", CPDragServerView, CPDragServerLocation, NO);
        CPDragServerIsDraggingImage = NO;
        CPDragServerDestination = nil;
        return;
    }
    objj_msgSend(CPApp, "setCallback:forNextEventMatchingMask:untilDate:inMode:dequeue:", CPDragServerUpdateDragging, CPMouseMovedMask | CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, 0, NO);
    var location = objj_msgSend(anEvent, "locationInWindow"),
        operation =
        bridgeLocation = objj_msgSend(objj_msgSend(anEvent, "window"), "convertBaseToBridge:", location);
    var draggingDestination = objj_msgSend(objj_msgSend(CPDOMWindowBridge, "sharedDOMWindowBridge"), "_dragHitTest:pasteboard:", bridgeLocation, CPDragServerPasteboard);
    CPDragServerLocation = objj_msgSend((objj_msgSend(draggingDestination, "isKindOfClass:", objj_msgSend(CPWindow, "class")) ? draggingDestination : objj_msgSend(draggingDestination, "window")), "convertBridgeToBase:", bridgeLocation);
    if(draggingDestination != CPDragServerDestination)
    {
        if (CPDragServerDestination && objj_msgSend(CPDragServerDestination, "respondsToSelector:", sel_getUid("draggingExited:")))
            objj_msgSend(CPDragServerDestination, "draggingExited:", CPDragServerDraggingInfo);
        CPDragServerDestination = draggingDestination;
        if (CPDragServerDestination && objj_msgSend(CPDragServerDestination, "respondsToSelector:", sel_getUid("draggingEntered:")))
            objj_msgSend(CPDragServerDestination, "draggingEntered:", CPDragServerDraggingInfo);
    }
    else if (CPDragServerDestination && objj_msgSend(CPDragServerDestination, "respondsToSelector:", sel_getUid("draggingUpdated:")))
        objj_msgSend(CPDragServerDestination, "draggingUpdated:", CPDragServerDraggingInfo);
    location.x -= CPDragServerOffset.x;
    location.y -= CPDragServerOffset.y;
    objj_msgSend(CPDragServerView, "setFrameOrigin:", location);
    if (CPDragServerShouldSendDraggedImageMovedTo)
        objj_msgSend(CPDragServerSource, "draggedImage:movedTo:", objj_msgSend(CPDragServerView, "image"), location);
    else if (CPDragServerShouldSendDraggedViewMovedTo)
        objj_msgSend(CPDragServerSource, "draggedView:movedTo:", CPDragServerView, location);
}
{var the_class = objj_allocateClassPair(CPObject, "CPDraggingInfo"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("draggingSource"), function(self, _cmd)
{ with(self)
{
    return CPDragServerSource;
}
}), new objj_method(sel_getUid("draggingLocation"), function(self, _cmd)
{ with(self)
{
    return CPDragServerLocation;
}
}), new objj_method(sel_getUid("draggingPasteboard"), function(self, _cmd)
{ with(self)
{
    return CPDragServerPasteboard;
}
}), new objj_method(sel_getUid("draggedImage"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDragServerView, "image");
}
}), new objj_method(sel_getUid("draggedImageLocation"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(self, "draggedViewLocation");
}
}), new objj_method(sel_getUid("draggedViewLocation"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend((objj_msgSend(CPDragServerDestination, "isKindOfClass:", objj_msgSend(CPWindow, "class")) ? CPDragServerDestination : objj_msgSend(CPDragServerDestination, "window")), "convertBridgeToBase:", objj_msgSend(CPDragServerView, "frame").origin);
}
}), new objj_method(sel_getUid("draggedView"), function(self, _cmd)
{ with(self)
{
    return CPDragServerView;
}
})]);
}
{var the_class = objj_allocateClassPair(CPObject, "CPDragServer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_dragWindow"), new objj_ivar("_imageView")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function(self, _cmd)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPObject") }, "init");
    if (self)
    {
        _dragWindow = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", CPRectMakeZero(), CPBorderlessWindowMask);
        objj_msgSend(_dragWindow, "setLevel:", CPDraggingWindowLevel);
    }
    return self;
}
}), new objj_method(sel_getUid("dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:"), function(self, _cmd, aView, aWindow, viewLocation, mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack)
{ with(self)
{
    var eventLocation = objj_msgSend(anEvent, "locationInWindow");
    CPDragServerView = aView;
    CPDragServerSource = aSourceObject;
    CPDragServerWindow = aWindow;
    CPDragServerOffset = CPPointMake(eventLocation.x - viewLocation.x, eventLocation.y - viewLocation.y);
    CPDragServerPasteboard = objj_msgSend(CPPasteboard, "pasteboardWithName:", CPDragPboard);
    objj_msgSend(_dragWindow, "setFrameSize:", CGSizeMakeCopy(objj_msgSend(objj_msgSend(CPDOMWindowBridge, "sharedDOMWindowBridge"), "frame").size));
    objj_msgSend(_dragWindow, "orderFront:", self);
    objj_msgSend(aView, "setFrameOrigin:", viewLocation);
    objj_msgSend(objj_msgSend(_dragWindow, "contentView"), "addSubview:", aView);
    if (CPDragServerIsDraggingImage)
    {
        if (objj_msgSend(CPDragServerSource, "respondsToSelector:", sel_getUid("draggedImage:beganAt:")))
            objj_msgSend(CPDragServerSource, "draggedImage:beganAt:", objj_msgSend(aView, "image"), viewLocation);
        CPDragServerShouldSendDraggedImageMovedTo = objj_msgSend(CPDragServerSource, "respondsToSelector:", sel_getUid("draggedImage:movedTo:"));
        CPDragServerShouldSendDraggedImageEndedAtOperation = objj_msgSend(CPDragServerSource, "respondsToSelector:", sel_getUid("draggedImage:endAt:operation:"));
        CPDragServerShouldSendDraggedViewMovedTo = NO;
        CPDragServerShouldSendDraggedViewEndedAtOperation = NO;
    }
    else
    {
        if (objj_msgSend(CPDragServerSource, "respondsToSelector:", sel_getUid("draggedView:beganAt:")))
            objj_msgSend(CPDragServerSource, "draggedView:beganAt:", aView, viewLocation);
        CPDragServerShouldSendDraggedViewMovedTo = objj_msgSend(CPDragServerSource, "respondsToSelector:", sel_getUid("draggedView:movedTo:"));
        CPDragServerShouldSendDraggedViewEndedAtOperation = objj_msgSend(CPDragServerSource, "respondsToSelector:", sel_getUid("draggedView:endedAt:operation:"));
        CPDragServerShouldSendDraggedImageMovedTo = NO;
        CPDragServerShouldSendDraggedImageEndedAtOperation = NO;
    }
    CPDragServerStartDragging(anEvent);
}
}), new objj_method(sel_getUid("dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:"), function(self, _cmd, anImage, aWindow, imageLocation, mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack)
{ with(self)
{
    CPDragServerIsDraggingImage = YES;
    if (!_imageView)
        _imageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CPRectMakeZero());
    objj_msgSend(_imageView, "setImage:", anImage);
    objj_msgSend(_imageView, "setFrameSize:", CGSizeMakeCopy(objj_msgSend(anImage, "size")));
    objj_msgSend(self, "dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:", _imageView, aWindow, imageLocation, mouseOffset, anEvent, aPasteboard, aSourceObject, slideBack);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPDragServer, "class"))
        return;
    CPDragServerDraggingInfo = objj_msgSend(objj_msgSend(CPDraggingInfo, "alloc"), "init");
}
}), new objj_method(sel_getUid("sharedDragServer"), function(self, _cmd)
{ with(self)
{
    if (!CPSharedDragServer)
        CPSharedDragServer = objj_msgSend(objj_msgSend(CPDragServer, "alloc"), "init");
    return CPSharedDragServer;
}
})]);
}
{
var the_class = objj_getClass("CPWindow")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPWindow\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_dragHitTest:pasteboard:"), function(self, _cmd, aPoint, aPasteboard)
{ with(self)
{
    if (!objj_msgSend(self, "containsPoint:", aPoint))
        return nil;
    var hitView = objj_msgSend(_windowView, "hitTest:", aPoint);
    while (hitView && !objj_msgSend(aPasteboard, "availableTypeFromArray:", objj_msgSend(hitView, "registeredDraggedTypes")))
        hitView = objj_msgSend(hitView, "superview");
    if (hitView)
        return hitView;
    if (objj_msgSend(aPasteboard, "availableTypeFromArray:", _registeredDraggedTypes))
        return self;
    return nil;
}
})]);
}

p;9;CPEvent.jI;21;Foundation/CPObject.jc;7669;
CPLeftMouseDown=1;
CPLeftMouseUp=2;
CPRightMouseDown=3;
CPRightMouseUp=4;
CPMouseMoved=5;
CPLeftMouseDragged=6;
CPRightMouseDragged=7;
CPMouseEntered=8;
CPMouseExited=9;
CPKeyDown=10;
CPKeyUp=11;
CPFlagsChanged=12;
CPAppKitDefined=13;
CPSystemDefined=14;
CPApplicationDefined=15;
CPPeriodic=16;
CPCursorUpdate=17;
CPScrollWheel=22;
CPOtherMouseDown=25;
CPOtherMouseUp=26;
CPOtherMouseDragged=27;
CPTouchStart=28;
CPTouchMove=29;
CPTouchEnd=30;
CPTouchCancel=31;
CPAlphaShiftKeyMask=1<<16;
CPShiftKeyMask=1<<17;
CPControlKeyMask=1<<18;
CPAlternateKeyMask=1<<19;
CPCommandKeyMask=1<<20;
CPNumericPadKeyMask=1<<21;
CPHelpKeyMask=1<<22;
CPFunctionKeyMask=1<<23;
CPDeviceIndependentModifierFlagsMask=4294901760;
CPLeftMouseDownMask=1<<CPLeftMouseDown;
CPLeftMouseUpMask=1<<CPLeftMouseUp;
CPRightMouseDownMask=1<<CPRightMouseDown;
CPRightMouseUpMask=1<<CPRightMouseUp;
CPOtherMouseDownMask=1<<CPOtherMouseDown;
CPOtherMouseUpMask=1<<CPOtherMouseUp;
CPMouseMovedMask=1<<CPMouseMoved;
CPLeftMouseDraggedMask=1<<CPLeftMouseDragged;
CPRightMouseDraggedMask=1<<CPRightMouseDragged;
CPOtherMouseDragged=1<<CPOtherMouseDragged;
CPMouseEnteredMask=1<<CPMouseEntered;
CPMouseExitedMask=1<<CPMouseExited;
CPCursorUpdateMask=1<<CPCursorUpdate;
CPKeyDownMask=1<<CPKeyDown;
CPKeyUpMask=1<<CPKeyUp;
CPFlagsChangedMask=1<<CPFlagsChanged;
CPAppKitDefinedMask=1<<CPAppKitDefined;
CPSystemDefinedMask=1<<CPSystemDefined;
CPApplicationDefinedMask=1<<CPApplicationDefined;
CPPeriodicMask=1<<CPPeriodic;
CPScrollWheelMask=1<<CPScrollWheel;
CPAnyEventMask=4294967295;
CPDOMEventDoubleClick="dblclick",CPDOMEventMouseDown="mousedown",CPDOMEventMouseUp="mouseup",CPDOMEventMouseMoved="mousemove",CPDOMEventMouseDragged="mousedrag",CPDOMEventKeyUp="keyup",CPDOMEventKeyDown="keydown",CPDOMEventKeyPress="keypress";
CPDOMEventCopy="copy";
CPDOMEventPaste="paste";
CPDOMEventScrollWheel="mousewheel";
CPDOMEventTouchStart="touchstart";
CPDOMEventTouchMove="touchmove";
CPDOMEventTouchEnd="touchend";
CPDOMEventTouchCancel="touchcancel";
var _1=0,_2=nil;
var _3=objj_allocateClassPair(CPObject,"CPEvent"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_type"),new objj_ivar("_location"),new objj_ivar("_modifierFlags"),new objj_ivar("_timestamp"),new objj_ivar("_context"),new objj_ivar("_eventNumber"),new objj_ivar("_clickCount"),new objj_ivar("_pressure"),new objj_ivar("_window"),new objj_ivar("_characters"),new objj_ivar("_isARepeat"),new objj_ivar("_keyCode"),new objj_ivar("_DOMEvent"),new objj_ivar("_deltaX"),new objj_ivar("_deltaY"),new objj_ivar("_deltaZ")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("_initMouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:"),function(_5,_6,_7,_8,_9,_a,_b,_c,_d,_e,_f){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_type=_7;
_location=CPPointCreateCopy(_8);
_modifierFlags=_9;
_timestamp=_a;
_context=_c;
_eventNumber=_d;
_clickCount=_e;
_pressure=_f;
_window=objj_msgSend(CPApp,"windowWithWindowNumber:",_b);
}
return _5;
}
}),new objj_method(sel_getUid("_initKeyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:"),function(_10,_11,_12,_13,_14,_15,_16,_17,_18,_19,_1a,_1b){
with(_10){
_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPObject")},"init");
if(_10){
_type=_12;
_location=CPPointCreateCopy(_13);
_modifierFlags=_14;
_timestamp=_15;
_context=_17;
_characters=_18;
_charactersIgnoringModifiers=_19;
_isARepeat=_1a;
_keyCode=_1b;
_window=objj_msgSend(CPApp,"windowWithWindowNumber:",_16);
}
return _10;
}
}),new objj_method(sel_getUid("_initOtherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"),function(_1c,_1d,_1e,_1f,_20,_21,_22,_23,_24,_25,_26){
with(_1c){
_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("CPObject")},"init");
if(_1c){
_type=_1e;
_location=CPPointCreateCopy(_1f);
_modifierFlags=_20;
_timestamp=_21;
_context=_23;
_subtype=_24;
_data1=_25;
_data2=_26;
}
return _1c;
}
}),new objj_method(sel_getUid("locationInWindow"),function(_27,_28){
with(_27){
return _location;
}
}),new objj_method(sel_getUid("modifierFlags"),function(_29,_2a){
with(_29){
return _modifierFlags;
}
}),new objj_method(sel_getUid("timestamp"),function(_2b,_2c){
with(_2b){
return _timestamp;
}
}),new objj_method(sel_getUid("type"),function(_2d,_2e){
with(_2d){
return _type;
}
}),new objj_method(sel_getUid("window"),function(_2f,_30){
with(_2f){
return _window;
}
}),new objj_method(sel_getUid("windowNumber"),function(_31,_32){
with(_31){
return _windowNumber;
}
}),new objj_method(sel_getUid("buttonNumber"),function(_33,_34){
with(_33){
return _buttonNumber;
}
}),new objj_method(sel_getUid("clickCount"),function(_35,_36){
with(_35){
return _clickCount;
}
}),new objj_method(sel_getUid("characters"),function(_37,_38){
with(_37){
return _characters;
}
}),new objj_method(sel_getUid("charactersIgnoringModifiers"),function(_39,_3a){
with(_39){
return _charactersIgnoringModifiers;
}
}),new objj_method(sel_getUid("isARepeat"),function(_3b,_3c){
with(_3b){
return _isARepeat;
}
}),new objj_method(sel_getUid("keyCode"),function(_3d,_3e){
with(_3d){
return _keyCode;
}
}),new objj_method(sel_getUid("pressure"),function(_3f,_40){
with(_3f){
return _pressure;
}
}),new objj_method(sel_getUid("_DOMEvent"),function(_41,_42){
with(_41){
return _DOMEvent;
}
}),new objj_method(sel_getUid("deltaX"),function(_43,_44){
with(_43){
return _deltaX;
}
}),new objj_method(sel_getUid("deltaY"),function(_45,_46){
with(_45){
return _deltaY;
}
}),new objj_method(sel_getUid("deltaZ"),function(_47,_48){
with(_47){
return _deltaZ;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("keyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:"),function(_49,_4a,_4b,_4c,_4d,_4e,_4f,_50,_51,_52,_53,_54){
with(_49){
return objj_msgSend(objj_msgSend(_49,"alloc"),"_initKeyEventWithType:location:modifierFlags:timestamp:windowNumber:context:characters:charactersIgnoringModifiers:isARepeat:keyCode:",_4b,_4c,_4d,_4e,_4f,_50,_51,_52,_53,_54);
}
}),new objj_method(sel_getUid("mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:"),function(_55,_56,_57,_58,_59,_5a,_5b,_5c,_5d,_5e,_5f){
with(_55){
return objj_msgSend(objj_msgSend(_55,"alloc"),"_initMouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",_57,_58,_59,_5a,_5b,_5c,_5d,_5e,_5f);
}
}),new objj_method(sel_getUid("otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"),function(_60,_61,_62,_63,_64,_65,_66,_67,_68,_69,_6a){
with(_60){
return objj_msgSend(objj_msgSend(_60,"alloc"),"_initOtherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",_62,_63,_64,_65,_66,_67,_68,_69,_6a);
}
}),new objj_method(sel_getUid("startPeriodicEventsAfterDelay:withPeriod:"),function(_6b,_6c,_6d,_6e){
with(_6b){
_1=_6e;
_2=window.setTimeout(function(){
_2=window.setInterval(_CPEventFirePeriodEvent,_6e*1000);
},_6d*1000);
}
}),new objj_method(sel_getUid("stopPeriodicEvents"),function(_6f,_70){
with(_6f){
if(_2===nil){
return;
}
window.clearTimeout(_2);
_2=nil;
}
})]);
_CPEventFirePeriodEvent=function(){
objj_msgSend(CPApp,"sendEvent:",objj_msgSend(CPEvent,"otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:",CPPeriodic,{x:0,y:0},0,0,0,nil,0,0,0));
};
p;14;CPFlashMovie.jI;21;Foundation/CPObject.jc;616;
var _1=objj_allocateClassPair(CPObject,"CPFlashMovie"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_fileName")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFile:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_fileName=_5;
}
return _3;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("flashMovieWithFile:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(objj_msgSend(_6,"alloc"),"initWithFile:",_8);
}
})]);
p;13;CPFlashView.ji;19;CPDOMWindowBridge.ji;14;CPFlashMovie.ji;8;CPView.jc;2148;
var _1=objj_allocateClassPair(CPView,"CPFlashView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_flashMovie"),new objj_ivar("_DOMEmbedElement"),new objj_ivar("_DOMMParamElement"),new objj_ivar("_DOMObjectElement")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPView")},"initWithFrame:",_5);
if(_3){
_DOMObjectElement=document.createElement("object");
_DOMObjectElement.width="100%";
_DOMObjectElement.height="100%";
_DOMObjectElement.style.top="0px";
_DOMObjectElement.style.left="0px";
_DOMParamElement=document.createElement("param");
_DOMParamElement.name="movie";
_DOMObjectElement.appendChild(_DOMParamElement);
var _6=document.createElement("param");
_6.name="wmode";
_6.value="transparent";
_DOMObjectElement.appendChild(_6);
_DOMEmbedElement=document.createElement("embed");
_DOMEmbedElement.type="application/x-shockwave-flash";
_DOMEmbedElement.setAttribute("wmode","transparent");
_DOMEmbedElement.width="100%";
_DOMEmbedElement.height="100%";
_DOMElement.appendChild(_DOMEmbedElement);
_DOMElement.appendChild(_DOMObjectElement);
}
return _3;
}
}),new objj_method(sel_getUid("setFlashMovie:"),function(_7,_8,_9){
with(_7){
if(_flashMovie==_9){
return;
}
_flashMovie=_9;
_DOMParamElement.value=_9._fileName;
if(_DOMEmbedElement){
_DOMEmbedElement.src=_9._fileName;
}
}
}),new objj_method(sel_getUid("flashMovie"),function(_a,_b){
with(_a){
return _flashMovie;
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_c,_d,_e){
with(_c){
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseDown:"),function(_f,_10,_11){
with(_f){
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_12,_13,_14){
with(_12){
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_propagateCurrentDOMEvent:",YES);
}
})]);
p;8;CPFont.jc;2706;
var _1={};
_CPFontSystemFontFace="Arial";
var _2=objj_allocateClassPair(CPObject,"CPFont"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_name"),new objj_ivar("_size"),new objj_ivar("_isBold"),new objj_ivar("_cssString")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("_initWithName:size:bold:"),function(_4,_5,_6,_7,_8){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_name=_6;
_size=_7;
_isBold=_8;
_cssString=(_isBold?"bold ":"")+ROUND(_7)+"px '"+_6+"'";
_1[_cssString]=_4;
}
return _4;
}
}),new objj_method(sel_getUid("size"),function(_9,_a){
with(_9){
return _size;
}
}),new objj_method(sel_getUid("cssString"),function(_b,_c){
with(_b){
return _cssString;
}
}),new objj_method(sel_getUid("familyName"),function(_d,_e){
with(_d){
return _name;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("fontWithName:size:"),function(_f,_10,_11,_12){
with(_f){
return _1[(NO?"bold ":"")+ROUND(_12)+"px '"+_11+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_11,_12,NO);
}
}),new objj_method(sel_getUid("boldFontWithName:size:"),function(_13,_14,_15,_16){
with(_13){
return _1[(YES?"bold ":"")+ROUND(_16)+"px '"+_15+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_15,_16,YES);
}
}),new objj_method(sel_getUid("systemFontOfSize:"),function(_17,_18,_19){
with(_17){
return _1[(NO?"bold ":"")+ROUND(_19)+"px '"+_CPFontSystemFontFace+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_CPFontSystemFontFace,_19,NO);
}
}),new objj_method(sel_getUid("boldSystemFontOfSize:"),function(_1a,_1b,_1c){
with(_1a){
return _1[(YES?"bold ":"")+ROUND(_1c)+"px '"+_CPFontSystemFontFace+"'"]||objj_msgSend(objj_msgSend(CPFont,"alloc"),"_initWithName:size:bold:",_CPFontSystemFontFace,_1c,YES);
}
})]);
var _1d="CPFontNameKey",_1e="CPFontSizeKey",_1f="CPFontIsBoldKey";
var _2=objj_getClass("CPFont");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPFont\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_20,_21,_22){
with(_20){
return objj_msgSend(_20,"_initWithName:size:bold:",objj_msgSend(_22,"decodeObjectForKey:",_1d),objj_msgSend(_22,"decodeFloatForKey:",_1e),objj_msgSend(_22,"decodeBoolForKey:",_1f));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_23,_24,_25){
with(_23){
objj_msgSend(_25,"encodeObject:forKey:",_name,_1d);
objj_msgSend(_25,"encodeFloat:forKey:",_size,_1e);
objj_msgSend(_25,"encodeBool:forKey:",_isBold,_1f);
}
})]);
p;15;CPFontManager.jI;21;Foundation/CPObject.jI;15;AppKit/CPFont.jc;3249;
var _1=nil,_2=Nil;
var _3=objj_allocateClassPair(CPObject,"CPFontManager"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_availableFonts")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("availableFonts"),function(_5,_6){
with(_5){
if(!_availableFonts){
_7=document.createElement("span");
_7.fontSize="24px";
_7.appendChild(document.createTextNode("mmmmmmmmmml"));
var _8=document.createElement("div");
_8.style.position="absolute";
_8.style.top="-1000px";
_8.appendChild(_7);
document.getElementsByTagName("body")[0].appendChild(_8);
_9=_a(["monospace","serif","sans-serif","cursive"]);
_availableFonts=[];
for(var i=0;i<_c.length;i++){
var _d=_e(_c[i]);
if(_d){
_availableFonts.push(_c[i]);
}
}
}
return _availableFonts;
}
}),new objj_method(sel_getUid("fontWithNameIsAvailable:"),function(_f,_10,_11){
with(_f){
return _e(_11);
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("sharedFontManager"),function(_12,_13){
with(_12){
if(!_1){
_1=objj_msgSend(objj_msgSend(_2,"alloc"),"init");
}
return _1;
}
}),new objj_method(sel_getUid("setFontManagerFactory:"),function(_14,_15,_16){
with(_14){
_2=_16;
}
})]);
var _7,_9,_c=["American Typewriter","Apple Chancery","Arial","Arial Black","Arial Narrow","Arial Rounded MT Bold","Arial Unicode MS","Big Caslon","Bitstream Vera Sans","Bitstream Vera Sans Mono","Bitstream Vera Serif","Brush Script MT","Cambria","Caslon","Castellar","Cataneo BT","Centaur","Century Gothic","Century Schoolbook","Century Schoolbook L","Comic Sans","Comic Sans MS","Consolas","Constantia","Cooper Black","Copperplate","Copperplate Gothic Bold","Copperplate Gothic Light","Corbel","Courier","Courier New","Futura","Geneva","Georgia","Georgia Ref","Geeza Pro","Gigi","Gill Sans","Gill Sans MT","Gill Sans MT Condensed","Gill Sans MT Ext Condensed Bold","Gill Sans Ultra Bold","Gill Sans Ultra Bold Condensed","Helvetica","Helvetica Narrow","Helvetica Neue","Herculanum","High Tower Text","Highlight LET","Hoefler Text","Impact","Imprint MT Shadow","Lucida","Lucida Bright","Lucida Calligraphy","Lucida Console","Lucida Fax","Lucida Grande","Lucida Handwriting","Lucida Sans","Lucida Sans Typewriter","Lucida Sans Unicode","Marker Felt","Microsoft Sans Serif","Milano LET","Minion Web","MisterEarl BT","Mistral","Monaco","Monotype Corsiva","Monotype.com","New Century Schoolbook","New York","News Gothic MT","Papyrus","Tahoma","Techno","Tempus Sans ITC","Terminal","Textile","Times","Times New Roman","Tiranti Solid LET","Trebuchet MS","Verdana","Verdana Ref","Zapfino"];
var _e=function(_17){
for(var i=0;i<_9.length;i++){
if(_19(_9[i],_17)){
return true;
}
}
return false;
};
var _1a={};
var _19=function(_1b,_1c){
var a;
if(_1a[_1b]){
a=_1a[_1b];
}else{
_7.style.fontFamily="\""+_1b+"\"";
_1a[_1b]=a={w:_7.offsetWidth,h:_7.offsetHeight};
}
_7.style.fontFamily="\""+_1c+"\", \""+_1b+"\"";
var _1e=_7.offsetWidth;
var _1f=_7.offsetHeight;
return (a.w!=_1e||a.h!=_1f);
};
var _a=function(_20){
for(var i=0;i<_20.length;i++){
for(var j=0;j<i;j++){
if(_19(_20[i],_20[j])){
return [_20[i],_20[j]];
}
}
}
return [_20[0]];
};
objj_msgSend(CPFontManager,"setFontManagerFactory:",objj_msgSend(CPFontManager,"class"));
p;12;CPGeometry.ji;12;CGGeometry.jc;4107;
CPMinXEdge=0;
CPMinYEdge=1;
CPMaxXEdge=2;
CPMaxYEdge=3;
CPMakePoint=CGPointMake;
CPMakeSize=CGSizeMake;
CPMakeRect=CGRectMake;
CPPointCreateCopy=function(_1){
return {x:_1.x,y:_1.y};
};
CPPointMake=function(x,y){
return {x:x,y:y};
};
CPRectInset=function(_4,dX,dY){
return CPRectMake(_4.origin.x+dX,_4.origin.y+dY,_4.size.width-2*dX,_4.size.height-2*dY);
};
CPRectIntegral=function(_7){
alert("CPRectIntegral unimplemented");
};
CPRectIntersection=function(_8,_9){
var _a=CPRectMake(Math.max(CPRectGetMinX(_8),CPRectGetMinX(_9)),Math.max(CPRectGetMinY(_8),CPRectGetMinY(_9)),0,0);
_a.size.width=Math.min(CPRectGetMaxX(_8),CPRectGetMaxX(_9))-CPRectGetMinX(_a);
_a.size.height=Math.min(CPRectGetMaxY(_8),CPRectGetMaxY(_9))-CPRectGetMinY(_a);
return CPRectIsEmpty(_a)?CPRectMakeZero():_a;
};
CPRectCreateCopy=function(_b){
return {origin:CPPointCreateCopy(_b.origin),size:CPSizeCreateCopy(_b.size)};
};
CPRectMake=function(x,y,_e,_f){
return {origin:CPPointMake(x,y),size:CPSizeMake(_e,_f)};
};
CPRectOffset=function(_10,dX,dY){
return CPRectMake(_10.origin.x+dX,_10.origin.y+dY,_10.size.width,_10.size.height);
};
CPRectStandardize=function(_13){
var _14=CPRectGetWidth(_13),_15=CPRectGetHeight(_13),_16=CPRectCreateCopy(_13);
if(_14<0){
_16.origin.x+=_14;
_16.size.width=-_14;
}
if(_15<0){
_16.origin.y+=_15;
_16.size.height=-_15;
}
return _16;
};
CPRectUnion=function(_17,_18){
var _19=Math.min(CPRectGetMinX(_17),CPRectGetMinX(_18)),_1a=Math.min(CPRectGetMinY(_17),CPRectGetMinY(_18)),_1b=Math.max(CPRectGetMaxX(_17),CPRectGetMaxX(_18)),_1c=Math.max(CPRectGetMaxY(_17),CPRectGetMaxY(_18));
return CPRectMake(_19,_1a,_1b-_19,_1c-_1a);
};
CPSizeCreateCopy=function(_1d){
return {width:_1d.width,height:_1d.height};
};
CPSizeMake=function(_1e,_1f){
return {width:_1e,height:_1f};
};
CPRectContainsPoint=function(_20,_21){
return _21.x>=CPRectGetMinX(_20)&&_21.y>=CPRectGetMinY(_20)&&_21.x<CPRectGetMaxX(_20)&&_21.y<CPRectGetMaxY(_20);
};
CPRectContainsRect=function(_22,_23){
return CPRectEqualToRect(CPUnionRect(_22,_23),_23);
};
CPPointEqualToPoint=function(_24,_25){
return _24.x==_25.x&&_24.y==_25.y;
};
CPRectEqualToRect=function(_26,_27){
return CPPointEqualToPoint(_26.origin,_27.origin)&&CPSizeEqualToSize(_26.size,_27.size);
};
CPRectGetHeight=function(_28){
return _28.size.height;
};
CPRectGetMaxX=function(_29){
return _29.origin.x+_29.size.width;
};
CPRectGetMaxY=function(_2a){
return _2a.origin.y+_2a.size.height;
};
CPRectGetMidX=function(_2b){
return _2b.origin.x+(_2b.size.width)/2;
};
CPRectGetMidY=function(_2c){
return _2c.origin.y+(_2c.size.height)/2;
};
CPRectGetMinX=function(_2d){
return _2d.origin.x;
};
CPRectGetMinY=function(_2e){
return _2e.origin.y;
};
CPRectGetWidth=function(_2f){
return _2f.size.width;
};
CPRectIntersectsRect=function(_30,_31){
return !CPRectIsEmpty(CPRectIntersection(_30,_31));
};
CPRectIsEmpty=function(_32){
return _32.size.width<=0||_32.size.height<=0;
};
CPRectIsNull=function(_33){
return _33.size.width<=0||_33.size.height<=0;
};
CPSizeEqualToSize=function(_34,_35){
return _34.width==_35.width&&_34.height==_35.height;
};
CPStringFromPoint=function(_36){
return "{"+_36.x+", "+_36.y+"}";
};
CPStringFromSize=function(_37){
return "{"+_37.width+", "+_37.height+"}";
};
CPStringFromRect=function(_38){
return "{"+CPStringFromPoint(_38.origin)+", "+CPStringFromSize(_38.size)+"}";
};
CPPointFromString=function(_39){
var _3a=_39.indexOf(",");
return {x:parseFloat(_39.substr(1,_3a-1),10),y:parseFloat(_39.substring(_3a+1,_39.length),10)};
};
CPSizeFromString=function(_3b){
var _3c=_3b.indexOf(",");
return {width:parseFloat(_3b.substr(1,_3c-1),10),height:parseFloat(_3b.substring(_3c+1,_3b.length),10)};
};
CPRectFromString=function(_3d){
var _3e=_3d.indexOf(",",_3d.indexOf(",")+1);
return {origin:CPPointFromString(_3d.substr(1,_3e-1)),size:CPSizeFromString(_3d.substring(_3e+2,_3d.length))};
};
CPPointFromEvent=function(_3f){
return CPPointMake(_3f.clientX,_3f.clientY,0);
};
CPSizeMakeZero=function(){
return CPSizeMake(0,0);
};
CPRectMakeZero=function(){
return CPRectMake(0,0,0,0);
};
CPPointMakeZero=function(){
return CPPointMake(0,0,0);
};
p;19;CPGraphicsContext.jc;960;
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPGraphicsContext"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_graphicsPort")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithGraphicsPort:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_graphicsPort=_6;
}
return _4;
}
}),new objj_method(sel_getUid("graphicsPort"),function(_7,_8){
with(_7){
return _graphicsPort;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("currentContext"),function(_9,_a){
with(_9){
return _1;
}
}),new objj_method(sel_getUid("setCurrentContext:"),function(_b,_c,_d){
with(_b){
_1=_d;
}
}),new objj_method(sel_getUid("graphicsContextWithGraphicsPort:flipped:"),function(_e,_f,_10,_11){
with(_e){
return objj_msgSend(objj_msgSend(_e,"alloc"),"initWithGraphicsPort:",_10);
}
})]);
p;9;CPImage.jI;21;Foundation/CPBundle.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPObject.jI;22;Foundation/CPRunLoop.jI;21;Foundation/CPString.ji;12;CPGeometry.jc;8682;
CPImageLoadStatusInitialized=0;
CPImageLoadStatusLoading=1;
CPImageLoadStatusCompleted=2;
CPImageLoadStatusCancelled=3;
CPImageLoadStatusInvalidData=4;
CPImageLoadStatusUnexpectedEOF=5;
CPImageLoadStatusReadError=6;
CPImageDidLoadNotification="CPImageDidLoadNotification";
CPImageInBundle=function(_1,_2,_3){
if(!_3){
_3=objj_msgSend(CPBundle,"mainBundle");
}
if(_2){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_3,"pathForResource:",_1),_2);
}
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_3,"pathForResource:",_1));
};
var _4=objj_getClass("CPBundle");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPBundle\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("pathForResource:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"resourcePath")+"/"+_8;
}
})]);
var _4=objj_allocateClassPair(CPObject,"CPImage"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_size"),new objj_ivar("_filename"),new objj_ivar("_delegate"),new objj_ivar("_loadStatus"),new objj_ivar("_image")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initByReferencingFile:size:"),function(_9,_a,_b,_c){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPObject")},"init");
if(_9){
_size=CPSizeCreateCopy(_c);
_filename=_b;
_loadStatus=CPImageLoadStatusInitialized;
}
return _9;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:size:"),function(_d,_e,_f,_10){
with(_d){
_d=objj_msgSend(_d,"initByReferencingFile:size:",_f,_10);
if(_d){
objj_msgSend(_d,"load");
}
return _d;
}
}),new objj_method(sel_getUid("initWithContentsOfFile:"),function(_11,_12,_13){
with(_11){
_11=objj_msgSend(_11,"initByReferencingFile:size:",_13,CGSizeMake(-1,-1));
if(_11){
objj_msgSend(_11,"load");
}
return _11;
}
}),new objj_method(sel_getUid("filename"),function(_14,_15){
with(_14){
return _filename;
}
}),new objj_method(sel_getUid("setSize:"),function(_16,_17,_18){
with(_16){
_size=CGSizeMakeCopy(_18);
}
}),new objj_method(sel_getUid("size"),function(_19,_1a){
with(_19){
return _size;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_1b,_1c,_1d){
with(_1b){
_delegate=_1d;
}
}),new objj_method(sel_getUid("delegate"),function(_1e,_1f){
with(_1e){
return _delegate;
}
}),new objj_method(sel_getUid("loadStatus"),function(_20,_21){
with(_20){
return _loadStatus;
}
}),new objj_method(sel_getUid("load"),function(_22,_23){
with(_22){
if(_loadStatus==CPImageLoadStatusLoading||_loadStatus==CPImageLoadStatusCompleted){
return;
}
_loadStatus=CPImageLoadStatusLoading;
_image=new Image();
var _24=YES;
_image.onload=function(){
if(_24){
window.setTimeout(function(){
objj_msgSend(_22,"_imageDidLoad");
},0);
}else{
objj_msgSend(_22,"_imageDidLoad");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
};
_image.onerror=function(){
if(_24){
window.setTimeout(function(){
objj_msgSend(_22,"_imageDidError");
},0);
}else{
objj_msgSend(_22,"_imageDidError");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
};
_image.onabort=function(){
if(_24){
window.setTimeout(function(){
objj_msgSend(_22,"_imageDidAbort");
},0);
}else{
objj_msgSend(_22,"_imageDidAbort");
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
}
};
_image.src=_filename;
_24=NO;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_25,_26){
with(_25){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_27,_28){
with(_27){
return NO;
}
}),new objj_method(sel_getUid("_imageDidLoad"),function(_29,_2a){
with(_29){
_loadStatus=CPImageLoadStatusCompleted;
if(!_size||(_size.width==-1&&_size.height==-1)){
_size=CGSizeMake(_image.width,_image.height);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPImageDidLoadNotification,_29);
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidLoad:"))){
objj_msgSend(_delegate,"imageDidLoad:",_29);
}
}
}),new objj_method(sel_getUid("_imageDidError"),function(_2b,_2c){
with(_2b){
_loadStatus=CPImageLoadStatusReadError;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidError:"))){
objj_msgSend(_delegate,"imageDidError:",_2b);
}
}
}),new objj_method(sel_getUid("_imageDidAbort"),function(_2d,_2e){
with(_2d){
_loadStatus=CPImageLoadStatusCancelled;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("imageDidAbort:"))){
objj_msgSend(_delegate,"imageDidAbort:",_2d);
}
}
})]);
var _4=objj_getClass("CPImage");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPImage\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(_2f,"initWithContentsOfFile:size:",objj_msgSend(_31,"decodeObjectForKey:","CPFilename"),objj_msgSend(_31,"decodeSizeForKey:","CPSize"));
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_32,_33,_34){
with(_32){
objj_msgSend(_34,"encodeObject:forKey:",_filename,"CPFilename");
objj_msgSend(_34,"encodeSize:forKey:",_size,"CPSize");
}
})]);
var _4=objj_allocateClassPair(CPObject,"CPThreePartImage"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_imageSlices"),new objj_ivar("_isVertical")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithImageSlices:isVertical:"),function(_35,_36,_37,_38){
with(_35){
_35=objj_msgSendSuper({receiver:_35,super_class:objj_getClass("CPObject")},"init");
if(_35){
_imageSlices=_37;
_isVertical=_38;
}
return _35;
}
}),new objj_method(sel_getUid("filename"),function(_39,_3a){
with(_39){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_3b,_3c){
with(_3b){
return _imageSlices;
}
}),new objj_method(sel_getUid("isVertical"),function(_3d,_3e){
with(_3d){
return _isVertical;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_3f,_40){
with(_3f){
return YES;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_41,_42){
with(_41){
return NO;
}
})]);
var _43="CPThreePartImageImageSlicesKey",_44="CPThreePartImageIsVerticalKey";
var _4=objj_getClass("CPThreePartImage");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPThreePartImage\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_45,_46,_47){
with(_45){
_45=objj_msgSendSuper({receiver:_45,super_class:objj_getClass("CPObject")},"init");
if(_45){
_imageSlices=objj_msgSend(_47,"decodeObjectForKey:",_43);
_isVertical=objj_msgSend(_47,"decodeBoolForKey:",_44);
}
return _45;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_4a,"encodeObject:forKey:",_imageSlices,_43);
objj_msgSend(_4a,"encodeBool:forKey:",_isVertical,_44);
}
})]);
var _4=objj_allocateClassPair(CPObject,"CPNinePartImage"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_imageSlices")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithImageSlices:"),function(_4b,_4c,_4d){
with(_4b){
_4b=objj_msgSendSuper({receiver:_4b,super_class:objj_getClass("CPObject")},"init");
if(_4b){
_imageSlices=_4d;
}
return _4b;
}
}),new objj_method(sel_getUid("filename"),function(_4e,_4f){
with(_4e){
return "";
}
}),new objj_method(sel_getUid("imageSlices"),function(_50,_51){
with(_50){
return _imageSlices;
}
}),new objj_method(sel_getUid("isThreePartImage"),function(_52,_53){
with(_52){
return NO;
}
}),new objj_method(sel_getUid("isNinePartImage"),function(_54,_55){
with(_54){
return YES;
}
})]);
var _56="CPNinePartImageImageSlicesKey";
var _4=objj_getClass("CPNinePartImage");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPNinePartImage\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_57,_58,_59){
with(_57){
_57=objj_msgSendSuper({receiver:_57,super_class:objj_getClass("CPObject")},"init");
if(_57){
_imageSlices=objj_msgSend(_59,"decodeObjectForKey:",_56);
}
return _57;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_5c,"encodeObject:forKey:",_imageSlices,_56);
}
})]);
p;13;CPImageView.jI;33;Foundation/CPNotificationCenter.ji;11;CPControl.ji;9;CPImage.ji;14;CPShadowView.jc;7528;
CPScaleProportionally=0;
CPScaleToFit=1;
CPScaleNone=2;
var _1=nil;
var _2=3,_3=3,_4=3,_5=5,_6=_4+_5,_7=_2+_3;
var _8=objj_allocateClassPair(CPControl,"CPImageView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_DOMImageElement"),new objj_ivar("_hasShadow"),new objj_ivar("_shadowView"),new objj_ivar("_imageRect")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPControl")},"initWithFrame:",_c);
if(_a){
_DOMImageElement=document.createElement("img");
_DOMImageElement.style.position="absolute";
_DOMImageElement.style.left="0px";
_DOMImageElement.style.top="0px";
if(_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMImageElement;
_DOMImageElement.style.visibility="hidden";
}
return _a;
}
}),new objj_method(sel_getUid("image"),function(_d,_e){
with(_d){
return objj_msgSend(_d,"objectValue");
}
}),new objj_method(sel_getUid("setImage:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"setObjectValue:",_11);
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_12,_13,_14){
with(_12){
var _15=objj_msgSend(_12,"objectValue");
if(_15===_14){
return;
}
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPControl")},"setObjectValue:",_14);
var _16=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_15){
objj_msgSend(_16,"removeObserver:name:object:",_12,CPImageDidLoadNotification,_15);
}
var _17=objj_msgSend(_12,"objectValue");
_DOMImageElement.src=_17?objj_msgSend(_17,"filename"):"";
var _18=objj_msgSend(_17,"size");
if(_18&&_18.width===-1&&_18.height===-1){
objj_msgSend(_16,"addObserver:selector:name:object:",_12,sel_getUid("imageDidLoad:"),CPImageDidLoadNotification,_17);
_DOMImageElement.width=0;
_DOMImageElement.height=0;
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
objj_msgSend(_12,"hideOrDisplayContents");
objj_msgSend(_12,"setNeedsLayout");
objj_msgSend(_12,"setNeedsDisplay:",YES);
}
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_19,"hideOrDisplayContents");
objj_msgSend(_19,"setNeedsLayout");
objj_msgSend(_19,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("hasShadow"),function(_1c,_1d){
with(_1c){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_1e,_1f,_20){
with(_1e){
if(_hasShadow==_20){
return;
}
_hasShadow=_20;
if(_hasShadow){
_shadowView=objj_msgSend(objj_msgSend(CPShadowView,"alloc"),"initWithFrame:",objj_msgSend(_1e,"bounds"));
objj_msgSend(_1e,"addSubview:",_shadowView);
objj_msgSend(_1e,"setNeedsLayout");
objj_msgSend(_1e,"setNeedsDisplay:",YES);
}else{
objj_msgSend(_shadowView,"removeFromSuperview");
_shadowView=nil;
}
objj_msgSend(_1e,"hideOrDisplayContents");
}
}),new objj_method(sel_getUid("setImageScaling:"),function(_21,_22,_23){
with(_21){
objj_msgSendSuper({receiver:_21,super_class:objj_getClass("CPControl")},"setImageScaling:",_23);
if(objj_msgSend(_21,"currentValueForThemedAttributeName:","image-scaling")===CPScaleToFit){
if(!_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext=[];
}
var _24=_DOMImageElement.CPDOMDisplayContext[0];
if(!(_24>=0)){
_24=_DOMImageElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_24]=0;
CPDOMDisplayServerInstructions[_24+1]=_DOMImageElement;
CPDOMDisplayServerInstructions[_24+2]=NULL;
CPDOMDisplayServerInstructions[_24+3]=0;
CPDOMDisplayServerInstructions[_24+4]=0;
}
objj_msgSend(_21,"setNeedsLayout");
objj_msgSend(_21,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("hideOrDisplayContents"),function(_25,_26){
with(_25){
if(!objj_msgSend(_25,"image")){
_DOMImageElement.style.visibility="hidden";
objj_msgSend(_shadowView,"setHidden:",YES);
}else{
_DOMImageElement.style.visibility="visible";
objj_msgSend(_shadowView,"setHidden:",NO);
}
}
}),new objj_method(sel_getUid("imageRect"),function(_27,_28){
with(_27){
return _imageRect;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_29,_2a){
with(_29){
if(!objj_msgSend(_29,"image")){
return;
}
var _2b=objj_msgSend(_29,"bounds"),_2c=objj_msgSend(_29,"image"),_2d=objj_msgSend(_29,"currentValueForThemedAttributeName:","image-scaling"),x=0,y=0,_30=(_hasShadow?_7:0),_31=(_hasShadow?_6:0),_32=(_2b.size.width),_33=(_2b.size.height),_34=_32-_30,_35=_33-_31;
if(_2d===CPScaleToFit){
_DOMImageElement.width=ROUND(_34);
_DOMImageElement.height=ROUND(_35);
}else{
var _36=objj_msgSend(_2c,"size");
if(_36.width==-1&&_36.height==-1){
return;
}
if(_2d===CPScaleProportionally){
if(_34>=_36.width&&_35>=_36.height){
_34=_36.width;
_35=_36.height;
}else{
var _37=_36.width/_36.height,_38=_34/_35;
if(_38>_37){
_34=_35*_37;
}else{
_35=_34/_37;
}
}
_DOMImageElement.width=ROUND(_34);
_DOMImageElement.height=ROUND(_35);
}else{
_34=_36.width;
_35=_36.height;
}
if(_2d==CPScaleNone){
_DOMImageElement.width=ROUND(_36.width);
_DOMImageElement.height=ROUND(_36.height);
}
var x=(_32-_34)/2,y=(_33-_35)/2;
if(!_DOMImageElement.CPDOMDisplayContext){
_DOMImageElement.CPDOMDisplayContext=[];
}
var _39=_DOMImageElement.CPDOMDisplayContext[0];
if(!(_39>=0)){
_39=_DOMImageElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_39]=0;
CPDOMDisplayServerInstructions[_39+1]=_DOMImageElement;
CPDOMDisplayServerInstructions[_39+2]=NULL;
CPDOMDisplayServerInstructions[_39+3]=x;
CPDOMDisplayServerInstructions[_39+4]=y;
}
_imageRect={origin:{x:x,y:y},size:{width:_34,height:_35}};
if(_hasShadow){
objj_msgSend(_shadowView,"setFrame:",{origin:{x:x-_2,y:y-_4},size:{width:_34+_30,height:_35+_31}});
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_3a,_3b,_3c){
with(_3a){
objj_msgSend(objj_msgSend(_3a,"nextResponder"),"mouseDown:",_3c);
}
})]);
var _3d="CPImageViewImageKey",_3e="CPImageViewImageScalingKey",_3f="CPImageViewHasShadowKey";
var _8=objj_getClass("CPImageView");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPImageView\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_40,_41,_42){
with(_40){
_DOMImageElement=document.createElement("img");
_DOMImageElement.style.position="absolute";
_DOMImageElement.style.left="0px";
_DOMImageElement.style.top="0px";
_DOMImageElement.style.visibility="hidden";
_40=objj_msgSendSuper({receiver:_40,super_class:objj_getClass("CPControl")},"initWithCoder:",_42);
if(_40){
_DOMElement.appendChild(_DOMImageElement);
objj_msgSend(_40,"setHasShadow:",objj_msgSend(_42,"decodeBoolForKey:",_3f));
objj_msgSend(_40,"setNeedsLayout");
objj_msgSend(_40,"setNeedsDisplay:",YES);
}
return _40;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_43,_44,_45){
with(_43){
if(_shadowView){
var _46=_subviews;
_subviews=objj_msgSend(_subviews,"copy");
objj_msgSend(_subviews,"removeObjectIdenticalTo:",_shadowView);
}
objj_msgSendSuper({receiver:_43,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_45);
if(_shadowView){
_subviews=_46;
}
objj_msgSend(_45,"encodeBool:forKey:",_hasShadow,_3f);
}
})]);
p;8;CPMenu.jI;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;33;Foundation/CPNotificationCenter.jI;21;Foundation/CPString.ji;15;CPApplication.ji;12;CPClipView.ji;12;CPMenuItem.ji;9;CPPanel.jc;43866;
CPMenuDidAddItemNotification="CPMenuDidAddItemNotification";
CPMenuDidChangeItemNotification="CPMenuDidChangeItemNotification";
CPMenuDidRemoveItemNotification="CPMenuDidRemoveItemNotification";
CPMenuDidEndTrackingNotification="CPMenuDidEndTrackingNotification";
var _1=19;
var _2=NO,_3="",_4=nil,_5=1,_6=nil,_7=nil;
var _8=objj_allocateClassPair(CPObject,"CPMenu"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_supermenu"),new objj_ivar("_title"),new objj_ivar("_items"),new objj_ivar("_attachedMenu"),new objj_ivar("_autoenablesItems"),new objj_ivar("_showsStateColumn"),new objj_ivar("_delegate"),new objj_ivar("_highlightedIndex"),new objj_ivar("_menuWindow")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("menuBarHeight"),function(_a,_b){
with(_a){
if(_a==objj_msgSend(CPApp,"mainMenu")){
return _1;
}
return 0;
}
}),new objj_method(sel_getUid("initWithTitle:"),function(_c,_d,_e){
with(_c){
_c=objj_msgSendSuper({receiver:_c,super_class:objj_getClass("CPObject")},"init");
if(_c){
_title=_e;
_items=[];
_autoenablesItems=YES;
_showsStateColumn=YES;
}
return _c;
}
}),new objj_method(sel_getUid("init"),function(_f,_10){
with(_f){
return objj_msgSend(_f,"initWithTitle:","");
}
}),new objj_method(sel_getUid("insertItem:atIndex:"),function(_11,_12,_13,_14){
with(_11){
var _15=objj_msgSend(_13,"menu");
if(_15){
if(_15!=_11){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Attempted to insert item into menu that was already in another menu.");
}else{
return;
}
}
objj_msgSend(_13,"setMenu:",_11);
objj_msgSend(_items,"insertObject:atIndex:",_13,_14);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidAddItemNotification,_11,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_14,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("insertItemWithTitle:action:keyEquivalent:atIndex:"),function(_16,_17,_18,_19,_1a,_1b){
with(_16){
var _1c=objj_msgSend(objj_msgSend(CPMenuItem,"alloc"),"initWithTitle:action:keyEquivalent:",_18,_19,_1a);
objj_msgSend(_16,"insertItem:atIndex:",_1c,_1b);
return _1c;
}
}),new objj_method(sel_getUid("addItem:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_1d,"insertItem:atIndex:",_1f,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("addItemWithTitle:action:keyEquivalent:"),function(_20,_21,_22,_23,_24){
with(_20){
return objj_msgSend(_20,"insertItemWithTitle:action:keyEquivalent:atIndex:",_22,_23,_24,objj_msgSend(_items,"count"));
}
}),new objj_method(sel_getUid("removeItem:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_25,"removeItemAtIndex:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_27));
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_28,_29,_2a){
with(_28){
if(_2a<0||_2a>=_items.length){
return;
}
objj_msgSend(_items[_2a],"setMenu:",nil);
objj_msgSend(_items,"removeObjectAtIndex:",_2a);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidRemoveItemNotification,_28,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_2a,"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("itemChanged:"),function(_2b,_2c,_2d){
with(_2b){
if(objj_msgSend(_2d,"menu")!=_2b){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPMenuDidChangeItemNotification,_2b,objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",objj_msgSend(_items,"indexOfObjectIdenticalTo:",_2d),"CPMenuItemIndex"));
}
}),new objj_method(sel_getUid("menuWithTag:"),function(_2e,_2f,_30){
with(_2e){
var _31=objj_msgSend(_2e,"indexOfItemWithTag:",_30);
if(_31==CPNotFound){
return nil;
}
return _items[_31];
}
}),new objj_method(sel_getUid("menuWithTitle:"),function(_32,_33,_34){
with(_32){
var _35=objj_msgSend(_32,"indexOfItemWithTitle:",_34);
if(_35==CPNotFound){
return nil;
}
return _items[_35];
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_36,_37,_38){
with(_36){
return objj_msgSend(_items,"objectAtIndex:",_38);
}
}),new objj_method(sel_getUid("numberOfItems"),function(_39,_3a){
with(_39){
return objj_msgSend(_items,"count");
}
}),new objj_method(sel_getUid("itemArray"),function(_3b,_3c){
with(_3b){
return _items;
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3f,"menu")!=_3d){
return CPNotFound;
}
return objj_msgSend(_items,"indexOfObjectIdenticalTo:",_3f);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_40,_41,_42){
with(_40){
var _43=0,_44=_items.length;
for(;_43<_44;++_43){
if(objj_msgSend(_items[_43],"title")===_42){
return _43;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_45,_46,_47){
with(_45){
var _48=0,_49=_items.length;
for(;_48<_49;++_48){
if(objj_msgSend(_items[_48],"tag")==_47){
return _48;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:andAction:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var _4e=0,_4f=_items.length;
for(;_4e<_4f;++_4e){
var _50=_items[_4e];
if(objj_msgSend(_50,"target")==_4c&&(!_4d||objj_msgSend(_50,"action")==_4d)){
return _4e;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_51,_52,_53){
with(_51){
var _54=0,_55=_items.length;
for(;_54<_55;++_54){
if(objj_msgSend(objj_msgSend(_items[_54],"representedObject"),"isEqual:",_53)){
return _54;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("indexOfItemWithSubmenu:"),function(_56,_57,_58){
with(_56){
var _59=0,_5a=_items.length;
for(;_59<_5a;++_59){
if(objj_msgSend(_items[_59],"submenu")==_58){
return _59;
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setSubmenu:forItem:"),function(_5b,_5c,_5d,_5e){
with(_5b){
objj_msgSend(_5e,"setTarget:",_5e);
objj_msgSend(_5e,"setAction:",sel_getUid("submenuAction:"));
objj_msgSend(_5e,"setSubmenu:",_5d);
}
}),new objj_method(sel_getUid("submenuAction:"),function(_5f,_60,_61){
with(_5f){
}
}),new objj_method(sel_getUid("attachedMenu"),function(_62,_63){
with(_62){
return _attachedMenu;
}
}),new objj_method(sel_getUid("isAttached"),function(_64,_65){
with(_64){
return _isAttached;
}
}),new objj_method(sel_getUid("locationOfSubmenu:"),function(_66,_67,_68){
with(_66){
}
}),new objj_method(sel_getUid("supermenu"),function(_69,_6a){
with(_69){
return _supermenu;
}
}),new objj_method(sel_getUid("setSupermenu:"),function(_6b,_6c,_6d){
with(_6b){
_supermenu=_6d;
}
}),new objj_method(sel_getUid("isTornOff"),function(_6e,_6f){
with(_6e){
return !_supermenu||_6e==objj_msgSend(CPApp,"mainMenu");
}
}),new objj_method(sel_getUid("setAutoenablesItems:"),function(_70,_71,_72){
with(_70){
_autoenablesItems=_72;
}
}),new objj_method(sel_getUid("autoenablesItems"),function(_73,_74){
with(_73){
return _autoenablesItems;
}
}),new objj_method(sel_getUid("update"),function(_75,_76){
with(_75){
}
}),new objj_method(sel_getUid("setTitle:"),function(_77,_78,_79){
with(_77){
_title=_79;
}
}),new objj_method(sel_getUid("title"),function(_7a,_7b){
with(_7a){
return _title;
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_7c,_7d,_7e){
with(_7c){
_showsStateColumn=_7e;
}
}),new objj_method(sel_getUid("showsStateColumn"),function(_7f,_80){
with(_7f){
return _showsStateColumn;
}
}),new objj_method(sel_getUid("highlightedItem"),function(_81,_82){
with(_81){
return _highlightedIndex>=0?_items[_highlightedIndex]:nil;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_83,_84,_85){
with(_83){
_delegate=_85;
}
}),new objj_method(sel_getUid("delegate"),function(_86,_87){
with(_86){
return _delegate;
}
}),new objj_method(sel_getUid("cancelTracking"),function(_88,_89){
with(_88){
objj_msgSend(_menuWindow,"cancelTracking");
}
}),new objj_method(sel_getUid("_setMenuWindow:"),function(_8a,_8b,_8c){
with(_8a){
_menuWindow=_8c;
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_8d,_8e,_8f){
with(_8d){
if(_autoenablesItems){
objj_msgSend(_8d,"update");
}
var _90=0,_91=_items.length,_92=objj_msgSend(_8f,"charactersIgnoringModifiers"),_93=objj_msgSend(_8f,"modifierFlags");
for(;_90<_91;++_90){
var _94=_items[_90],_95=objj_msgSend(_94,"keyEquivalentModifierMask");
if((_93&(CPShiftKeyMask|CPAlternateKeyMask|CPCommandKeyMask|CPControlKeyMask))==_95&&objj_msgSend(_92,"caseInsensitiveCompare:",objj_msgSend(_94,"keyEquivalent"))==CPOrderedSame){
if(objj_msgSend(_94,"isEnabled")){
objj_msgSend(_8d,"performActionForItemAtIndex:",_90);
}else{
}
return YES;
}
if(objj_msgSend(objj_msgSend(_94,"submenu"),"performKeyEquivalent:",_8f)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("performActionForItemAtIndex:"),function(_96,_97,_98){
with(_96){
var _99=_items[_98];
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_99,"action"),objj_msgSend(_99,"target"),_99);
}
}),new objj_method(sel_getUid("_itemIsHighlighted:"),function(_9a,_9b,_9c){
with(_9a){
return _items[_highlightedIndex]==_9c;
}
}),new objj_method(sel_getUid("_highlightItemAtIndex:"),function(_9d,_9e,_9f){
with(_9d){
var _a0=_highlightedIndex;
_highlightedIndex=_9f;
if(_a0!=CPNotFound){
objj_msgSend(objj_msgSend(_items[_a0],"_menuItemView"),"highlight:",NO);
}
if(_highlightedIndex!=CPNotFound){
objj_msgSend(objj_msgSend(_items[_highlightedIndex],"_menuItemView"),"highlight:",YES);
}
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("menuBarVisible"),function(_a1,_a2){
with(_a1){
return _2;
}
}),new objj_method(sel_getUid("setMenuBarVisible:"),function(_a3,_a4,_a5){
with(_a3){
if(_2==_a5){
return;
}
_2=_a5;
if(_a5){
if(!_7){
_7=objj_msgSend(objj_msgSend(_CPMenuBarWindow,"alloc"),"init");
}
objj_msgSend(_7,"setMenu:",objj_msgSend(CPApp,"mainMenu"));
objj_msgSend(_7,"setTitle:",_3);
objj_msgSend(_7,"setIconImage:",_4);
objj_msgSend(_7,"setIconImageAlphaValue:",_5);
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
objj_msgSend(_7,"orderFront:",_a3);
}else{
objj_msgSend(_7,"orderOut:",_a3);
}
objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"_bridgeResizeEvent:",nil);
}
}),new objj_method(sel_getUid("setMenuBarTitle:"),function(_a6,_a7,_a8){
with(_a6){
_3=_a8;
objj_msgSend(_7,"setTitle:",_3);
}
}),new objj_method(sel_getUid("menuBarTitle"),function(_a9,_aa){
with(_a9){
return _3;
}
}),new objj_method(sel_getUid("setMenuBarIconImage:"),function(_ab,_ac,_ad){
with(_ab){
_CPMenuBarImage=_ad;
objj_msgSend(_7,"setIconImage:",_ad);
}
}),new objj_method(sel_getUid("menuBarIconImage"),function(_ae,_af){
with(_ae){
return _CPMenuBarImage;
}
}),new objj_method(sel_getUid("setMenuBarAttributes:"),function(_b0,_b1,_b2){
with(_b0){
if(_6==_b2){
return;
}
_6=objj_msgSend(_b2,"copy");
var _b3=objj_msgSend(_b2,"objectForKey:","CPMenuBarTextColor"),_b4=objj_msgSend(_b2,"objectForKey:","CPMenuBarTitleColor");
if(!_b3&&_b4){
objj_msgSend(_6,"setObject:forKey:",_b4,"CPMenuBarTextColor");
}else{
if(_b3&&!_b4){
objj_msgSend(_6,"setObject:forKey:",_b3,"CPMenuBarTitleColor");
}else{
if(!_b3&&!_b4){
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"blackColor"),"CPMenuBarTextColor");
objj_msgSend(_6,"setObject:forKey:",objj_msgSend(CPColor,"blackColor"),"CPMenuBarTitleColor");
}
}
}
if(_7){
objj_msgSend(_7,"setColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarBackgroundColor"));
objj_msgSend(_7,"setTextColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTextColor"));
objj_msgSend(_7,"setTitleColor:",objj_msgSend(_6,"objectForKey:","CPMenuBarTitleColor"));
}
}
}),new objj_method(sel_getUid("menuBarAttributes"),function(_b5,_b6){
with(_b5){
return _6;
}
}),new objj_method(sel_getUid("_setMenuBarIconImageAlphaValue:"),function(_b7,_b8,_b9){
with(_b7){
_5=_b9;
objj_msgSend(_7,"setIconImageAlphaValue:",_b9);
}
}),new objj_method(sel_getUid("menuBarHeight"),function(_ba,_bb){
with(_ba){
return _1;
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:"),function(_bc,_bd,_be,_bf,_c0){
with(_bc){
objj_msgSend(_bc,"popUpContextMenu:withEvent:forView:withFont:",_be,_bf,_c0,nil);
}
}),new objj_method(sel_getUid("popUpContextMenu:withEvent:forView:withFont:"),function(_c1,_c2,_c3,_c4,_c5,_c6){
with(_c1){
objj_msgSend(_c1,"_popUpContextMenu:withEvent:forView:withFont:forMenuBar:",_c3,_c4,_c5,_c6,NO);
}
}),new objj_method(sel_getUid("_popUpContextMenu:withEvent:forView:withFont:forMenuBar:"),function(_c7,_c8,_c9,_ca,_cb,_cc,_cd){
with(_c7){
var _ce=objj_msgSend(_c9,"delegate");
if(objj_msgSend(_ce,"respondsToSelector:",sel_getUid("menuWillOpen:"))){
objj_msgSend(_ce,"menuWillOpen:",_c9);
}
if(!_cc){
_cc=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
var _cf=objj_msgSend(_cb,"window"),_d0=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_c9,_cc);
objj_msgSend(_d0,"setDelegate:",_c7);
objj_msgSend(_d0,"setBackgroundStyle:",_cd?_CPMenuWindowMenuBarBackgroundStyle:_CPMenuWindowPopUpBackgroundStyle);
objj_msgSend(_d0,"setFrameOrigin:",objj_msgSend(objj_msgSend(_ca,"window"),"convertBaseToBridge:",objj_msgSend(_ca,"locationInWindow")));
objj_msgSend(_d0,"orderFront:",_c7);
objj_msgSend(_d0,"beginTrackingWithEvent:sessionDelegate:didEndSelector:",_ca,_c7,sel_getUid("_menuWindowDidFinishTracking:highlightedItem:"));
}
}),new objj_method(sel_getUid("_menuWindowDidFinishTracking:highlightedItem:"),function(_d1,_d2,_d3,_d4){
with(_d1){
var _d5=objj_msgSend(_d3,"menu");
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_d3);
if(objj_msgSend(_d4,"isEnabled")){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_d4,"action"),objj_msgSend(_d4,"target"),_d4);
}
var _d6=objj_msgSend(_d5,"delegate");
if(objj_msgSend(_d6,"respondsToSelector:",sel_getUid("menuDidClose:"))){
objj_msgSend(_d6,"menuDidClose:",_d5);
}
}
})]);
var _d7="CPMenuTitleKey",_d8="CPMenuItemsKey";
var _8=objj_getClass("CPMenu");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPMenu\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_d9,_da,_db){
with(_d9){
_d9=objj_msgSendSuper({receiver:_d9,super_class:objj_getClass("CPObject")},"init");
if(_d9){
_title=objj_msgSend(_db,"decodeObjectForKey:",_d7);
_items=objj_msgSend(_db,"decodeObjectForKey:",_d8);
}
return _d9;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_dc,_dd,_de){
with(_dc){
objj_msgSend(_de,"encodeObject:forKey:",_title,_d7);
objj_msgSend(_de,"encodeObject:forKey:",_items,_d8);
}
})]);
var _df=[],_e0=5,_e1=[],_e2=-1,_e3=1,_e4=0;
_CPMenuWindowMenuBarBackgroundStyle=0;
_CPMenuWindowPopUpBackgroundStyle=1;
_CPMenuWindowAttachedMenuBackgroundStyle=2;
var _e5=500,_e6=5,_e7=1,_e8=1,_e9=5,_ea=16;
var _8=objj_allocateClassPair(CPWindow,"_CPMenuWindow"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menuView"),new objj_ivar("_menuClipView"),new objj_ivar("_lastMouseOverMenuView"),new objj_ivar("_moreAboveView"),new objj_ivar("_moreBelowView"),new objj_ivar("_sessionDelegate"),new objj_ivar("_didEndSelector"),new objj_ivar("_startTime"),new objj_ivar("_scrollingState"),new objj_ivar("_lastScreenLocation"),new objj_ivar("_isShowingTopScrollIndicator"),new objj_ivar("_isShowingBottomScrollIndicator"),new objj_ivar("_trackingCanceled"),new objj_ivar("_unconstrainedFrame")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(_eb,_ec){
with(_eb){
_eb=objj_msgSendSuper({receiver:_eb,super_class:objj_getClass("CPWindow")},"initWithContentRect:styleMask:",CGRectMakeZero(),CPBorderlessWindowMask);
if(_eb){
objj_msgSend(_eb,"setLevel:",CPPopUpMenuWindowLevel);
objj_msgSend(_eb,"setHasShadow:",YES);
objj_msgSend(_eb,"setAcceptsMouseMovedEvents:",YES);
_unconstrainedFrame=CGRectMakeZero();
var _ed=objj_msgSend(_eb,"contentView");
_menuView=objj_msgSend(objj_msgSend(_CPMenuView,"alloc"),"initWithFrame:",CGRectMakeZero());
_menuClipView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",CGRectMake(_e7,_e6,0,0));
objj_msgSend(_menuClipView,"setDocumentView:",_menuView);
objj_msgSend(_ed,"addSubview:",_menuClipView);
_moreAboveView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreAboveView,"setImage:",_CPMenuWindowMoreAboveImage);
objj_msgSend(_moreAboveView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreAboveImage,"size"));
objj_msgSend(_ed,"addSubview:",_moreAboveView);
_moreBelowView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_moreBelowView,"setImage:",_CPMenuWindowMoreBelowImage);
objj_msgSend(_moreBelowView,"setFrameSize:",objj_msgSend(_CPMenuWindowMoreBelowImage,"size"));
objj_msgSend(_ed,"addSubview:",_moreBelowView);
}
return _eb;
}
}),new objj_method(sel_getUid("overlapOffsetWidth"),function(_ee,_ef){
with(_ee){
return _e7;
}
}),new objj_method(sel_getUid("setFont:"),function(_f0,_f1,_f2){
with(_f0){
objj_msgSend(_menuView,"setFont:",_f2);
}
}),new objj_method(sel_getUid("setBackgroundStyle:"),function(_f3,_f4,_f5){
with(_f3){
var _f6=_e1[_f5];
if(!_f6){
var _f7=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_f3,"class"));
if(_f5==_CPMenuWindowPopUpBackgroundStyle){
_f6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded0.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow1.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded2.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}else{
if(_f5==_CPMenuWindowMenuBarBackgroundStyle){
_f6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,0)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow3.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow5.png"),CGSizeMake(4,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded6.png"),CGSizeMake(4,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindow7.png"),CGSizeMake(1,4)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_f7,"pathForResource:","_CPMenuWindow/_CPMenuWindowRounded8.png"),CGSizeMake(4,4))]));
}
}
_e1[_f5]=_f6;
}
objj_msgSend(_f3,"setBackgroundColor:",_f6);
}
}),new objj_method(sel_getUid("setMenu:"),function(_f8,_f9,_fa){
with(_f8){
objj_msgSend(_fa,"_setMenuWindow:",_f8);
objj_msgSend(_menuView,"setMenu:",_fa);
var _fb=objj_msgSend(_menuView,"frame").size;
objj_msgSend(_f8,"setFrameSize:",CGSizeMake(_e7+_fb.width+_e8,_e6+_fb.height+_e9));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,0));
objj_msgSend(_menuClipView,"setFrame:",CGRectMake(_e7,_e6,_fb.width,_fb.height));
}
}),new objj_method(sel_getUid("setMinWidth:"),function(_fc,_fd,_fe){
with(_fc){
var _ff=objj_msgSend(_fc,"frame").size;
objj_msgSend(_fc,"setFrameSize:",CGSizeMake(MAX(_ff.width,_fe),_ff.height));
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(self,_cmd,_102){
with(self){
return objj_msgSend(_menuView,"convertRect:toView:",objj_msgSend(_menuView,"rectForItemAtIndex:",_102),nil);
}
}),new objj_method(sel_getUid("orderFront:"),function(self,_cmd,_105){
with(self){
objj_msgSend(self,"constrainToScreen");
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"orderFront:",_105);
}
}),new objj_method(sel_getUid("constrainToScreen"),function(self,_cmd){
with(self){
_unconstrainedFrame=CGRectMakeCopy(objj_msgSend(self,"frame"));
var _108=CGRectInset(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"),5,5),_109=CGRectIntersection(_unconstrainedFrame,_108),_10a=objj_msgSend(self,"convertBaseToBridge:",CGPointMake(_e7,_e6));
_109.origin.x=CGRectGetMinX(_unconstrainedFrame);
_109.size.width=CGRectGetWidth(_unconstrainedFrame);
if(CGRectGetWidth(_109)>CGRectGetWidth(_108)){
_109.size.width=CGRectGetWidth(_108);
}
if(CGRectGetMaxX(_109)>CGRectGetMaxX(_108)){
_109.origin.x-=CGRectGetMaxX(_109)-CGRectGetMaxX(_108);
}
if(CGRectGetMinX(_109)<CGRectGetMinX(_108)){
_109.origin.x=CGRectGetMinX(_108);
}
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPWindow")},"setFrame:",_109);
var _10b=_e6,_10c=_e9,_10d=objj_msgSend(self,"contentView"),_10e=objj_msgSend(_10d,"bounds");
var _10f=_10a.y<CGRectGetMinY(_109)+_e6,_110=_10a.y+CGRectGetHeight(objj_msgSend(_menuView,"frame"))>CGRectGetMaxY(_109)-_e9;
if(_10f){
_10b+=_ea;
var _111=objj_msgSend(_moreAboveView,"frame");
objj_msgSend(_moreAboveView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_10e)-CGRectGetWidth(_111))/2,(_e6+_ea-CGRectGetHeight(_111))/2));
}
objj_msgSend(_moreAboveView,"setHidden:",!_10f);
if(_110){
_10c+=_ea;
objj_msgSend(_moreBelowView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_10e)-CGRectGetWidth(objj_msgSend(_moreBelowView,"frame")))/2,CGRectGetHeight(_10e)-_ea-_e9));
}
objj_msgSend(_moreBelowView,"setHidden:",!_110);
var _112=CGRectMake(_e7,_10b,CGRectGetWidth(_109)-_e7-_e8,CGRectGetHeight(_109)-_10b-_10c);
objj_msgSend(_menuClipView,"setFrame:",_112);
objj_msgSend(_menuView,"setFrameSize:",CGSizeMake(CGRectGetWidth(_112),CGRectGetHeight(objj_msgSend(_menuView,"frame"))));
objj_msgSend(_menuView,"scrollPoint:",CGPointMake(0,objj_msgSend(self,"convertBaseToBridge:",_112.origin).y-_10a.y));
}
}),new objj_method(sel_getUid("cancelTracking"),function(self,_cmd){
with(self){
_trackingCanceled=YES;
}
}),new objj_method(sel_getUid("beginTrackingWithEvent:sessionDelegate:didEndSelector:"),function(self,_cmd,_117,_118,_119){
with(self){
_startTime=objj_msgSend(_117,"timestamp");
_scrollingState=_e4;
_trackingCanceled=NO;
_sessionDelegate=_118;
_didEndSelector=_119;
objj_msgSend(self,"trackEvent:",_117);
}
}),new objj_method(sel_getUid("trackEvent:"),function(self,_cmd,_11c){
with(self){
var type=objj_msgSend(_11c,"type"),_11e=objj_msgSend(_11c,"window"),_11f=_11e?objj_msgSend(_11e,"convertBaseToBridge:",objj_msgSend(_11c,"locationInWindow")):objj_msgSend(_11c,"locationInWindow");
if(type==CPPeriodic){
var _120=CGRectInset(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"),5,5);
if(_scrollingState==_e2){
if(CGRectGetMinY(_unconstrainedFrame)<CGRectGetMinY(_120)){
_unconstrainedFrame.origin.y+=10;
}
}else{
if(_scrollingState==_e3){
if(CGRectGetMaxY(_unconstrainedFrame)>CGRectGetHeight(_120)){
_unconstrainedFrame.origin.y-=10;
}
}
}
objj_msgSend(self,"setFrame:",_unconstrainedFrame);
objj_msgSend(self,"constrainToScreen");
_11f=_lastScreenLocation;
}
_lastScreenLocation=_11f;
var menu=objj_msgSend(_menuView,"menu"),_122=objj_msgSend(self,"convertBridgeToBase:",_11f),_123=objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",_122,nil)),_124=objj_msgSend(objj_msgSend(menu,"itemAtIndex:",_123),"view");
if(_124){
if(!_lastMouseOverMenuView){
objj_msgSend(menu,"_highlightItemAtIndex:",CPNotFound);
}
if(_lastMouseOverMenuView!=_124){
objj_msgSend(_124,"mouseExited:",_11c);
objj_msgSend(_lastMouseOverMenuView,"mouseEntered:",_11c);
_lastMouseOverMenuView=_124;
}
objj_msgSend(self,"sendEvent:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",type,_122,objj_msgSend(_11c,"modifierFlags"),objj_msgSend(_11c,"timestamp"),objj_msgSend(self,"windowNumber"),nil,0,objj_msgSend(_11c,"clickCount"),objj_msgSend(_11c,"pressure")));
}else{
if(_lastMouseOverMenuView){
objj_msgSend(_lastMouseOverMenuView,"mouseExited:",_11c);
_lastMouseOverMenuView=nil;
}
objj_msgSend(menu,"_highlightItemAtIndex:",objj_msgSend(_menuView,"itemIndexAtPoint:",objj_msgSend(_menuView,"convertPoint:fromView:",objj_msgSend(self,"convertBridgeToBase:",_11f),nil)));
if(type==CPMouseMoved||type==CPLeftMouseDragged||type==CPLeftMouseDown){
var _125=objj_msgSend(self,"frame"),_126=_scrollingState;
_scrollingState=_e4;
if(_11f.y<CGRectGetMinY(_125)+_e6+_ea){
_scrollingState=_e2;
}else{
if(_11f.y>CGRectGetMaxY(_125)-_e9-_ea){
_scrollingState=_e3;
}
}
if(_scrollingState!=_126){
if(_scrollingState==_e4){
objj_msgSend(CPEvent,"stopPeriodicEvents");
}else{
if(_126==_e4){
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.04);
}
}
}
}else{
if(type==CPLeftMouseUp&&(objj_msgSend(_11c,"timestamp")-_startTime>_e5)){
if(_scrollingState!=_e4){
objj_msgSend(CPEvent,"stopPeriodicEvents");
}
objj_msgSend(self,"cancelTracking");
}
}
}
if(_trackingCanceled){
objj_msgSend(CPEvent,"stopPeriodicEvents");
var _127=objj_msgSend(objj_msgSend(_menuView,"menu"),"highlightedItem");
objj_msgSend(menu,"_highlightItemAtIndex:",CPNotFound);
objj_msgSend(_menuView,"setMenu:",nil);
objj_msgSend(self,"orderOut:",self);
if(_sessionDelegate&&_didEndSelector){
objj_msgSend(_sessionDelegate,_didEndSelector,self,_127);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPMenuDidEndTrackingNotification,menu);
var _128=objj_msgSend(menu,"delegate");
if(objj_msgSend(_128,"respondsToSelector:",sel_getUid("menuDidClose:"))){
objj_msgSend(_128,"menuDidClose:",menu);
}
return;
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackEvent:"),CPPeriodicMask|CPMouseMovedMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("menuWindowWithMenu:font:"),function(self,_cmd,_12b,_12c){
with(self){
var _12d=nil;
if(_df.length){
_12d=_df.pop();
}else{
_12d=objj_msgSend(objj_msgSend(_CPMenuWindow,"alloc"),"init");
}
objj_msgSend(_12d,"setFont:",_12c);
objj_msgSend(_12d,"setMenu:",_12b);
return _12d;
}
}),new objj_method(sel_getUid("poolMenuWindow:"),function(self,_cmd,_130){
with(self){
if(!_130||_df.length>=_e0){
return;
}
_df.push(_130);
}
}),new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(_CPMenuWindow,"class")){
return;
}
var _133=objj_msgSend(CPBundle,"bundleForClass:",self);
_CPMenuWindowMoreAboveImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_133,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreAbove.png"),CGSizeMake(38,18));
_CPMenuWindowMoreBelowImage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_133,"pathForResource:","_CPMenuWindow/_CPMenuWindowMoreBelow.png"),CGSizeMake(38,18));
}
})]);
var _8=objj_allocateClassPair(CPView,"_CPMenuView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menuItemViews"),new objj_ivar("_visibleMenuItemInfos"),new objj_ivar("_font")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("setFont:"),function(self,_cmd,_136){
with(self){
_font=_136;
}
}),new objj_method(sel_getUid("rectForItemAtIndex:"),function(self,_cmd,_139){
with(self){
return objj_msgSend(_menuItemViews[_139==CPNotFound?0:_139],"frame");
}
}),new objj_method(sel_getUid("itemIndexAtPoint:"),function(self,_cmd,_13c){
with(self){
var x=_13c.x,_13e=objj_msgSend(self,"bounds");
if(x<CGRectGetMinX(_13e)||x>CGRectGetMaxX(_13e)){
return CPNotFound;
}
var y=_13c.y,low=0,high=_visibleMenuItemInfos.length-1;
while(low<=high){
var _142=FLOOR(low+(high-low)/2),info=_visibleMenuItemInfos[_142];
frame=objj_msgSend(info.view,"frame");
if(y<CGRectGetMinY(frame)){
high=_142-1;
}else{
if(y>CGRectGetMaxY(frame)){
low=_142+1;
}else{
return info.index;
}
}
}
return CPNotFound;
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_146){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPView")},"setMenu:",_146);
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:",sel_getUid("removeFromSuperview"));
_menuItemViews=[];
_visibleMenuItemInfos=[];
var menu=objj_msgSend(self,"menu");
if(!menu){
return;
}
var _148=objj_msgSend(menu,"itemArray"),_149=0,_14a=objj_msgSend(_148,"count"),_14b=0,y=0,_14d=objj_msgSend(menu,"showsStateColumn");
for(;_149<_14a;++_149){
var item=_148[_149],view=objj_msgSend(item,"_menuItemView");
_menuItemViews.push(view);
if(objj_msgSend(item,"isHidden")){
continue;
}
_visibleMenuItemInfos.push({view:view,index:_149});
objj_msgSend(view,"setFont:",_font);
objj_msgSend(view,"setShowsStateColumn:",_14d);
objj_msgSend(view,"synchronizeWithMenuItem");
objj_msgSend(view,"setFrameOrigin:",CGPointMake(0,y));
objj_msgSend(self,"addSubview:",view);
var size=objj_msgSend(view,"minSize"),_151=size.width;
if(_14b<_151){
_14b=_151;
}
y+=size.height;
}
for(_149=0;_149<_14a;++_149){
var view=_menuItemViews[_149];
objj_msgSend(view,"setFrameSize:",CGSizeMake(_14b,CGRectGetHeight(objj_msgSend(view,"frame"))));
}
objj_msgSend(self,"setAutoresizesSubviews:",NO);
objj_msgSend(self,"setFrameSize:",CGSizeMake(_14b,y));
objj_msgSend(self,"setAutoresizesSubviews:",YES);
}
})]);
var _1=29,_152=10,_153=10,_154=10;
var _155=nil,_156=nil;
var _8=objj_allocateClassPair(CPPanel,"_CPMenuBarWindow"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_menu"),new objj_ivar("_highlightView"),new objj_ivar("_menuItemViews"),new objj_ivar("_trackingMenuItem"),new objj_ivar("_iconImageView"),new objj_ivar("_titleField"),new objj_ivar("_textColor"),new objj_ivar("_titleColor")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("init"),function(self,_cmd){
with(self){
var _159=CGRectGetWidth(objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"));
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPPanel")},"initWithContentRect:styleMask:",CGRectMake(0,0,_159,_1),CPBorderlessWindowMask);
if(self){
objj_msgSend(self,"setLevel:",-1);
objj_msgSend(self,"setAutoresizingMask:",CPWindowWidthSizable);
var _15a=objj_msgSend(self,"contentView");
objj_msgSend(_15a,"setAutoresizesSubviews:",NO);
objj_msgSend(self,"setBecomesKeyOnlyIfNeeded:",YES);
_iconImageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(0,0,16,16));
objj_msgSend(_15a,"addSubview:",_iconImageView);
_titleField=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_titleField,"setFont:",objj_msgSend(CPFont,"boldSystemFontOfSize:",12));
objj_msgSend(_titleField,"setAlignment:",CPCenterTextAlignment);
objj_msgSend(_15a,"addSubview:",_titleField);
}
return self;
}
}),new objj_method(sel_getUid("setTitle:"),function(self,_cmd,_15d){
with(self){
var _15e=objj_msgSend(objj_msgSend(CPBundle,"mainBundle"),"objectForInfoDictionaryKey:","CPBundleName");
if(!objj_msgSend(_15e,"length")){
document.title=_15d;
}else{
if(objj_msgSend(_15d,"length")){
document.title=_15d+" - "+_15e;
}else{
document.title=_15e;
}
}
objj_msgSend(_titleField,"setStringValue:",_15d);
objj_msgSend(_titleField,"sizeToFit");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("setIconImage:"),function(self,_cmd,_161){
with(self){
objj_msgSend(_iconImageView,"setImage:",_161);
objj_msgSend(_iconImageView,"setHidden:",_161==nil);
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("setIconImageAlphaValue:"),function(self,_cmd,_164){
with(self){
objj_msgSend(_iconImageView,"setAlphaValue:",_164);
}
}),new objj_method(sel_getUid("setColor:"),function(self,_cmd,_167){
with(self){
if(!_167){
if(!_155){
_155=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_CPMenuBarWindow,"class")),"pathForResource:","_CPMenuBarWindow/_CPMenuBarWindowBackground.png"),CGSizeMake(1,18)));
}
objj_msgSend(objj_msgSend(self,"contentView"),"setBackgroundColor:",_155);
}else{
objj_msgSend(objj_msgSend(self,"contentView"),"setBackgroundColor:",_167);
}
}
}),new objj_method(sel_getUid("setTextColor:"),function(self,_cmd,_16a){
with(self){
if(_textColor==_16a){
return;
}
_textColor=_16a;
objj_msgSend(_menuItemViews,"makeObjectsPerformSelector:withObject:",sel_getUid("setTextColor:"),_textColor);
}
}),new objj_method(sel_getUid("setTitleColor:"),function(self,_cmd,_16d){
with(self){
if(_titleColor==_16d){
return;
}
_titleColor=_16d;
objj_msgSend(_titleField,"setTextColor:",_16d?_16d:objj_msgSend(CPColor,"blackColor"));
}
}),new objj_method(sel_getUid("setMenu:"),function(self,_cmd,_170){
with(self){
if(_menu==_170){
return;
}
var _171=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_171,"removeObserver:name:object:",self,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_171,"removeObserver:name:object:",self,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_171,"removeObserver:name:object:",self,CPMenuDidRemoveItemNotification,_menu);
var _172=objj_msgSend(_menu,"itemArray"),_173=_172.length;
while(_173--){
objj_msgSend(objj_msgSend(_172[_173],"_menuItemView"),"removeFromSuperview");
}
}
_menu=_170;
if(_menu){
objj_msgSend(_171,"addObserver:selector:name:object:",self,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_171,"addObserver:selector:name:object:",self,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_171,"addObserver:selector:name:object:",self,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
_menuItemViews=[];
var _174=objj_msgSend(self,"contentView"),_172=objj_msgSend(_menu,"itemArray"),_173=_172.length;
for(index=0;index<_173;++index){
var item=_172[index],_176=objj_msgSend(item,"_menuItemView");
_menuItemViews.push(_176);
objj_msgSend(_176,"setShowsStateColumn:",NO);
objj_msgSend(_176,"setBelongsToMenuBar:",YES);
objj_msgSend(_176,"setFont:",_156);
objj_msgSend(_176,"setTextColor:",_textColor);
objj_msgSend(_176,"setHidden:",objj_msgSend(item,"isHidden"));
objj_msgSend(_176,"synchronizeWithMenuItem");
objj_msgSend(_174,"addSubview:",_176);
}
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(self,_cmd,_179){
with(self){
var _17a=objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(objj_msgSend(_179,"userInfo"),"objectForKey:","CPMenuItemIndex")),_17b=objj_msgSend(_17a,"_menuItemView");
objj_msgSend(_17b,"setHidden:",objj_msgSend(_17a,"isHidden"));
objj_msgSend(_17b,"synchronizeWithMenuItem");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(self,_cmd,_17e){
with(self){
var _17f=objj_msgSend(objj_msgSend(_17e,"userInfo"),"objectForKey:","CPMenuItemIndex"),_180=objj_msgSend(_menu,"itemAtIndex:",_17f),_181=objj_msgSend(_180,"_menuItemView");
objj_msgSend(_menuItemViews,"insertObject:atIndex:",_181,_17f);
objj_msgSend(_181,"setShowsStateColumn:",NO);
objj_msgSend(_181,"setBelongsToMenuBar:",YES);
objj_msgSend(_181,"setFont:",_156);
objj_msgSend(_181,"setTextColor:",_textColor);
objj_msgSend(_181,"setHidden:",objj_msgSend(_180,"isHidden"));
objj_msgSend(_181,"synchronizeWithMenuItem");
objj_msgSend(objj_msgSend(self,"contentView"),"addSubview:",_181);
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(self,_cmd,_184){
with(self){
var _185=objj_msgSend(objj_msgSend(_184,"userInfo"),"objectForKey:","CPMenuItemIndex"),_186=objj_msgSend(_menuItemViews,"objectAtIndex:",_185);
objj_msgSend(_menuItemViews,"removeObjectAtIndex:",_185);
objj_msgSend(_186,"removeFromSuperview");
objj_msgSend(self,"tile");
}
}),new objj_method(sel_getUid("frameForMenuItem:"),function(self,_cmd,_189){
with(self){
var _18a=objj_msgSend(objj_msgSend(_189,"_menuItemView"),"frame");
_18a.origin.x-=5;
_18a.origin.y=0;
_18a.size.width+=10;
_18a.size.height=_1;
return _18a;
}
}),new objj_method(sel_getUid("menuItemAtPoint:"),function(self,_cmd,_18d){
with(self){
var _18e=objj_msgSend(_menu,"itemArray"),_18f=_18e.length;
while(_18f--){
var item=_18e[_18f];
if(objj_msgSend(item,"isHidden")||objj_msgSend(item,"isSeparatorItem")){
continue;
}
if(CGRectContainsPoint(objj_msgSend(self,"frameForMenuItem:",item),_18d)){
return item;
}
}
return nil;
}
}),new objj_method(sel_getUid("mouseDown:"),function(self,_cmd,_193){
with(self){
_trackingMenuItem=objj_msgSend(self,"menuItemAtPoint:",objj_msgSend(_193,"locationInWindow"));
if(!objj_msgSend(_trackingMenuItem,"isEnabled")){
return;
}
if(objj_msgSend(objj_msgSend(_trackingMenuItem,"_menuItemView"),"eventOnSubmenu:",_193)){
return objj_msgSend(self,"showMenu:",_193);
}
if(objj_msgSend(_trackingMenuItem,"isEnabled")){
objj_msgSend(self,"trackEvent:",_193);
}
}
}),new objj_method(sel_getUid("trackEvent:"),function(self,_cmd,_196){
with(self){
var type=objj_msgSend(_196,"type");
if(type===CPPeriodic){
return objj_msgSend(self,"showMenu:",_196);
}
var _198=objj_msgSend(self,"frameForMenuItem:",_trackingMenuItem),_199=objj_msgSend(_trackingMenuItem,"_menuItemView"),_19a=CGRectContainsPoint(_198,objj_msgSend(_196,"locationInWindow"));
if(type==CPLeftMouseDown){
if(objj_msgSend(_trackingMenuItem,"submenu")!=nil){
if(!objj_msgSend(_trackingMenuItem,"action")){
return objj_msgSend(self,"showMenu:",_196);
}
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0,0.5);
}
objj_msgSend(_199,"highlight:",_19a);
}else{
if(type==CPLeftMouseDragged){
if(!_19a&&objj_msgSend(_trackingMenuItem,"submenu")){
return objj_msgSend(self,"showMenu:",_196);
}
objj_msgSend(_199,"highlight:",_19a);
}else{
objj_msgSend(CPEvent,"stopPeriodicEvents");
objj_msgSend(_199,"highlight:",NO);
if(_19a){
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_trackingMenuItem,"action"),objj_msgSend(_trackingMenuItem,"target"),nil);
}
return;
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackEvent:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("showMenu:"),function(self,_cmd,_19d){
with(self){
objj_msgSend(CPEvent,"stopPeriodicEvents");
var _19e=objj_msgSend(self,"frameForMenuItem:",_trackingMenuItem),_19f=objj_msgSend(_trackingMenuItem,"_menuItemView");
if(!_highlightView){
_highlightView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",_19e);
objj_msgSend(_highlightView,"setBackgroundColor:",objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",81/255,83/255,109/255,1));
}else{
objj_msgSend(_highlightView,"setFrame:",_19e);
}
objj_msgSend(objj_msgSend(self,"contentView"),"addSubview:positioned:relativeTo:",_highlightView,CPWindowBelow,_19f);
objj_msgSend(_19f,"activate:",YES);
var _1a0=objj_msgSend(_trackingMenuItem,"submenu");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",self,sel_getUid("menuDidEndTracking:"),CPMenuDidEndTrackingNotification,_1a0);
objj_msgSend(CPMenu,"_popUpContextMenu:withEvent:forView:withFont:forMenuBar:",_1a0,objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPLeftMouseDown,CGPointMake(CGRectGetMinX(_19e),CGRectGetMaxY(_19e)),objj_msgSend(_19d,"modifierFlags"),objj_msgSend(_19d,"timestamp"),objj_msgSend(self,"windowNumber"),nil,0,objj_msgSend(_19d,"clickCount"),objj_msgSend(_19d,"pressure")),objj_msgSend(self,"contentView"),nil,YES);
}
}),new objj_method(sel_getUid("menuDidEndTracking:"),function(self,_cmd,_1a3){
with(self){
objj_msgSend(_highlightView,"removeFromSuperview");
objj_msgSend(objj_msgSend(_trackingMenuItem,"_menuItemView"),"activate:",NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",self,CPMenuDidEndTrackingNotification,objj_msgSend(_1a3,"object"));
}
}),new objj_method(sel_getUid("tile"),function(self,_cmd){
with(self){
var _1a6=objj_msgSend(_menu,"itemArray"),_1a7=0,_1a8=_1a6.length,x=_153,y=0,_1ab=YES;
for(;_1a7<_1a8;++_1a7){
var item=_1a6[_1a7];
if(objj_msgSend(item,"isSeparatorItem")){
x=CGRectGetWidth(objj_msgSend(self,"frame"))-_154;
_1ab=NO;
continue;
}
if(objj_msgSend(item,"isHidden")){
continue;
}
var _1ad=objj_msgSend(item,"_menuItemView"),_1ae=objj_msgSend(_1ad,"frame");
if(_1ab){
objj_msgSend(_1ad,"setFrameOrigin:",CGPointMake(x,(_1-1-CGRectGetHeight(_1ae))/2));
x+=CGRectGetWidth(objj_msgSend(_1ad,"frame"))+_152;
}else{
objj_msgSend(_1ad,"setFrameOrigin:",CGPointMake(x-CGRectGetWidth(_1ae),(_1-1-CGRectGetHeight(_1ae))/2));
x=CGRectGetMinX(objj_msgSend(_1ad,"frame"))-_152;
}
}
var _1af=objj_msgSend(objj_msgSend(self,"contentView"),"bounds"),_1b0=objj_msgSend(_titleField,"frame");
if(objj_msgSend(_iconImageView,"isHidden")){
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1af)-CGRectGetWidth(_1b0))/2,(CGRectGetHeight(_1af)-CGRectGetHeight(_1b0))/2));
}else{
var _1b1=objj_msgSend(_iconImageView,"frame"),_1b2=CGRectGetWidth(_1b1),_1b3=_1b2+CGRectGetWidth(_1b0);
objj_msgSend(_iconImageView,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1af)-_1b3)/2,(CGRectGetHeight(_1af)-CGRectGetHeight(_1b1))/2));
objj_msgSend(_titleField,"setFrameOrigin:",CGPointMake((CGRectGetWidth(_1af)-_1b3)/2+_1b2,(CGRectGetHeight(_1af)-CGRectGetHeight(_1b0))/2));
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(self,_cmd,_1b6){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPPanel")},"setFrameSize:",_1b6);
objj_msgSend(self,"tile");
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(_CPMenuBarWindow,"class")){
return;
}
var _1b9=objj_msgSend(CPBundle,"bundleForClass:",self);
_156=objj_msgSend(CPFont,"systemFontOfSize:",11);
}
})]);
p;12;CPMenuItem.jI;20;Foundation/CPCoder.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;16;AppKit/CPImage.jI;15;AppKit/CPMenu.jI;15;AppKit/CPView.jc;20636;
var _1=objj_allocateClassPair(CPObject,"CPMenuItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_title"),new objj_ivar("_font"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_isEnabled"),new objj_ivar("_isHidden"),new objj_ivar("_tag"),new objj_ivar("_state"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_onStateImage"),new objj_ivar("_offStateImage"),new objj_ivar("_mixedStateImage"),new objj_ivar("_submenu"),new objj_ivar("_menu"),new objj_ivar("_keyEquivalent"),new objj_ivar("_keyEquivalentModifierMask"),new objj_ivar("_mnemonicLocation"),new objj_ivar("_isAlternate"),new objj_ivar("_indentationLevel"),new objj_ivar("_toolTip"),new objj_ivar("_representedObject"),new objj_ivar("_view"),new objj_ivar("_menuItemView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithTitle:action:keyEquivalent:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_title=_5;
_action=_6;
_isEnabled=YES;
_tag=0;
_state=CPOffState;
_keyEquivalent=_7||"";
_keyEquivalentModifierMask=CPPlatformActionKeyMask;
_mnemonicLocation=CPNotFound;
}
return _3;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_8,_9,_a){
with(_8){
if(objj_msgSend(_menu,"autoenablesItems")){
return;
}
_isEnabled=_a;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_8);
}
}),new objj_method(sel_getUid("isEnabled"),function(_b,_c){
with(_b){
return _isEnabled;
}
}),new objj_method(sel_getUid("setHidden:"),function(_d,_e,_f){
with(_d){
if(_isHidden==_f){
return;
}
_isHidden=_f;
objj_msgSend(_menu,"itemChanged:",_d);
}
}),new objj_method(sel_getUid("isHidden"),function(_10,_11){
with(_10){
return _isHidden;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_12,_13){
with(_12){
if(_isHidden){
return YES;
}
var _14=objj_msgSend(_menu,"supermenu");
if(objj_msgSend(objj_msgSend(_14,"itemAtIndex:",objj_msgSend(_14,"indexOfItemWithSubmenu:",_menu)),"isHiddenOrHasHiddenAncestor")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("setTarget:"),function(_15,_16,_17){
with(_15){
_target=_17;
}
}),new objj_method(sel_getUid("target"),function(_18,_19){
with(_18){
return _target;
}
}),new objj_method(sel_getUid("setAction:"),function(_1a,_1b,_1c){
with(_1a){
_action=_1c;
}
}),new objj_method(sel_getUid("action"),function(_1d,_1e){
with(_1d){
return _action;
}
}),new objj_method(sel_getUid("setTitle:"),function(_1f,_20,_21){
with(_1f){
_mnemonicLocation=CPNotFound;
if(_title==_21){
return;
}
_title=_21;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_1f);
}
}),new objj_method(sel_getUid("title"),function(_22,_23){
with(_22){
return _title;
}
}),new objj_method(sel_getUid("setTextColor:"),function(_24,_25,_26){
with(_24){
}
}),new objj_method(sel_getUid("setFont:"),function(_27,_28,_29){
with(_27){
if(_font==_29){
return;
}
_font=_29;
objj_msgSend(_menu,"itemChanged:",_27);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("font"),function(_2a,_2b){
with(_2a){
return _font;
}
}),new objj_method(sel_getUid("setTag:"),function(_2c,_2d,_2e){
with(_2c){
_tag=_2e;
}
}),new objj_method(sel_getUid("tag"),function(_2f,_30){
with(_2f){
return _tag;
}
}),new objj_method(sel_getUid("setState:"),function(_31,_32,_33){
with(_31){
if(_state==_33){
return;
}
_state=_33;
objj_msgSend(_menu,"itemChanged:",_31);
objj_msgSend(_menuItemView,"setDirty");
}
}),new objj_method(sel_getUid("state"),function(_34,_35){
with(_34){
return _state;
}
}),new objj_method(sel_getUid("setImage:"),function(_36,_37,_38){
with(_36){
if(_image==_38){
return;
}
_image=_38;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_36);
}
}),new objj_method(sel_getUid("image"),function(_39,_3a){
with(_39){
return _image;
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_3b,_3c,_3d){
with(_3b){
_alternateImage=_3d;
}
}),new objj_method(sel_getUid("alternateImage"),function(_3e,_3f){
with(_3e){
return _alternateImage;
}
}),new objj_method(sel_getUid("setOnStateImage:"),function(_40,_41,_42){
with(_40){
if(_onStateImage==_42){
return;
}
_onStateImage=_42;
objj_msgSend(_menu,"itemChanged:",_40);
}
}),new objj_method(sel_getUid("onStateImage"),function(_43,_44){
with(_43){
return _onStateImage;
}
}),new objj_method(sel_getUid("setOffStateImage:"),function(_45,_46,_47){
with(_45){
if(_offStateImage==_47){
return;
}
_offStateImage=_47;
objj_msgSend(_menu,"itemChanged:",_45);
}
}),new objj_method(sel_getUid("offStateImage"),function(_48,_49){
with(_48){
return _offStateImage;
}
}),new objj_method(sel_getUid("setMixedStateImage:"),function(_4a,_4b,_4c){
with(_4a){
if(_mixedStateImage==_4c){
return;
}
_mixedStateImage=_4c;
objj_msgSend(_menu,"itemChanged:",_4a);
}
}),new objj_method(sel_getUid("mixedStateImage"),function(_4d,_4e){
with(_4d){
return _mixedStateImage;
}
}),new objj_method(sel_getUid("setSubmenu:"),function(_4f,_50,_51){
with(_4f){
var _52=objj_msgSend(_submenu,"supermenu");
if(_52==_4f){
return;
}
if(_52){
return alert("bad");
}
objj_msgSend(_submenu,"setSupermenu:",_menu);
_submenu=_51;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_4f);
}
}),new objj_method(sel_getUid("submenu"),function(_53,_54){
with(_53){
return _submenu;
}
}),new objj_method(sel_getUid("hasSubmenu"),function(_55,_56){
with(_55){
return _submenu?YES:NO;
}
}),new objj_method(sel_getUid("isSeparatorItem"),function(_57,_58){
with(_57){
return NO;
}
}),new objj_method(sel_getUid("setMenu:"),function(_59,_5a,_5b){
with(_59){
_menu=_5b;
}
}),new objj_method(sel_getUid("menu"),function(_5c,_5d){
with(_5c){
return _menu;
}
}),new objj_method(sel_getUid("setKeyEquivalent:"),function(_5e,_5f,_60){
with(_5e){
_keyEquivalent=_60||"";
}
}),new objj_method(sel_getUid("keyEquivalent"),function(_61,_62){
with(_61){
return _keyEquivalent;
}
}),new objj_method(sel_getUid("setKeyEquivalentModifierMask:"),function(_63,_64,_65){
with(_63){
_keyEquivalentModifierMask=_65;
}
}),new objj_method(sel_getUid("keyEquivalentModifierMask"),function(_66,_67){
with(_66){
return _keyEquivalentModifierMask;
}
}),new objj_method(sel_getUid("setMnemonicLocation:"),function(_68,_69,_6a){
with(_68){
_mnemonicLocation=_6a;
}
}),new objj_method(sel_getUid("mnemonicLocation"),function(_6b,_6c){
with(_6b){
return _mnemonicLocation;
}
}),new objj_method(sel_getUid("setTitleWithMnemonicLocation:"),function(_6d,_6e,_6f){
with(_6d){
var _70=objj_msgSend(_6f,"rangeOfString:","&").location;
if(_70==CPNotFound){
objj_msgSend(_6d,"setTitle:",_6f);
}else{
objj_msgSend(_6d,"setTitle:",objj_msgSend(_6f,"substringToIndex:",_70)+objj_msgSend(_6f,"substringFromIndex:",_70+1));
objj_msgSend(_6d,"setMnemonicLocation:",_70);
}
}
}),new objj_method(sel_getUid("mnemonic"),function(_71,_72){
with(_71){
return _mnemonicLocation==CPNotFound?"":objj_msgSend(_title,"characterAtIndex:",_mnemonicLocation);
}
}),new objj_method(sel_getUid("setAlternate:"),function(_73,_74,_75){
with(_73){
_isAlternate=_75;
}
}),new objj_method(sel_getUid("isAlternate"),function(_76,_77){
with(_76){
return _isAlternate;
}
}),new objj_method(sel_getUid("setIndentationLevel:"),function(_78,_79,_7a){
with(_78){
if(_7a<0){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"setIndentationLevel: argument must be greater than 0.");
}
_indentationLevel=MIN(15,_7a);
}
}),new objj_method(sel_getUid("indentationLevel"),function(_7b,_7c){
with(_7b){
return _indentationLevel;
}
}),new objj_method(sel_getUid("setToolTip:"),function(_7d,_7e,_7f){
with(_7d){
_toolTip=_7f;
}
}),new objj_method(sel_getUid("toolTip"),function(_80,_81){
with(_80){
return _toolTip;
}
}),new objj_method(sel_getUid("setRepresentedObject:"),function(_82,_83,_84){
with(_82){
_representedObject=_84;
}
}),new objj_method(sel_getUid("representedObject"),function(_85,_86){
with(_85){
return _representedObject;
}
}),new objj_method(sel_getUid("setView:"),function(_87,_88,_89){
with(_87){
if(_view==_89){
return;
}
_view=_89;
objj_msgSend(_menuItemView,"setDirty");
objj_msgSend(_menu,"itemChanged:",_87);
}
}),new objj_method(sel_getUid("view"),function(_8a,_8b){
with(_8a){
return _view;
}
}),new objj_method(sel_getUid("isHighlighted"),function(_8c,_8d){
with(_8c){
return objj_msgSend(objj_msgSend(_8c,"menu"),"highlightedItem")==_8c;
}
}),new objj_method(sel_getUid("_menuItemView"),function(_8e,_8f){
with(_8e){
if(!_menuItemView){
_menuItemView=objj_msgSend(objj_msgSend(_CPMenuItemView,"alloc"),"initWithFrame:forMenuItem:",CGRectMakeZero(),_8e);
}
return _menuItemView;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("separatorItem"),function(_90,_91){
with(_90){
return objj_msgSend(objj_msgSend(_CPMenuItemSeparator,"alloc"),"init");
}
})]);
var _1=objj_allocateClassPair(CPMenuItem,"_CPMenuItemSeparator"),_2=_1.isa;
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_92,_93){
with(_92){
_92=objj_msgSendSuper({receiver:_92,super_class:objj_getClass("CPMenuItem")},"initWithTitle:action:keyEquivalent:","",nil,nil);
if(_92){
objj_msgSend(_92,"setEnabled:",NO);
}
return _92;
}
}),new objj_method(sel_getUid("isSeparatorItem"),function(_94,_95){
with(_94){
return YES;
}
})]);
var _96="CPMenuItemTitleKey",_97="CPMenuItemTargetKey",_98="CPMenuItemActionKey",_99="CPMenuItemIsEnabledKey",_9a="CPMenuItemIsHiddenKey",_9b="CPMenuItemTagKey",_9c="CPMenuItemImageKey",_9d="CPMenuItemAlternateImageKey",_9e="CPMenuItemSubmenuKey",_9f="CPMenuItemMenuKey",_a0="CPMenuItemRepresentedObjectKey";
var _1=objj_getClass("CPMenuItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPMenuItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_a1,_a2,_a3){
with(_a1){
_a1=objj_msgSendSuper({receiver:_a1,super_class:objj_getClass("CPObject")},"init");
if(_a1){
_title=objj_msgSend(_a3,"decodeObjectForKey:",_96);
_target=objj_msgSend(_a3,"decodeObjectForKey:",_97);
_action=objj_msgSend(_a3,"decodeObjectForKey:",_98);
_isEnabled=objj_msgSend(_a3,"decodeObjectForKey:",_99);
_isHidden=objj_msgSend(_a3,"decodeObjectForKey:",_9a);
_tag=objj_msgSend(_a3,"containsValueForKey:",_9b)?objj_msgSend(_a3,"decodeObjectForKey:",_9b):0;
_image=objj_msgSend(_a3,"decodeObjectForKey:",_9c);
_alternateImage=objj_msgSend(_a3,"decodeObjectForKey:",_9d);
_submenu=objj_msgSend(_a3,"decodeObjectForKey:",_9e);
_menu=objj_msgSend(_a3,"decodeObjectForKey:",_9f);
_representedObject=objj_msgSend(_a3,"decodeObjectForKey:",_a0);
}
return _a1;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a4,_a5,_a6){
with(_a4){
objj_msgSend(_a6,"encodeObject:forKey:",_title,_96);
objj_msgSend(_a6,"encodeObject:forKey:",_target,_97);
objj_msgSend(_a6,"encodeObject:forKey:",_action,_98);
objj_msgSend(_a6,"encodeObject:forKey:",_isEnabled,_99);
objj_msgSend(_a6,"encodeObject:forKey:",_isHidden,_9a);
if(_tag!==0){
objj_msgSend(_a6,"encodeObject:forKey:",_tag,_9b);
}
objj_msgSend(_a6,"encodeObject:forKey:",_image,_9c);
objj_msgSend(_a6,"encodeObject:forKey:",_alternateImage,_9d);
objj_msgSend(_a6,"encodeObject:forKey:",_submenu,_9e);
objj_msgSend(_a6,"encodeObject:forKey:",_menu,_9f);
objj_msgSend(_a6,"encodeObject:forKey:",_representedObject,_a0);
}
})]);
var _a7=3,_a8=16,_a9=14,_aa=17,_ab=4;
var _ac=nil,_ad=nil,_ae=[],_af=[];
var _1=objj_allocateClassPair(CPView,"_CPMenuItemView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_menuItem"),new objj_ivar("_font"),new objj_ivar("_textColor"),new objj_ivar("_minSize"),new objj_ivar("_isDirty"),new objj_ivar("_showsStateColumn"),new objj_ivar("_belongsToMenuBar"),new objj_ivar("_stateView"),new objj_ivar("_imageAndTextView"),new objj_ivar("_submenuView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:forMenuItem:"),function(_b0,_b1,_b2,_b3){
with(_b0){
_b0=objj_msgSendSuper({receiver:_b0,super_class:objj_getClass("CPView")},"initWithFrame:",_b2);
if(_b0){
_menuItem=_b3;
_showsStateColumn=YES;
_isDirty=YES;
objj_msgSend(_b0,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_b0,"synchronizeWithMenuItem");
}
return _b0;
}
}),new objj_method(sel_getUid("minSize"),function(_b4,_b5){
with(_b4){
return _minSize;
}
}),new objj_method(sel_getUid("setDirty"),function(_b6,_b7){
with(_b6){
_isDirty=YES;
}
}),new objj_method(sel_getUid("synchronizeWithMenuItem"),function(_b8,_b9){
with(_b8){
if(!_isDirty){
return;
}
_isDirty=NO;
var _ba=objj_msgSend(_menuItem,"view");
if(objj_msgSend(_menuItem,"isSeparatorItem")){
var _bb=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,5,10,1));
_ba=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,10));
objj_msgSend(_ba,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_bb,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_bb,"setBackgroundColor:",objj_msgSend(CPColor,"lightGrayColor"));
objj_msgSend(_ba,"addSubview:",_bb);
}
if(_ba){
objj_msgSend(_imageAndTextView,"removeFromSuperview");
_imageAndTextView=nil;
objj_msgSend(_stateView,"removeFromSuperview");
_stateView=nil;
objj_msgSend(_submenuView,"removeFromSuperview");
_submenuView=nil;
_minSize=objj_msgSend(_ba,"frame").size;
objj_msgSend(_b8,"setFrameSize:",_minSize);
objj_msgSend(_b8,"addSubview:",_ba);
return;
}
var x=_belongsToMenuBar?0:(_a7+objj_msgSend(_menuItem,"indentationLevel")*_aa);
if(_showsStateColumn){
if(!_stateView){
_stateView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMake(x,(CGRectGetHeight(objj_msgSend(_b8,"frame"))-_a9)/2,_a9,_a9));
objj_msgSend(_stateView,"setAutoresizingMask:",CPViewMinYMargin|CPViewMaxYMargin);
objj_msgSend(_b8,"addSubview:",_stateView);
}
var _bd=objj_msgSend(_menuItem,"state");
switch(_bd){
case CPOffState:
case CPOnState:
case CPMixedState:
objj_msgSend(_stateView,"setImage:",_ae[_bd]);
break;
default:
objj_msgSend(_stateView,"setImage:",nil);
}
x+=_a9;
}else{
objj_msgSend(_stateView,"removeFromSuperview");
_stateView=nil;
}
if(!_imageAndTextView){
_imageAndTextView=objj_msgSend(objj_msgSend(_CPImageAndTextView,"alloc"),"initWithFrame:",CGRectMake(0,0,0,0));
objj_msgSend(_imageAndTextView,"setImagePosition:",CPImageLeft);
objj_msgSend(_imageAndTextView,"setTextShadowOffset:",CGSizeMake(0,1));
objj_msgSend(_b8,"addSubview:",_imageAndTextView);
}
var _be=objj_msgSend(_menuItem,"font");
if(!_be){
_be=_font;
}
objj_msgSend(_imageAndTextView,"setFont:",_be);
objj_msgSend(_imageAndTextView,"setVerticalAlignment:",CPCenterVerticalTextAlignment);
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
objj_msgSend(_imageAndTextView,"setText:",objj_msgSend(_menuItem,"title"));
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_b8,"textColor"));
objj_msgSend(_imageAndTextView,"setFrameOrigin:",CGPointMake(x,_ab));
objj_msgSend(_imageAndTextView,"sizeToFit");
var _bf=objj_msgSend(_imageAndTextView,"frame");
_bf.size.height+=2*_ab;
x+=CGRectGetWidth(_bf);
if(objj_msgSend(_menuItem,"hasSubmenu")){
x+=3;
if(!_submenuView){
_submenuView=objj_msgSend(objj_msgSend(_CPMenuItemArrowView,"alloc"),"initWithFrame:",CGRectMake(0,0,10,10));
objj_msgSend(_b8,"addSubview:",_submenuView);
}
objj_msgSend(_submenuView,"setHidden:",NO);
objj_msgSend(_submenuView,"setColor:",_belongsToMenuBar?objj_msgSend(_b8,"textColor"):nil);
objj_msgSend(_submenuView,"setFrameOrigin:",CGPointMake(x,(CGRectGetHeight(_bf)-10)/2));
x+=10;
}else{
objj_msgSend(_submenuView,"setHidden:",YES);
}
_minSize=CGSizeMake(x+(_belongsToMenuBar?0:_a8)+3,CGRectGetHeight(_bf));
objj_msgSend(_b8,"setFrameSize:",_minSize);
}
}),new objj_method(sel_getUid("overlapOffsetWidth"),function(_c0,_c1){
with(_c0){
return _a7+(objj_msgSend(objj_msgSend(_menuItem,"menu"),"showsStateColumn")?_a9:0);
}
}),new objj_method(sel_getUid("setShowsStateColumn:"),function(_c2,_c3,_c4){
with(_c2){
_showsStateColumn=_c4;
}
}),new objj_method(sel_getUid("setBelongsToMenuBar:"),function(_c5,_c6,_c7){
with(_c5){
_belongsToMenuBar=_c7;
}
}),new objj_method(sel_getUid("highlight:"),function(_c8,_c9,_ca){
with(_c8){
if(_belongsToMenuBar){
objj_msgSend(_imageAndTextView,"setImage:",_ca?objj_msgSend(_menuItem,"alternateImage"):objj_msgSend(_menuItem,"image"));
}else{
if(objj_msgSend(_menuItem,"isEnabled")){
if(_ca){
objj_msgSend(_c8,"setBackgroundColor:",_ac);
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",_ad);
}else{
objj_msgSend(_c8,"setBackgroundColor:",nil);
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_c8,"textColor"));
objj_msgSend(_imageAndTextView,"setTextShadowColor:",nil);
}
var _cb=objj_msgSend(_menuItem,"state");
switch(_cb){
case CPOffState:
case CPOnState:
case CPMixedState:
objj_msgSend(_stateView,"setImage:",_ca?_af[_cb]:_ae[_cb]);
break;
default:
objj_msgSend(_stateView,"setImage:",nil);
}
}
}
}
}),new objj_method(sel_getUid("activate:"),function(_cc,_cd,_ce){
with(_cc){
objj_msgSend(_imageAndTextView,"setImage:",objj_msgSend(_menuItem,"image"));
if(_ce){
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(CPColor,"whiteColor"));
}else{
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_cc,"textColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_cc,"textColor"));
}
}
}),new objj_method(sel_getUid("eventOnSubmenu:"),function(_cf,_d0,_d1){
with(_cf){
if(!objj_msgSend(_menuItem,"hasSubmenu")){
return NO;
}
return CGRectContainsPoint(objj_msgSend(_submenuView,"frame"),objj_msgSend(_cf,"convertPoint:fromView:",objj_msgSend(_d1,"locationInWindow"),nil));
}
}),new objj_method(sel_getUid("isHidden"),function(_d2,_d3){
with(_d2){
return objj_msgSend(_menuItem,"isHidden");
}
}),new objj_method(sel_getUid("menuItem"),function(_d4,_d5){
with(_d4){
return _menuItem;
}
}),new objj_method(sel_getUid("setFont:"),function(_d6,_d7,_d8){
with(_d6){
if(_font==_d8){
return;
}
_font=_d8;
objj_msgSend(_d6,"setDirty");
}
}),new objj_method(sel_getUid("setTextColor:"),function(_d9,_da,_db){
with(_d9){
if(_textColor==_db){
return;
}
_textColor=_db;
objj_msgSend(_imageAndTextView,"setTextColor:",objj_msgSend(_d9,"textColor"));
objj_msgSend(_submenuView,"setColor:",objj_msgSend(_d9,"textColor"));
}
}),new objj_method(sel_getUid("textColor"),function(_dc,_dd){
with(_dc){
return objj_msgSend(_menuItem,"isEnabled")?(_textColor?_textColor:objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",70/255,69/255,69/255,1)):objj_msgSend(CPColor,"darkGrayColor");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("initialize"),function(_de,_df){
with(_de){
if(_de!=objj_msgSend(_CPMenuItemView,"class")){
return;
}
_ac=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",95/255,131/255,185/255,1);
_ad=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",26/255,73/255,109/255,1);
var _e0=objj_msgSend(CPBundle,"bundleForClass:",_de);
_ae[CPOffState]=nil;
_af[CPOffState]=nil;
_ae[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_e0,"pathForResource:","CPMenuItem/CPMenuItemOnState.png"),CGSizeMake(14,14));
_af[CPOnState]=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_e0,"pathForResource:","CPMenuItem/CPMenuItemOnStateHighlighted.png"),CGSizeMake(14,14));
_ae[CPMixedState]=nil;
_af[CPMixedState]=nil;
}
}),new objj_method(sel_getUid("leftMargin"),function(_e1,_e2){
with(_e1){
return _a7+_a9;
}
})]);
var _1=objj_allocateClassPair(CPView,"_CPMenuItemArrowView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_color")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("setColor:"),function(_e3,_e4,_e5){
with(_e3){
if(_color==_e5){
return;
}
_color=_e5;
objj_msgSend(_e3,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("drawRect:"),function(_e6,_e7,_e8){
with(_e6){
var _e9=objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort");
CGContextBeginPath(_e9);
CGContextMoveToPoint(_e9,1,4);
CGContextAddLineToPoint(_e9,9,4);
CGContextAddLineToPoint(_e9,5,8);
CGContextAddLineToPoint(_e9,1,4);
CGContextClosePath(_e9);
CGContextSetFillColor(_e9,_color);
CGContextFillPath(_e9);
}
})]);
p;15;CPOutlineView.ji;13;CPTableView.jc;2698;
var _1=objj_allocateClassPair(CPTableView,"CPOutlineView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_outlineDataSource"),new objj_ivar("_itemsByRow")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTableView")},"initWithFrame:",_5);
if(_3){
objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPTableView")},"setDataSource:",_3);
_itemsByRow=objj_msgSend(objj_msgSend(CPArray,"alloc"),"init");
}
return _3;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_6,_7,_8){
with(_6){
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:child:ofItem"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:child:ofItem'");
}
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:isItemExpandable"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:isItemExpandable'");
}
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:numberOfChildrenOfItem"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:numberOfChildrenOfItem'");
}
if(!objj_msgSend(_8,"respondsToSelector:",sel_getUid("outlineView:objectValueForTableColumn:byItem"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source must implement 'outlineView:objectValueForTableColumn:byItem'");
}
_outlineDataSource=_8;
objj_msgSend(_6,"reloadData");
}
}),new objj_method(sel_getUid("reloadData"),function(_9,_a){
with(_9){
_numberOfVisibleItems=objj_msgSend(_outlineDataSource,"outlineView:numberOfChildrenOfItem:",_9,nil);
_numberOfRows=_numberOfVisibleItems;
var i=0;
for(;i<_numberOfVisibleItems;++i){
_itemsByRow[i]=objj_msgSend(_outlineDataSource,"outlineView:child:ofItem:",_9,i,nil);
}
objj_msgSend(_9,"loadTableCellsInRect:",objj_msgSend(_9,"bounds"));
}
})]);
var _1=objj_getClass("CPOutlineView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPOutlineView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("numberOfRowsInTableView:"),function(_c,_d,_e){
with(_c){
return _numberOfVisibleItems;
}
}),new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"),function(_f,_10,_11,_12,_13){
with(_f){
return objj_msgSend(_outlineDataSource,"outlineView:objectValueForTableColumn:byItem:",_f,_12,_itemsByRow[_13]);
}
})]);
p;9;CPPanel.ji;10;CPWindow.jc;1152;
CPOKButton=1;
CPCancelButton=0;
var _1=objj_allocateClassPair(CPWindow,"CPPanel"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_becomesKeyOnlyIfNeeded"),new objj_ivar("_worksWhenModal")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("isFloatingPanel"),function(_3,_4){
with(_3){
return objj_msgSend(_3,"level")==CPFloatingWindowLevel;
}
}),new objj_method(sel_getUid("setFloatingPanel:"),function(_5,_6,_7){
with(_5){
objj_msgSend(_5,"setLevel:",_7?CPFloatingWindowLevel:CPNormalWindowLevel);
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(_8,_9){
with(_8){
return _becomesKeyOnlyIfNeeded;
}
}),new objj_method(sel_getUid("setBecomesKeyOnlyIfNeeded:"),function(_a,_b,_c){
with(_a){
_becomesKeyOnlyIfNeeded=_c;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(_d,_e){
with(_d){
return _worksWhenModal;
}
}),new objj_method(sel_getUid("setWorksWhenModal:"),function(_f,_10,_11){
with(_f){
_worksWhenModal=_11;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(_12,_13){
with(_12){
return NO;
}
})]);
p;14;CPPasteboard.jI;21;Foundation/CPObject.jI;20;Foundation/CPArray.jI;25;Foundation/CPDictionary.jI;40;Foundation/CPPropertyListSerialization.jc;4493;
CPGeneralPboard="CPGeneralPboard";
CPFontPboard="CPFontPboard";
CPRulerPboard="CPRulerPboard";
CPFindPboard="CPFindPboard";
CPDragPboard="CPDragPboard";
CPColorPboardType="CPColorPboardType";
CPFilenamesPboardType="CPFilenamesPboardType";
CPFontPboardType="CPFontPboardType";
CPHTMLPboardType="CPHTMLPboardType";
CPStringPboardType="CPStringPboardType";
CPURLPboardType="CPURLPboardType";
CPImagePboardType="CPImagePboardType";
var _1=nil;
var _2=objj_allocateClassPair(CPObject,"CPPasteboard"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_types"),new objj_ivar("_owners"),new objj_ivar("_provided"),new objj_ivar("_changeCount"),new objj_ivar("_stateUID")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("_initWithName:"),function(_4,_5,_6){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPObject")},"init");
if(_4){
_name=_6;
_types=[];
_owners=objj_msgSend(CPDictionary,"dictionary");
_provided=objj_msgSend(CPDictionary,"dictionary");
_changeCount=0;
}
return _4;
}
}),new objj_method(sel_getUid("addTypes:owner:"),function(_7,_8,_9,_a){
with(_7){
var i=0,_c=_9.length;
for(;i<_c;++i){
var _d=_9[i];
if(!objj_msgSend(_owners,"objectForKey:",_d)){
objj_msgSend(_types,"addObject:",_d);
objj_msgSend(_provided,"removeObjectForKey:",_d);
}
objj_msgSend(_owners,"setObject:forKey:",_a,_d);
}
return ++_changeCount;
}
}),new objj_method(sel_getUid("declareTypes:owner:"),function(_e,_f,_10,_11){
with(_e){
objj_msgSend(_types,"setArray:",_10);
_owners=objj_msgSend(CPDictionary,"dictionary");
_provided=objj_msgSend(CPDictionary,"dictionary");
var _12=_types.length;
while(_12--){
objj_msgSend(_owners,"setObject:forKey:",_11,_types[_12]);
}
return ++_changeCount;
}
}),new objj_method(sel_getUid("setData:forType:"),function(_13,_14,_15,_16){
with(_13){
objj_msgSend(_provided,"setObject:forKey:",_15,_16);
return YES;
}
}),new objj_method(sel_getUid("setPropertyList:forType:"),function(_17,_18,_19,_1a){
with(_17){
return objj_msgSend(_17,"setData:forType:",objj_msgSend(CPPropertyListSerialization,"dataFromPropertyList:format:errorDescription:",_19,CPPropertyListXMLFormat_v1_0,nil),_1a);
}
}),new objj_method(sel_getUid("setString:forType:"),function(_1b,_1c,_1d,_1e){
with(_1b){
return objj_msgSend(_1b,"setPropertyList:forType:",_1d,_1e);
}
}),new objj_method(sel_getUid("availableTypeFromArray:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(_types,"firstObjectCommonWithArray:",_21);
}
}),new objj_method(sel_getUid("types"),function(_22,_23){
with(_22){
return _types;
}
}),new objj_method(sel_getUid("changeCount"),function(_24,_25){
with(_24){
return _changeCount;
}
}),new objj_method(sel_getUid("dataForType:"),function(_26,_27,_28){
with(_26){
var _29=objj_msgSend(_provided,"objectForKey:",_28);
if(_29){
return _29;
}
var _2a=objj_msgSend(_owners,"objectForKey:",_28);
if(_2a){
objj_msgSend(_2a,"pasteboard:provideDataForType:",_26,_28);
++_changeCount;
return objj_msgSend(_provided,"objectForKey:",_28);
}
return nil;
}
}),new objj_method(sel_getUid("propertyListForType:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=objj_msgSend(_2b,"dataForType:",_2d);
if(_2e){
return objj_msgSend(CPPropertyListSerialization,"propertyListFromData:format:errorDescription:",_2e,CPPropertyListXMLFormat_v1_0,nil);
}
return nil;
}
}),new objj_method(sel_getUid("stringForType:"),function(_2f,_30,_31){
with(_2f){
return objj_msgSend(_2f,"propertyListForType:",_31);
}
}),new objj_method(sel_getUid("_generateStateUID"),function(_32,_33){
with(_32){
var _34=32;
_stateUID="";
while(_34--){
_stateUID+=FLOOR(RAND()*16).toString(16).toUpperCase();
}
return _stateUID;
}
}),new objj_method(sel_getUid("_stateUID"),function(_35,_36){
with(_35){
return _stateUID;
}
})]);
class_addMethods(_3,[new objj_method(sel_getUid("initialize"),function(_37,_38){
with(_37){
if(_37!=objj_msgSend(CPPasteboard,"class")){
return;
}
objj_msgSend(_37,"setVersion:",1);
_1=objj_msgSend(CPDictionary,"dictionary");
}
}),new objj_method(sel_getUid("generalPasteboard"),function(_39,_3a){
with(_39){
return objj_msgSend(CPPasteboard,"pasteboardWithName:",CPGeneralPboard);
}
}),new objj_method(sel_getUid("pasteboardWithName:"),function(_3b,_3c,_3d){
with(_3b){
var _3e=objj_msgSend(_1,"objectForKey:",_3d);
if(_3e){
return _3e;
}
_3e=objj_msgSend(objj_msgSend(CPPasteboard,"alloc"),"_initWithName:",_3d);
objj_msgSend(_1,"setObject:forKey:",_3e,_3d);
return _3e;
}
})]);
p;15;CPPopUpButton.ji;10;CPButton.ji;12;CPGeometry.ji;8;CPMenu.ji;12;CPMenuItem.jc;13597;
var _1=7;
CPPopUpButtonStatePullsDown=1<<12;
var _2=objj_allocateClassPair(CPButton,"CPPopUpButton"),_3=_2.isa;
class_addIvars(_2,[new objj_ivar("_selectedIndex"),new objj_ivar("_preferredEdge"),new objj_ivar("_menu")]);
objj_registerClassPair(_2);
objj_addClassForBundle(_2,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_2,[new objj_method(sel_getUid("initWithFrame:pullsDown:"),function(_4,_5,_6,_7){
with(_4){
_4=objj_msgSendSuper({receiver:_4,super_class:objj_getClass("CPButton")},"initWithFrame:",_6);
if(_4){
_selectedIndex=CPNotFound;
_preferredEdge=CPMaxYEdge;
objj_msgSend(_4,"setValue:forThemedAttributeName:",CPImageLeft,"image-position");
objj_msgSend(_4,"setValue:forThemedAttributeName:",CPLeftTextAlignment,"alignment");
objj_msgSend(_4,"setValue:forThemedAttributeName:",CPLineBreakByTruncatingTail,"line-break-mode");
objj_msgSend(_4,"setMenu:",objj_msgSend(objj_msgSend(CPMenu,"alloc"),"initWithTitle:",""));
objj_msgSend(_4,"setPullsDown:",_7);
}
return _4;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
return objj_msgSend(_8,"initWithFrame:pullsDown:",_a,NO);
}
}),new objj_method(sel_getUid("setPullsDown:"),function(_b,_c,_d){
with(_b){
if((!!(_controlState&CPPopUpButtonStatePullsDown))===_d){
return;
}
if(_d){
_controlState|=CPPopUpButtonStatePullsDown;
}else{
_controlState&=~CPPopUpButtonStatePullsDown;
}
var _e=objj_msgSend(_menu,"itemArray");
if(objj_msgSend(_e,"count")<=0){
return;
}
objj_msgSend(_e[0],"setHidden:",objj_msgSend(_b,"pullsDown"));
objj_msgSend(_b,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("pullsDown"),function(_f,_10){
with(_f){
return _controlState&CPPopUpButtonStatePullsDown;
}
}),new objj_method(sel_getUid("addItem:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_menu,"addItem:",_13);
}
}),new objj_method(sel_getUid("addItemWithTitle:"),function(_14,_15,_16){
with(_14){
objj_msgSend(_menu,"addItemWithTitle:action:keyEquivalent:",_16,NULL,nil);
}
}),new objj_method(sel_getUid("addItemsWithTitles:"),function(_17,_18,_19){
with(_17){
var _1a=0,_1b=objj_msgSend(_19,"count");
for(;_1a<_1b;++_1a){
objj_msgSend(_17,"addItemWithTitle:",_19[_1a]);
}
}
}),new objj_method(sel_getUid("insertItemWithTitle:atIndex:"),function(_1c,_1d,_1e,_1f){
with(_1c){
var _20=objj_msgSend(_1c,"itemArray"),_21=objj_msgSend(_20,"count");
while(_21--){
if(objj_msgSend(_20[_21],"title")==_1e){
objj_msgSend(_1c,"removeItemAtIndex:",_21);
}
}
objj_msgSend(_menu,"insertItemWithTitle:action:keyEquivalent:atIndex:",_1e,NULL,nil,_1f);
}
}),new objj_method(sel_getUid("removeAllItems"),function(_22,_23){
with(_22){
var _24=objj_msgSend(_menu,"numberOfItems");
while(_24--){
objj_msgSend(_menu,"removeItemAtIndex:",0);
}
}
}),new objj_method(sel_getUid("removeItemWithTitle:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_25,"removeItemAtIndex:",objj_msgSend(_25,"indexOfItemWithTitle:",_27));
objj_msgSend(_25,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("removeItemAtIndex:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_menu,"removeItemAtIndex:",_2a);
objj_msgSend(_28,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("selectedItem"),function(_2b,_2c){
with(_2b){
if(_selectedIndex<0){
return nil;
}
return objj_msgSend(_menu,"itemAtIndex:",_selectedIndex);
}
}),new objj_method(sel_getUid("titleOfSelectedItem"),function(_2d,_2e){
with(_2d){
return objj_msgSend(objj_msgSend(_2d,"selectedItem"),"title");
}
}),new objj_method(sel_getUid("indexOfSelectedItem"),function(_2f,_30){
with(_2f){
return _selectedIndex;
}
}),new objj_method(sel_getUid("objectValue"),function(_31,_32){
with(_31){
return _selectedIndex;
}
}),new objj_method(sel_getUid("selectItem:"),function(_33,_34,_35){
with(_33){
objj_msgSend(_33,"selectItemAtIndex:",objj_msgSend(_33,"indexOfItem:",_35));
}
}),new objj_method(sel_getUid("selectItemAtIndex:"),function(_36,_37,_38){
with(_36){
if(_selectedIndex==_38){
return;
}
if(_selectedIndex>=0&&!objj_msgSend(_36,"pullsDown")){
objj_msgSend(objj_msgSend(_36,"selectedItem"),"setState:",CPOffState);
}
_selectedIndex=_38;
if(_selectedIndex>=0&&!objj_msgSend(_36,"pullsDown")){
objj_msgSend(objj_msgSend(_36,"selectedItem"),"setState:",CPOnState);
}
objj_msgSend(_36,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("selectItemWithTag:"),function(_39,_3a,_3b){
with(_39){
objj_msgSend(_39,"selectItemAtIndex:",objj_msgSend(_39,"indexOfItemWithTag:",_3b));
}
}),new objj_method(sel_getUid("selectItemWithTitle:"),function(_3c,_3d,_3e){
with(_3c){
objj_msgSend(_3c,"selectItemAtIndex:",objj_msgSend(_3c,"indexOfItemWithTitle:",_3e));
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_3f,_40,_41){
with(_3f){
objj_msgSend(_3f,"selectItemAtIndex:",objj_msgSend(_41,"intValue"));
}
}),new objj_method(sel_getUid("menu"),function(_42,_43){
with(_42){
return _menu;
}
}),new objj_method(sel_getUid("setMenu:"),function(_44,_45,_46){
with(_44){
if(_menu===_46){
return;
}
var _47=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_menu){
objj_msgSend(_47,"removeObserver:name:object:",_44,CPMenuDidAddItemNotification,_menu);
objj_msgSend(_47,"removeObserver:name:object:",_44,CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_47,"removeObserver:name:object:",_44,CPMenuDidRemoveItemNotification,_menu);
}
_menu=_46;
if(_menu){
objj_msgSend(_47,"addObserver:selector:name:object:",_44,sel_getUid("menuDidAddItem:"),CPMenuDidAddItemNotification,_menu);
objj_msgSend(_47,"addObserver:selector:name:object:",_44,sel_getUid("menuDidChangeItem:"),CPMenuDidChangeItemNotification,_menu);
objj_msgSend(_47,"addObserver:selector:name:object:",_44,sel_getUid("menuDidRemoveItem:"),CPMenuDidRemoveItemNotification,_menu);
}
objj_msgSend(_44,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("numberOfItems"),function(_48,_49){
with(_48){
return objj_msgSend(_menu,"numberOfItems");
}
}),new objj_method(sel_getUid("itemArray"),function(_4a,_4b){
with(_4a){
return objj_msgSend(_menu,"itemArray");
}
}),new objj_method(sel_getUid("itemAtIndex:"),function(_4c,_4d,_4e){
with(_4c){
return objj_msgSend(_menu,"itemAtIndex:",_4e);
}
}),new objj_method(sel_getUid("itemTitleAtIndex:"),function(_4f,_50,_51){
with(_4f){
return objj_msgSend(objj_msgSend(_menu,"itemAtIndex:",_51),"title");
}
}),new objj_method(sel_getUid("itemTitles"),function(_52,_53){
with(_52){
var _54=[],_55=objj_msgSend(_52,"itemArray"),_56=0,_57=objj_msgSend(_55,"count");
for(;_56<_57;++_56){
_55.push(objj_msgSend(_55[_56],"title"));
}
}
}),new objj_method(sel_getUid("itemWithTitle:"),function(_58,_59,_5a){
with(_58){
return objj_msgSend(_menu,"itemAtIndex:",objj_msgSend(_menu,"indexOfItemWithTitle:",_5a));
}
}),new objj_method(sel_getUid("lastItem"),function(_5b,_5c){
with(_5b){
return objj_msgSend(objj_msgSend(_menu,"itemArray"),"lastObject");
}
}),new objj_method(sel_getUid("indexOfItem:"),function(_5d,_5e,_5f){
with(_5d){
return objj_msgSend(_menu,"indexOfItem:",_5f);
}
}),new objj_method(sel_getUid("indexOfItemWithTag:"),function(_60,_61,_62){
with(_60){
return objj_msgSend(_menu,"indexOfItemWithTag:",_62);
}
}),new objj_method(sel_getUid("indexOfItemWithTitle:"),function(_63,_64,_65){
with(_63){
return objj_msgSend(_menu,"indexOfItemWithTitle:",_65);
}
}),new objj_method(sel_getUid("indexOfItemWithRepresentedObject:"),function(_66,_67,_68){
with(_66){
return objj_msgSend(_menu,"indexOfItemWithRepresentedObejct:",_68);
}
}),new objj_method(sel_getUid("indexOfItemWithTarget:action:"),function(_69,_6a,_6b,_6c){
with(_69){
return objj_msgSend(_menu,"indexOfItemWithTarget:action:",_6b,_6c);
}
}),new objj_method(sel_getUid("preferredEdge"),function(_6d,_6e){
with(_6d){
return _preferredEdge;
}
}),new objj_method(sel_getUid("setPreferredEdge:"),function(_6f,_70,_71){
with(_6f){
_preferredEdge=_71;
}
}),new objj_method(sel_getUid("setTitle:"),function(_72,_73,_74){
with(_72){
if(objj_msgSend(_72,"title")===_74){
return;
}
if(objj_msgSend(_72,"pullsDown")){
var _75=objj_msgSend(_menu,"itemArray");
if(objj_msgSend(_75,"count")<=0){
objj_msgSend(_72,"addItemWithTitle:",_74);
}else{
objj_msgSend(_75[0],"setTitle:",_74);
objj_msgSend(_72,"synchronizeTitleAndSelectedItem");
}
}else{
var _76=objj_msgSend(_72,"indexOfItemWithTitle:",_74);
if(_76<0){
objj_msgSend(_72,"addItemWithTitle:",_74);
_76=objj_msgSend(_72,"numberOfItems")-1;
}
objj_msgSend(_72,"selectItemAtIndex:",_76);
}
}
}),new objj_method(sel_getUid("setImage:"),function(_77,_78,_79){
with(_77){
}
}),new objj_method(sel_getUid("synchronizeTitleAndSelectedItem"),function(_7a,_7b){
with(_7a){
var _7c=nil;
if(objj_msgSend(_7a,"pullsDown")){
var _7d=objj_msgSend(_menu,"itemArray");
if(objj_msgSend(_7d,"count")>0){
_7c=_7d[0];
}
}else{
_7c=objj_msgSend(_7a,"selectedItem");
}
objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("CPButton")},"setImage:",objj_msgSend(_7c,"image"));
objj_msgSendSuper({receiver:_7a,super_class:objj_getClass("CPButton")},"setTitle:",objj_msgSend(_7c,"title"));
}
}),new objj_method(sel_getUid("menuDidAddItem:"),function(_7e,_7f,_80){
with(_7e){
var _81=objj_msgSend(objj_msgSend(_80,"userInfo"),"objectForKey:","CPMenuItemIndex");
if(_selectedIndex<0){
objj_msgSend(_7e,"selectItemAtIndex:",0);
}else{
if(_81==_selectedIndex){
objj_msgSend(_7e,"synchronizeTitleAndSelectedItem");
}else{
if(_81<_selectedIndex){
++_selectedIndex;
}
}
}
if(_81==0&&objj_msgSend(_7e,"pullsDown")){
var _82=objj_msgSend(_menu,"itemArray");
objj_msgSend(_82[0],"setHidden:",YES);
if(_82.length>0){
objj_msgSend(_82[1],"setHidden:",NO);
}
}
var _83=objj_msgSend(_menu,"itemArray")[_81],_84=objj_msgSend(_83,"action");
if(!_84||(_84===sel_getUid("_popUpItemAction:"))){
objj_msgSend(_83,"setTarget:",_7e);
objj_msgSend(_83,"setAction:",sel_getUid("_popUpItemAction:"));
}
}
}),new objj_method(sel_getUid("menuDidChangeItem:"),function(_85,_86,_87){
with(_85){
var _88=objj_msgSend(objj_msgSend(_87,"userInfo"),"objectForKey:","CPMenuItemIndex");
if(objj_msgSend(_85,"pullsDown")&&_88!=0){
return;
}
if(!objj_msgSend(_85,"pullsDown")&&_88!=_selectedIndex){
return;
}
objj_msgSend(_85,"synchronizeTitleAndSelectedItem");
}
}),new objj_method(sel_getUid("menuDidRemoveItem:"),function(_89,_8a,_8b){
with(_89){
var _8c=objj_msgSend(_89,"numberOfItems");
if(_8c<=_selectedIndex){
objj_msgSend(_89,"selectItemAtIndex:",_8c-1);
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_8d,_8e,_8f){
with(_8d){
if(!objj_msgSend(_8d,"isEnabled")){
return;
}
objj_msgSend(_8d,"highlight:",YES);
var _90=objj_msgSend(_8d,"menu"),_91=objj_msgSend(_8d,"window"),_92=objj_msgSend(_CPMenuWindow,"menuWindowWithMenu:font:",_90,objj_msgSend(_8d,"font"));
objj_msgSend(_92,"setDelegate:",_8d);
objj_msgSend(_92,"setBackgroundStyle:",_CPMenuWindowPopUpBackgroundStyle);
if(objj_msgSend(_8d,"pullsDown")){
var _93=objj_msgSend(_91,"convertBaseToBridge:",objj_msgSend(_8d,"convertPoint:toView:",CGPointMake(0,CGRectGetMaxY(objj_msgSend(_8d,"bounds"))),nil));
}else{
var _94=objj_msgSend(_8d,"convertRect:toView:",objj_msgSend(_8d,"contentRectForBounds:",objj_msgSend(_8d,"bounds")),nil),_93=objj_msgSend(_91,"convertBaseToBridge:",_94.origin),_95=objj_msgSend(_92,"rectForItemAtIndex:",_selectedIndex);
_93.x-=CGRectGetMinX(_95)+objj_msgSend(_92,"overlapOffsetWidth")+objj_msgSend(objj_msgSend(objj_msgSend(_90,"itemAtIndex:",_selectedIndex),"_menuItemView"),"overlapOffsetWidth");
_93.y-=CGRectGetMinY(_95)+(CGRectGetHeight(_95)-CGRectGetHeight(_94))/2;
}
objj_msgSend(_92,"setFrameOrigin:",_93);
var _96=CGRectGetMaxX(objj_msgSend(_92,"frame")),_97=objj_msgSend(_91,"convertBaseToBridge:",CGPointMake(CGRectGetMaxX(objj_msgSend(_8d,"convertRect:toView:",objj_msgSend(_8d,"bounds"),nil)),0)).x;
if(_96<_97){
objj_msgSend(_92,"setMinWidth:",CGRectGetWidth(objj_msgSend(_92,"frame"))+_97-_96-(objj_msgSend(_8d,"pullsDown")?0:_1));
}
objj_msgSend(_92,"orderFront:",_8d);
objj_msgSend(_92,"beginTrackingWithEvent:sessionDelegate:didEndSelector:",_8f,_8d,sel_getUid("menuWindowDidFinishTracking:highlightedItem:"));
}
}),new objj_method(sel_getUid("menuWindowDidFinishTracking:highlightedItem:"),function(_98,_99,_9a,_9b){
with(_98){
objj_msgSend(_CPMenuWindow,"poolMenuWindow:",_9a);
objj_msgSend(_98,"highlight:",NO);
var _9c=objj_msgSend(_menu,"indexOfItem:",_9b);
if(_9c==CPNotFound){
return;
}
objj_msgSend(_98,"selectItemAtIndex:",_9c);
objj_msgSend(CPApp,"sendAction:to:from:",objj_msgSend(_9b,"action"),objj_msgSend(_9b,"target"),_9b);
}
}),new objj_method(sel_getUid("_popUpItemAction:"),function(_9d,_9e,_9f){
with(_9d){
objj_msgSend(_9d,"sendAction:to:",objj_msgSend(_9d,"action"),objj_msgSend(_9d,"target"));
}
})]);
var _a0="CPPopUpButtonMenuKey",_a1="CPPopUpButtonSelectedIndexKey",_a2="CPPopUpButtonPullsDownKey";
var _2=objj_getClass("CPPopUpButton");
if(!_2){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPPopUpButton\""));
}
var _3=_2.isa;
class_addMethods(_2,[new objj_method(sel_getUid("initWithCoder:"),function(_a3,_a4,_a5){
with(_a3){
_a3=objj_msgSendSuper({receiver:_a3,super_class:objj_getClass("CPButton")},"initWithCoder:",_a5);
if(_a3){
_selectedIndex=-1;
objj_msgSend(_a3,"setMenu:",objj_msgSend(_a5,"decodeObjectForKey:",_a0));
objj_msgSend(_a3,"selectItemAtIndex:",objj_msgSend(_a5,"decodeObjectForKey:",_a1));
}
return _a3;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a6,_a7,_a8){
with(_a6){
objj_msgSendSuper({receiver:_a6,super_class:objj_getClass("CPButton")},"encodeWithCoder:",_a8);
objj_msgSend(_a8,"encodeObject:forKey:",_menu,_a0);
objj_msgSend(_a8,"encodeInt:forKey:",_selectedIndex,_a1);
}
})]);
p;21;CPProgressIndicator.jI;19;AppKit/CGGeometry.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.jc;8511;
CPProgressIndicatorBarStyle=0;
CPProgressIndicatorSpinningStyle=1;
CPProgressIndicatorHUDBarStyle=2;
var _1=nil,_2=nil,_3=nil,_4=nil;
var _5=objj_allocateClassPair(CPView,"CPProgressIndicator"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_minValue"),new objj_ivar("_maxValue"),new objj_ivar("_doubleValue"),new objj_ivar("_controlSize"),new objj_ivar("_isIndeterminate"),new objj_ivar("_style"),new objj_ivar("_isAnimating"),new objj_ivar("_isDisplayedWhenStoppedSet"),new objj_ivar("_isDisplayedWhenStopped"),new objj_ivar("_barView")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithFrame:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPView")},"initWithFrame:",_9);
if(_7){
_minValue=0;
_maxValue=100;
_doubleValue=0;
_style=CPProgressIndicatorBarStyle;
_isDisplayedWhenStoppedSet=NO;
_controlSize=CPRegularControlSize;
objj_msgSend(_7,"updateBackgroundColor");
objj_msgSend(_7,"drawBar");
}
return _7;
}
}),new objj_method(sel_getUid("setUsesThreadedAnimation:"),function(_a,_b,_c){
with(_a){
}
}),new objj_method(sel_getUid("startAnimation:"),function(_d,_e,_f){
with(_d){
_isAnimating=YES;
objj_msgSend(_d,"_hideOrDisplay");
}
}),new objj_method(sel_getUid("stopAnimation:"),function(_10,_11,_12){
with(_10){
_isAnimating=NO;
objj_msgSend(_10,"_hideOrDisplay");
}
}),new objj_method(sel_getUid("usesThreadedAnimation"),function(_13,_14){
with(_13){
return NO;
}
}),new objj_method(sel_getUid("incrementBy:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_15,"setDoubleValue:",_doubleValue+_17);
}
}),new objj_method(sel_getUid("setDoubleValue:"),function(_18,_19,_1a){
with(_18){
_doubleValue=MIN(MAX(_1a,_minValue),_maxValue);
objj_msgSend(_18,"drawBar");
}
}),new objj_method(sel_getUid("doubleValue"),function(_1b,_1c){
with(_1b){
return _doubleValue;
}
}),new objj_method(sel_getUid("setMinValue:"),function(_1d,_1e,_1f){
with(_1d){
_minValue=_1f;
}
}),new objj_method(sel_getUid("minValue"),function(_20,_21){
with(_20){
return _minValue;
}
}),new objj_method(sel_getUid("setMaxValue:"),function(_22,_23,_24){
with(_22){
_maxValue=_24;
}
}),new objj_method(sel_getUid("maxValue"),function(_25,_26){
with(_25){
return _maxValue;
}
}),new objj_method(sel_getUid("setControlSize:"),function(_27,_28,_29){
with(_27){
if(_controlSize==_29){
return;
}
_controlSize=_29;
objj_msgSend(_27,"updateBackgroundColor");
}
}),new objj_method(sel_getUid("controlSize"),function(_2a,_2b){
with(_2a){
return _controlSize;
}
}),new objj_method(sel_getUid("setControlTint:"),function(_2c,_2d,_2e){
with(_2c){
}
}),new objj_method(sel_getUid("controlTint"),function(_2f,_30){
with(_2f){
return 0;
}
}),new objj_method(sel_getUid("setBezeled:"),function(_31,_32,_33){
with(_31){
}
}),new objj_method(sel_getUid("isBezeled"),function(_34,_35){
with(_34){
return YES;
}
}),new objj_method(sel_getUid("setIndeterminate:"),function(_36,_37,_38){
with(_36){
if(_isIndeterminate==_38){
return;
}
_isIndeterminate=_38;
objj_msgSend(_36,"updateBackgroundColor");
}
}),new objj_method(sel_getUid("isIndeterminate"),function(_39,_3a){
with(_39){
return _isIndeterminate;
}
}),new objj_method(sel_getUid("setStyle:"),function(_3b,_3c,_3d){
with(_3b){
if(_style==_3d){
return;
}
_style=_3d;
objj_msgSend(_3b,"updateBackgroundColor");
}
}),new objj_method(sel_getUid("sizeToFit"),function(_3e,_3f){
with(_3e){
if(_style==CPProgressIndicatorSpinningStyle){
objj_msgSend(_3e,"setFrameSize:",objj_msgSend(objj_msgSend(_1[_controlSize],"patternImage"),"size"));
}else{
objj_msgSend(_3e,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_3e,"frame")),_4[_2+"BezelBorder"+_3[CPProgressIndicatorBarStyle]+_CPControlIdentifierForControlSize(_controlSize)][0].height));
}
}
}),new objj_method(sel_getUid("setDisplayedWhenStopped:"),function(_40,_41,_42){
with(_40){
if(_isDisplayedWhenStoppedSet&&_isDisplayedWhenStopped==_42){
return;
}
_isDisplayedWhenStoppedSet=YES;
_isDisplayedWhenStopped=_42;
objj_msgSend(_40,"_hideOrDisplay");
}
}),new objj_method(sel_getUid("isDisplayedWhenStopped"),function(_43,_44){
with(_43){
if(_isDisplayedWhenStoppedSet){
return _isDisplayedWhenStopped;
}
if(_style==CPProgressIndicatorBarStyle||_style==CPProgressIndicatorHUDBarStyle){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("_hideOrDisplay"),function(_45,_46){
with(_45){
objj_msgSend(_45,"setHidden:",!_isAnimating&&!objj_msgSend(_45,"isDisplayedWhenStopped"));
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_47,_48,_49){
with(_47){
objj_msgSendSuper({receiver:_47,super_class:objj_getClass("CPView")},"setFrameSize:",_49);
objj_msgSend(_47,"drawBar");
}
}),new objj_method(sel_getUid("drawBar"),function(_4a,_4b){
with(_4a){
if(_style==CPProgressIndicatorSpinningStyle){
return;
}
if(!_barView){
_barView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(2,2,0,9));
objj_msgSend(_barView,"setBackgroundColor:",objj_msgSend(CPColor,"redColor"));
objj_msgSend(_4a,"addSubview:",_barView);
}
objj_msgSend(_barView,"setBackgroundColor:",_CPControlColorWithPatternImage(_4,_2,"Bar",_3[_style],_CPControlIdentifierForControlSize(_controlSize)));
objj_msgSend(_barView,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_4a,"bounds"))*(_doubleValue-_minValue)/(_maxValue-_minValue)-4,9));
}
}),new objj_method(sel_getUid("updateBackgroundColor"),function(_4c,_4d){
with(_4c){
if(YES){
if(_style==CPProgressIndicatorSpinningStyle){
objj_msgSend(_barView,"removeFromSuperview");
_barView=nil;
objj_msgSend(_4c,"setBackgroundColor:",_1[_controlSize]);
}else{
objj_msgSend(_4c,"setBackgroundColor:",_CPControlThreePartImagePattern(NO,_4,_2,"BezelBorder",_3[_style],_CPControlIdentifierForControlSize(_controlSize)));
objj_msgSend(_4c,"drawBar");
}
}else{
objj_msgSend(_4c,"setBackgroundColor:",nil);
}
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("initialize"),function(_4e,_4f){
with(_4e){
if(_4e!=objj_msgSend(CPProgressIndicator,"class")){
return;
}
var _50=objj_msgSend(CPBundle,"bundleForClass:",_4e);
_1=[];
_1[CPMiniControlSize]=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_50,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(64,64)));
_1[CPSmallControlSize]=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_50,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(64,64)));
_1[CPRegularControlSize]=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_50,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(64,64)));
CPProgressIndicatorBezelBorderViewPool=[];
var _51=CPProgressIndicatorBarStyle,end=CPProgressIndicatorHUDBarStyle;
for(;_51<=end;++_51){
CPProgressIndicatorBezelBorderViewPool[_51]=[];
CPProgressIndicatorBezelBorderViewPool[_51][CPMiniControlSize]=[];
CPProgressIndicatorBezelBorderViewPool[_51][CPSmallControlSize]=[];
CPProgressIndicatorBezelBorderViewPool[_51][CPRegularControlSize]=[];
}
_2=objj_msgSend(_4e,"className");
_3=[];
_3[CPProgressIndicatorBarStyle]="Bar";
_3[CPProgressIndicatorSpinningStyle]="Spinny";
_3[CPProgressIndicatorHUDBarStyle]="HUDBar";
var _53=_CPControlIdentifierForControlSize(CPRegularControlSize),_54=_CPControlIdentifierForControlSize(CPSmallControlSize),_55=_CPControlIdentifierForControlSize(CPMiniControlSize);
_4=[];
var _56=_2+"BezelBorder"+_3[CPProgressIndicatorBarStyle];
_4[_56+_53]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_54]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_55]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_56=_2+"Bar"+_3[CPProgressIndicatorBarStyle];
_4[_56+_53]={width:1,height:9};
_4[_56+_54]={width:1,height:9};
_4[_56+_55]={width:1,height:9};
_56=_2+"BezelBorder"+_3[CPProgressIndicatorHUDBarStyle];
_4[_56+_53]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_54]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_4[_56+_55]=[{width:3,height:15},{width:1,height:15},{width:3,height:15}];
_56=_2+"Bar"+_3[CPProgressIndicatorHUDBarStyle];
_4[_56+_53]={width:1,height:9};
_4[_56+_54]={width:1,height:9};
_4[_56+_55]={width:1,height:9};
}
})]);
p;13;CPResponder.jI;21;Foundation/CPObject.jc;4785;
CPDeleteKeyCode=8;
CPUpArrowKeyCode=63232;
CPDownArrowKeyCode=63233;
CPLeftArrowKeyCode=63234;
CPRightArrowKeyCode=63235;
var _1=objj_allocateClassPair(CPObject,"CPResponder"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_menu"),new objj_ivar("_nextResponder")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("acceptsFirstResponder"),function(_3,_4){
with(_3){
return NO;
}
}),new objj_method(sel_getUid("becomeFirstResponder"),function(_5,_6){
with(_5){
return YES;
}
}),new objj_method(sel_getUid("resignFirstResponder"),function(_7,_8){
with(_7){
return YES;
}
}),new objj_method(sel_getUid("setNextResponder:"),function(_9,_a,_b){
with(_9){
_nextResponder=_b;
}
}),new objj_method(sel_getUid("nextResponder"),function(_c,_d){
with(_c){
return _nextResponder;
}
}),new objj_method(sel_getUid("interpretKeyEvents:"),function(_e,_f,_10){
with(_e){
var _11,_12=0;
while(_11=_10[_12++]){
switch(objj_msgSend(_11,"keyCode")){
case CPLeftArrowKeyCode:
objj_msgSend(_e,"moveBackward:",_e);
break;
case CPRightArrowKeyCode:
objj_msgSend(_e,"moveForward:",_e);
break;
case CPUpArrowKeyCode:
objj_msgSend(_e,"moveUp:",_e);
break;
case CPDownArrowKeyCode:
objj_msgSend(_e,"moveDown:",_e);
break;
case CPDeleteKeyCode:
objj_msgSend(_e,"deleteBackward:",_e);
break;
case 3:
case 13:
objj_msgSend(_e,"insertLineBreak:",_e);
break;
default:
objj_msgSend(_e,"insertText:",objj_msgSend(_11,"characters"));
}
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_13,_14,_15){
with(_13){
objj_msgSend(_nextResponder,"performSelector:withObject:",_14,_15);
}
}),new objj_method(sel_getUid("mouseDragged:"),function(_16,_17,_18){
with(_16){
objj_msgSend(_nextResponder,"performSelector:withObject:",_17,_18);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_19,_1a,_1b){
with(_19){
objj_msgSend(_nextResponder,"performSelector:withObject:",_1a,_1b);
}
}),new objj_method(sel_getUid("mouseMoved:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_nextResponder,"performSelector:withObject:",_1d,_1e);
}
}),new objj_method(sel_getUid("mouseEntered:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_nextResponder,"performSelector:withObject:",_20,_21);
}
}),new objj_method(sel_getUid("mouseExited:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_nextResponder,"performSelector:withObject:",_23,_24);
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_nextResponder,"performSelector:withObject:",_26,_27);
}
}),new objj_method(sel_getUid("keyDown:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(_nextResponder,"performSelector:withObject:",_29,_2a);
}
}),new objj_method(sel_getUid("keyUp:"),function(_2b,_2c,_2d){
with(_2b){
objj_msgSend(_nextResponder,"performSelector:withObject:",_2c,_2d);
}
}),new objj_method(sel_getUid("performKeyEquivalent:"),function(_2e,_2f,_30){
with(_2e){
return NO;
}
}),new objj_method(sel_getUid("deleteBackward:"),function(_31,_32,_33){
with(_31){
}
}),new objj_method(sel_getUid("insertLineBreak:"),function(_34,_35,_36){
with(_34){
}
}),new objj_method(sel_getUid("insertText:"),function(_37,_38,_39){
with(_37){
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_3a,_3b,_3c){
with(_3a){
if(objj_msgSend(_3a,"respondsToSelector:",_3c)){
objj_msgSend(_3a,"performSelector:",_3c);
}else{
objj_msgSend(_nextResponder,"doCommandBySelector:",_3c);
}
}
}),new objj_method(sel_getUid("tryToPerform:with:"),function(_3d,_3e,_3f,_40){
with(_3d){
if(objj_msgSend(_3d,"respondsToSelector:",_3f)){
objj_msgSend(_3d,"performSelector:withObject:",_3f,_40);
return YES;
}
return objj_msgSend(_nextResponder,"tryToPerform:with:",_3f,_40);
}
}),new objj_method(sel_getUid("setMenu:"),function(_41,_42,_43){
with(_41){
_menu=_43;
}
}),new objj_method(sel_getUid("menu"),function(_44,_45){
with(_44){
return _menu;
}
}),new objj_method(sel_getUid("undoManager"),function(_46,_47){
with(_46){
return objj_msgSend(_nextResponder,"performSelector:",_47);
}
}),new objj_method(sel_getUid("noResponderFor:"),function(_48,_49,_4a){
with(_48){
}
})]);
var _4b="CPResponderNextResponderKey";
var _1=objj_getClass("CPResponder");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPResponder\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_4c,_4d,_4e){
with(_4c){
_4c=objj_msgSendSuper({receiver:_4c,super_class:objj_getClass("CPObject")},"init");
if(_4c){
_nextResponder=objj_msgSend(_4e,"decodeObjectForKey:",_4b);
}
return _4c;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_4f,_50,_51){
with(_4f){
objj_msgSend(_51,"encodeConditionalObject:forKey:",_nextResponder,_4b);
}
})]);
p;13;CPScrollber.ji;11;CPControl.jc;31623;
CPScrollerNoPart=0;
CPScrollerDecrementPage=1;
CPScrollerKnob=2;
CPScrollerIncrementPage=3;
CPScrollerDecrementLine=4;
CPScrollerIncrementLine=5;
CPScrollerKnobSlot=6;
CPScrollerIncrementArrow=0;
CPScrollerDecrementArrow=1;
CPNoScrollerParts=0;
CPOnlyScrollerArrows=1;
CPAllScrollerParts=2;
var _1=[],_2=[],_3=[],_4=[];
_1[CPRegularControlSize]=14;
_1[CPSmallControlSize]=11;
_1[CPMiniControlSize]=11;
_2[CPRegularControlSize]=18;
_2[CPSmallControlSize]=12;
_2[CPMiniControlSize]=12;
_3[CPRegularControlSize]=21;
_3[CPSmallControlSize]=16;
_3[CPMiniControlSize]=16;
_4[CPRegularControlSize]=16;
_4[CPSmallControlSize]=10;
_4[CPMiniControlSize]=10;
var _5="Knob",_6="KnobSlot",_7="DecrementArrow",_8="IncrementArrow",_9="Horizontal",_a="Vertical",_b="Highlighted",_c="Disabled";
var _d=nil,_e={};
var _f=[CPScrollerKnobSlot,CPScrollerDecrementLine,CPScrollerIncrementLine,CPScrollerKnob];
var _10=objj_allocateClassPair(CPControl,"CPScrobller"),_11=_10.isa;
class_addIvars(_10,[new objj_ivar("_controlSize"),new objj_ivar("_usableParts"),new objj_ivar("_partRects"),new objj_ivar("_isVertical"),new objj_ivar("_knobProportion"),new objj_ivar("_hitPart"),new objj_ivar("_trackingPart"),new objj_ivar("_trackingFloatValue"),new objj_ivar("_trackingStartPoint"),new objj_ivar("_knobView"),new objj_ivar("_knobSlotView"),new objj_ivar("_decrementArrowView"),new objj_ivar("_incrementArrowView"),new objj_ivar("_layoutViews"),new objj_ivar("_scrollerWidth"),new objj_ivar("_trackOverlapInset"),new objj_ivar("_horizontalPartColors"),new objj_ivar("_verticalPartColors"),new objj_ivar("_verticalMinimumKnobSize"),new objj_ivar("_verticalDecrementLineSize"),new objj_ivar("_verticalIncrementLineSize"),new objj_ivar("_horizontalMinimumKnobSize"),new objj_ivar("_horizontalDecrementLineSize"),new objj_ivar("_horizontalIncrementLineSize")]);
objj_registerClassPair(_10);
objj_addClassForBundle(_10,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_10,[new objj_method(sel_getUid("initWithFrame:"),function(_12,_13,_14){
with(_12){
_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPControl")},"initWithFrame:",_14);
if(_12){
_layoutViews={};
_controlSize=CPRegularControlSize;
_partRects=[];
objj_msgSend(_12,"setFloatValue:knobProportion:",0,1);
_hitPart=CPScrollerNoPart;
var _15=objj_msgSend(_12,"theme"),_16=objj_msgSend(_12,"class");
_trackOverlapInset=CPThemedValueMake({top:(0),left:(0),bottom:(0),right:(0)},"track-overlap-inset",_15,_16);
_verticalMinimumKnobSize=CPThemedValueMake({width:10,height:10},"vertical-minimum-knob-size",_15,_16);
_verticalDecrementLineSize=CPThemedValueMake({width:0,height:0},"vertical-decrement-line-size",_15,_16);
_verticalIncrementLineSize=CPThemedValueMake({width:0,height:0},"vertical-increment-line-size",_15,_16);
_horizontalMinimumKnobSize=CPThemedValueMake({width:0,height:0},"horizontal-minimum-knob-size",_15,_16);
_horizontalDecrementLineSize=CPThemedValueMake({width:0,height:0},"horizontal-decrement-line-size",_15,_16);
_horizontalIncrementLineSize=CPThemedValueMake({width:0,height:0},"horizontal-increment-line-size",_15,_16);
_horizontalPartColors=[];
_verticalPartColors=[];
var _17=0,_18=_f.length;
for(;_17<_18;++_17){
var _19=_f[_17];
_horizontalPartColors[_19]=CPThemedValueMake(nil,"horizontal-"+_19+"-color",_15,_16);
_verticalPartColors[_19]=CPThemedValueMake(nil,"vertical-"+_19+"-color",_15,_16);
}
objj_msgSend(_12,"setNeedsLayout");
}
return _12;
}
}),new objj_method(sel_getUid("isVertical"),function(_1a,_1b){
with(_1a){
if(_isVertical===nil){
var _1c=objj_msgSend(_1a,"bounds"),_1d=(_1c.size.width),_1e=(_1c.size.height);
_isVertical=_1d<_1e?1:(_1d>_1e?0:-1);
}
return _isVertical;
}
}),new objj_method(sel_getUid("setControlSize:"),function(_1f,_20,_21){
with(_1f){
if(_controlSize==_21){
return;
}
_controlSize=_21;
objj_msgSend(_1f,"setNeedsLayout");
objj_msgSend(_1f,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("controlSize"),function(_22,_23){
with(_22){
return _controlSize;
}
}),new objj_method(sel_getUid("setFloatValue:"),function(_24,_25,_26){
with(_24){
objj_msgSendSuper({receiver:_24,super_class:objj_getClass("CPControl")},"setFloatValue:",MIN(1,MAX(0,_26)));
objj_msgSend(_24,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setFloatValue:knobProportion:"),function(_27,_28,_29,_2a){
with(_27){
_knobProportion=MIN(1,MAX(0.0001,_2a));
objj_msgSend(_27,"setFloatValue:",_29);
}
}),new objj_method(sel_getUid("knobProportion"),function(_2b,_2c){
with(_2b){
return _knobProportion;
}
}),new objj_method(sel_getUid("setTrackOverlapInset:forControlState:"),function(_2d,_2e,_2f,_30){
with(_2d){
var _31=objj_msgSend(_trackOverlapInset,"valueForControlState:",_controlState);
objj_msgSend(_trackOverlapInset,"setValue:forControlState:",_2f,_30);
if(objj_msgSend(_trackOverlapInset,"valueForControlState:",_controlState)===_31){
return;
}
objj_msgSend(_2d,"setNeedsDisplay:",YES);
objj_msgSend(_2d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("trackOverlapInsetForControlState:"),function(_32,_33,_34){
with(_32){
return objj_msgSend(_trackOverlapInset,"valueForControlState:",_34);
}
}),new objj_method(sel_getUid("setTrackOverlapInset:"),function(_35,_36,_37){
with(_35){
var _38=objj_msgSend(_trackOverlapInset,"valueForControlState:",_controlState);
objj_msgSend(_trackOverlapInset,"setValue:",_37);
if(objj_msgSend(_trackOverlapInset,"valueForControlState:",_controlState)===_38){
return;
}
objj_msgSend(_35,"setNeedsDisplay:",YES);
objj_msgSend(_35,"setNeedsLayout");
}
}),new objj_method(sel_getUid("trackOverlapInset"),function(_39,_3a){
with(_39){
return objj_msgSend(_trackOverlapInset,"value");
}
}),new objj_method(sel_getUid("currentTrackOverlapInset"),function(_3b,_3c){
with(_3b){
return objj_msgSend(_trackOverlapInset,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setVerticalMinimumKnobSize:forControlState:"),function(_3d,_3e,_3f,_40){
with(_3d){
var _41=objj_msgSend(_verticalMinimumKnobSize,"valueForControlState:",_controlState);
objj_msgSend(_verticalMinimumKnobSize,"setValue:forControlState:",_3f,_40);
if(objj_msgSend(_verticalMinimumKnobSize,"valueForControlState:",_controlState)===_41){
return;
}
objj_msgSend(_3d,"setNeedsDisplay:",YES);
objj_msgSend(_3d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalMinimumKnobSizeForControlState:"),function(_42,_43,_44){
with(_42){
return objj_msgSend(_verticalMinimumKnobSize,"valueForControlState:",_44);
}
}),new objj_method(sel_getUid("setVerticalMinimumKnobSize:"),function(_45,_46,_47){
with(_45){
var _48=objj_msgSend(_verticalMinimumKnobSize,"valueForControlState:",_controlState);
objj_msgSend(_verticalMinimumKnobSize,"setValue:",_47);
if(objj_msgSend(_verticalMinimumKnobSize,"valueForControlState:",_controlState)===_48){
return;
}
objj_msgSend(_45,"setNeedsDisplay:",YES);
objj_msgSend(_45,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalMinimumKnobSize"),function(_49,_4a){
with(_49){
return objj_msgSend(_verticalMinimumKnobSize,"value");
}
}),new objj_method(sel_getUid("currentVerticalMinimumKnobSize"),function(_4b,_4c){
with(_4b){
return objj_msgSend(_verticalMinimumKnobSize,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setVerticalDecrementLineSize:forControlState:"),function(_4d,_4e,_4f,_50){
with(_4d){
var _51=objj_msgSend(_verticalDecrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_verticalDecrementLineSize,"setValue:forControlState:",_4f,_50);
if(objj_msgSend(_verticalDecrementLineSize,"valueForControlState:",_controlState)===_51){
return;
}
objj_msgSend(_4d,"setNeedsDisplay:",YES);
objj_msgSend(_4d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalDecrementLineSizeForControlState:"),function(_52,_53,_54){
with(_52){
return objj_msgSend(_verticalDecrementLineSize,"valueForControlState:",_54);
}
}),new objj_method(sel_getUid("setVerticalDecrementLineSize:"),function(_55,_56,_57){
with(_55){
var _58=objj_msgSend(_verticalDecrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_verticalDecrementLineSize,"setValue:",_57);
if(objj_msgSend(_verticalDecrementLineSize,"valueForControlState:",_controlState)===_58){
return;
}
objj_msgSend(_55,"setNeedsDisplay:",YES);
objj_msgSend(_55,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalDecrementLineSize"),function(_59,_5a){
with(_59){
return objj_msgSend(_verticalDecrementLineSize,"value");
}
}),new objj_method(sel_getUid("currentVerticalDecrementLineSize"),function(_5b,_5c){
with(_5b){
return objj_msgSend(_verticalDecrementLineSize,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setVerticalIncrementLineSize:forControlState:"),function(_5d,_5e,_5f,_60){
with(_5d){
var _61=objj_msgSend(_verticalIncrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_verticalIncrementLineSize,"setValue:forControlState:",_5f,_60);
if(objj_msgSend(_verticalIncrementLineSize,"valueForControlState:",_controlState)===_61){
return;
}
objj_msgSend(_5d,"setNeedsDisplay:",YES);
objj_msgSend(_5d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalIncrementLineSizeForControlState:"),function(_62,_63,_64){
with(_62){
return objj_msgSend(_verticalIncrementLineSize,"valueForControlState:",_64);
}
}),new objj_method(sel_getUid("setVerticalIncrementLineSize:"),function(_65,_66,_67){
with(_65){
var _68=objj_msgSend(_verticalIncrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_verticalIncrementLineSize,"setValue:",_67);
if(objj_msgSend(_verticalIncrementLineSize,"valueForControlState:",_controlState)===_68){
return;
}
objj_msgSend(_65,"setNeedsDisplay:",YES);
objj_msgSend(_65,"setNeedsLayout");
}
}),new objj_method(sel_getUid("verticalIncrementLineSize"),function(_69,_6a){
with(_69){
return objj_msgSend(_verticalIncrementLineSize,"value");
}
}),new objj_method(sel_getUid("currentVerticalIncrementLineSize"),function(_6b,_6c){
with(_6b){
return objj_msgSend(_verticalIncrementLineSize,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setHorizontalMinimumKnobSize:forControlState:"),function(_6d,_6e,_6f,_70){
with(_6d){
var _71=objj_msgSend(_horizontalMinimumKnobSize,"valueForControlState:",_controlState);
objj_msgSend(_horizontalMinimumKnobSize,"setValue:forControlState:",_6f,_70);
if(objj_msgSend(_horizontalMinimumKnobSize,"valueForControlState:",_controlState)===_71){
return;
}
objj_msgSend(_6d,"setNeedsDisplay:",YES);
objj_msgSend(_6d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("horizontalMinimumKnobSizeForControlState:"),function(_72,_73,_74){
with(_72){
return objj_msgSend(_horizontalMinimumKnobSize,"valueForControlState:",_74);
}
}),new objj_method(sel_getUid("setHorizontalMinimumKnobSize:"),function(_75,_76,_77){
with(_75){
var _78=objj_msgSend(_horizontalMinimumKnobSize,"valueForControlState:",_controlState);
objj_msgSend(_horizontalMinimumKnobSize,"setValue:",_77);
if(objj_msgSend(_horizontalMinimumKnobSize,"valueForControlState:",_controlState)===_78){
return;
}
objj_msgSend(_75,"setNeedsDisplay:",YES);
objj_msgSend(_75,"setNeedsLayout");
}
}),new objj_method(sel_getUid("horizontalMinimumKnobSize"),function(_79,_7a){
with(_79){
return objj_msgSend(_horizontalMinimumKnobSize,"value");
}
}),new objj_method(sel_getUid("currentHorizontalMinimumKnobSize"),function(_7b,_7c){
with(_7b){
return objj_msgSend(_horizontalMinimumKnobSize,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setHorizontalDecrementLineSize:forControlState:"),function(_7d,_7e,_7f,_80){
with(_7d){
var _81=objj_msgSend(_horizontalDecrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_horizontalDecrementLineSize,"setValue:forControlState:",_7f,_80);
if(objj_msgSend(_horizontalDecrementLineSize,"valueForControlState:",_controlState)===_81){
return;
}
objj_msgSend(_7d,"setNeedsDisplay:",YES);
objj_msgSend(_7d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("horizontalDecrementLineSizeForControlState:"),function(_82,_83,_84){
with(_82){
return objj_msgSend(_horizontalDecrementLineSize,"valueForControlState:",_84);
}
}),new objj_method(sel_getUid("setHorizontalDecrementLineSize:"),function(_85,_86,_87){
with(_85){
var _88=objj_msgSend(_horizontalDecrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_horizontalDecrementLineSize,"setValue:",_87);
if(objj_msgSend(_horizontalDecrementLineSize,"valueForControlState:",_controlState)===_88){
return;
}
objj_msgSend(_85,"setNeedsDisplay:",YES);
objj_msgSend(_85,"setNeedsLayout");
}
}),new objj_method(sel_getUid("horizontalDecrementLineSize"),function(_89,_8a){
with(_89){
return objj_msgSend(_horizontalDecrementLineSize,"value");
}
}),new objj_method(sel_getUid("currentHorizontalDecrementLineSize"),function(_8b,_8c){
with(_8b){
return objj_msgSend(_horizontalDecrementLineSize,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setHorizontalIncrementLineSize:forControlState:"),function(_8d,_8e,_8f,_90){
with(_8d){
var _91=objj_msgSend(_horizontalIncrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_horizontalIncrementLineSize,"setValue:forControlState:",_8f,_90);
if(objj_msgSend(_horizontalIncrementLineSize,"valueForControlState:",_controlState)===_91){
return;
}
objj_msgSend(_8d,"setNeedsDisplay:",YES);
objj_msgSend(_8d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("horizontalIncrementLineSizeForControlState:"),function(_92,_93,_94){
with(_92){
return objj_msgSend(_horizontalIncrementLineSize,"valueForControlState:",_94);
}
}),new objj_method(sel_getUid("setHorizontalIncrementLineSize:"),function(_95,_96,_97){
with(_95){
var _98=objj_msgSend(_horizontalIncrementLineSize,"valueForControlState:",_controlState);
objj_msgSend(_horizontalIncrementLineSize,"setValue:",_97);
if(objj_msgSend(_horizontalIncrementLineSize,"valueForControlState:",_controlState)===_98){
return;
}
objj_msgSend(_95,"setNeedsDisplay:",YES);
objj_msgSend(_95,"setNeedsLayout");
}
}),new objj_method(sel_getUid("horizontalIncrementLineSize"),function(_99,_9a){
with(_99){
return objj_msgSend(_horizontalIncrementLineSize,"value");
}
}),new objj_method(sel_getUid("currentHorizontalIncrementLineSize"),function(_9b,_9c){
with(_9b){
return objj_msgSend(_horizontalIncrementLineSize,"valueForControlState:",_controlState);
}
}),new objj_method(sel_getUid("setColor:forHorizontalPart:controlState:"),function(_9d,_9e,_9f,_a0,_a1){
with(_9d){
var _a2=objj_msgSend(_horizontalPartColors[_a0],"valueForControlState:",_controlState);
objj_msgSend(_horizontalPartColors[_a0],"setValue:forControlState:",_9f,_a1);
if(objj_msgSend(_horizontalPartColors[_a0],"valueForControlState:",_controlState)===_a2){
return;
}
objj_msgSend(_9d,"setNeedsDisplay:",YES);
objj_msgSend(_9d,"setNeedsLayout");
}
}),new objj_method(sel_getUid("colorForHorizontalPart:controlState:"),function(_a3,_a4,_a5,_a6){
with(_a3){
return objj_msgSend(_horizontalPartColors[_a5],"valueForControlState:",_a6);
}
}),new objj_method(sel_getUid("setColor:forHorizontalPart:"),function(_a7,_a8,_a9,_aa){
with(_a7){
var _ab=objj_msgSend(_horizontalPartColors[_aa],"valueForControlState:",_controlState);
objj_msgSend(_horizontalPartColors[_aa],"setValue:",_a9);
if(objj_msgSend(_horizontalPartColors[_aa],"valueForControlState:",_controlState)===_ab){
return;
}
objj_msgSend(_a7,"setNeedsDisplay:",YES);
objj_msgSend(_a7,"setNeedsLayout");
}
}),new objj_method(sel_getUid("colorForHorizontalPart:"),function(_ac,_ad,_ae){
with(_ac){
return objj_msgSend(_horizontalPartColors[_ae],"value");
}
}),new objj_method(sel_getUid("currentColorForHorizontalPart:"),function(_af,_b0,_b1){
with(_af){
var _b2=_controlState;
if(_hitPart!==_b1){
_b2&=~CPControlStateHighlighted;
}
return objj_msgSend(_horizontalPartColors[_b1],"valueForControlState:",_b2);
}
}),new objj_method(sel_getUid("setColor:forVerticalPart:controlState:"),function(_b3,_b4,_b5,_b6,_b7){
with(_b3){
var _b8=objj_msgSend(_verticalPartColors[_b6],"valueForControlState:",_controlState);
objj_msgSend(_verticalPartColors[_b6],"setValue:forControlState:",_b5,_b7);
if(objj_msgSend(_verticalPartColors[_b6],"valueForControlState:",_controlState)===_b8){
return;
}
objj_msgSend(_b3,"setNeedsDisplay:",YES);
objj_msgSend(_b3,"setNeedsLayout");
}
}),new objj_method(sel_getUid("colorForVerticalPart:controlState:"),function(_b9,_ba,_bb,_bc){
with(_b9){
return objj_msgSend(_verticalPartColors[_bb],"valueForControlState:",_bc);
}
}),new objj_method(sel_getUid("setColor:forVerticalPart:"),function(_bd,_be,_bf,_c0){
with(_bd){
var _c1=objj_msgSend(_verticalPartColors[_c0],"valueForControlState:",_controlState);
objj_msgSend(_verticalPartColors[_c0],"setValue:",_bf);
if(objj_msgSend(_verticalPartColors[_c0],"valueForControlState:",_controlState)===_c1){
return;
}
objj_msgSend(_bd,"setNeedsDisplay:",YES);
objj_msgSend(_bd,"setNeedsLayout");
}
}),new objj_method(sel_getUid("colorForVerticalPart:"),function(_c2,_c3,_c4){
with(_c2){
return objj_msgSend(_verticalPartColors[_c4],"value");
}
}),new objj_method(sel_getUid("currentColorForVerticalPart:"),function(_c5,_c6,_c7){
with(_c5){
var _c8=_controlState;
if(_hitPart!==_c7){
_c8&=~CPControlStateHighlighted;
}
return objj_msgSend(_verticalPartColors[_c7],"valueForControlState:",_c8);
}
}),new objj_method(sel_getUid("rectForPart:"),function(_c9,_ca,_cb){
with(_c9){
if(_cb==CPScrollerNoPart){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
return _partRects[_cb];
}
}),new objj_method(sel_getUid("testPart:"),function(_cc,_cd,_ce){
with(_cc){
_ce=objj_msgSend(_cc,"convertPoint:fromView:",_ce,nil);
if(CGRectContainsPoint(objj_msgSend(_cc,"rectForPart:",CPScrollerKnob),_ce)){
return CPScrollerKnob;
}
if(CGRectContainsPoint(objj_msgSend(_cc,"rectForPart:",CPScrollerDecrementPage),_ce)){
return CPScrollerDecrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_cc,"rectForPart:",CPScrollerIncrementPage),_ce)){
return CPScrollerIncrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_cc,"rectForPart:",CPScrollerDecrementLine),_ce)){
return CPScrollerDecrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_cc,"rectForPart:",CPScrollerIncrementLine),_ce)){
return CPScrollerIncrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_cc,"rectForPart:",CPScrollerKnobSlot),_ce)){
return CPScrollerKnobSlot;
}
return CPScrollerNoPart;
}
}),new objj_method(sel_getUid("checkSpaceForParts"),function(_cf,_d0){
with(_cf){
var _d1=objj_msgSend(_cf,"bounds");
if(_knobProportion===1){
_usableParts=CPNoScrollerParts;
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnob]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnobSlot]={origin:{x:_d1.origin.x,y:_d1.origin.y},size:{width:_d1.size.width,height:_d1.size.height}};
return;
}
_usableParts=CPAllScrollerParts;
var _d2=!objj_msgSend(_cf,"isVertical"),_d3=objj_msgSend(_cf,"currentTrackOverlapInset"),_d4=(_d1.size.width),_d5=(_d1.size.height);
if(_d2){
var _d6=objj_msgSend(_cf,"currentHorizontalDecrementLineSize"),_d7=objj_msgSend(_cf,"currentHorizontalIncrementLineSize"),_d8=_d6.width-_d3.left,_d9=_d7.width-_d3.right;
slotWidth=_d4-_d8-_d9,_da=objj_msgSend(_cf,"currentHorizontalMinimumKnobSize"),knobWidth=MAX(_da.width,(slotWidth*_knobProportion)),_db=_d8+(slotWidth-knobWidth)*objj_msgSend(_cf,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:_d8,y:0},size:{width:_db-_d8,height:_d5}};
_partRects[CPScrollerKnob]={origin:{x:_db,y:0},size:{width:knobWidth,height:_da.height}};
_partRects[CPScrollerIncrementPage]={origin:{x:_db+knobWidth,y:0},size:{width:_d4-(_db+knobWidth)-_d9,height:_d5}};
_partRects[CPScrollerKnobSlot]={origin:{x:_d8,y:0},size:{width:slotWidth,height:_d5}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_d6.width,height:_d6.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:_d4-_d7.width,y:0},size:{width:_d7.width,height:_d7.height}};
}else{
var _d6=objj_msgSend(_cf,"currentVerticalDecrementLineSize"),_d7=objj_msgSend(_cf,"currentVerticalIncrementLineSize"),_dc=_d6.height-_d3.top,_dd=_d7.height-_d3.bottom,_de=_d5-_dc-_dd,_da=objj_msgSend(_cf,"currentVerticalMinimumKnobSize"),_df=MAX(_da.height,(_de*_knobProportion)),_db=_dc+(_de-_df)*objj_msgSend(_cf,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:_dc},size:{width:_d4,height:_db-_dc}};
_partRects[CPScrollerKnob]={origin:{x:(_d4-_da.width)/2,y:_db},size:{width:_da.width,height:_df}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:_db+_df},size:{width:_d4,height:_d5-(_db+_df)-_dd}};
_partRects[CPScrollerKnobSlot]={origin:{x:0,y:_dc},size:{width:_d4,height:_de}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_d6.width,height:_d6.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:_d5-_d7.height},size:{width:_d7.width,height:_d7.height}};
}
}
}),new objj_method(sel_getUid("usableParts"),function(_e0,_e1){
with(_e0){
return _usableParts;
}
}),new objj_method(sel_getUid("drawArrow:highlight:"),function(_e2,_e3,_e4,_e5){
with(_e2){
}
}),new objj_method(sel_getUid("drawKnob"),function(_e6,_e7){
with(_e6){
}
}),new objj_method(sel_getUid("drawKnobSlot"),function(_e8,_e9){
with(_e8){
}
}),new objj_method(sel_getUid("createViewForPart:"),function(_ea,_eb,_ec){
with(_ea){
var _ed=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_ed,"setHitTests:",NO);
return _ed;
}
}),new objj_method(sel_getUid("layoutSubviewNamed:positioned:relativeToSubviewNamed:"),function(_ee,_ef,_f0,_f1,_f2){
with(_ee){
var _f3=objj_msgSend(_ee,"rectForPart:",_f0);
if(_f3&&!(_f3.size.width<=0||_f3.size.height<=0)){
if(!_layoutViews[_f0]){
_layoutViews[_f0]=objj_msgSend(_ee,"createViewForPart:",_f0);
if(_layoutViews[_f0]){
objj_msgSend(_ee,"addSubview:positioned:relativeTo:",_layoutViews[_f0],_f1,_layoutViews[_f2]);
}
}
if(_layoutViews[_f0]){
objj_msgSend(_layoutViews[_f0],"setFrame:",_f3);
}
}else{
if(_layoutViews[_f0]){
objj_msgSend(_layoutViews[_f0],"removeFromSuperview");
delete _layoutViews[_f0];
}
}
return _layoutViews[_f0];
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_f4,_f5){
with(_f4){
objj_msgSend(_f4,"checkSpaceForParts");
var _f6=0,_f7=_f.length,_f8=objj_msgSend(_f4,"isVertical")?sel_getUid("currentColorForVerticalPart:"):sel_getUid("currentColorForHorizontalPart:");
for(;_f6<_f7;++_f6){
var _f9=_f[_f6];
if(_f6===0){
view=objj_msgSend(_f4,"layoutSubviewNamed:positioned:relativeToSubviewNamed:",_f9,CPWindowBelow,_f[_f6+1]);
}else{
view=objj_msgSend(_f4,"layoutSubviewNamed:positioned:relativeToSubviewNamed:",_f9,CPWindowAbove,_f[_f6-1]);
}
if(view){
objj_msgSend(view,"setBackgroundColor:",objj_msgSend(_f4,_f8,_f9));
}
}
}
}),new objj_method(sel_getUid("drawParts"),function(_fa,_fb){
with(_fa){
objj_msgSend(_fa,"drawKnobSlot");
objj_msgSend(_fa,"drawKnob");
objj_msgSend(_fa,"drawArrow:highlight:",CPScrollerDecrementArrow,NO);
objj_msgSend(_fa,"drawArrow:highlight:",CPScrollerIncrementArrow,NO);
}
}),new objj_method(sel_getUid("hitPart"),function(_fc,_fd){
with(_fc){
return _hitPart;
}
}),new objj_method(sel_getUid("trackKnob:"),function(_fe,_ff,_100){
with(_fe){
var type=objj_msgSend(_100,"type");
if(type===CPLeftMouseUp){
_hitPart=CPScrollerNoPart;
return;
}
if(type===CPLeftMouseDown){
_trackingFloatValue=objj_msgSend(_fe,"floatValue");
_trackingStartPoint=objj_msgSend(_fe,"convertPoint:fromView:",objj_msgSend(_100,"locationInWindow"),nil);
}else{
if(type===CPLeftMouseDragged){
var _102=objj_msgSend(_fe,"rectForPart:",CPScrollerKnob),_103=objj_msgSend(_fe,"rectForPart:",CPScrollerKnobSlot),_104=!objj_msgSend(_fe,"isVertical")?((_103.size.width)-(_102.size.width)):((_103.size.height)-(_102.size.height));
if(_104<=0){
objj_msgSend(_fe,"setFloatValue:",0);
}else{
var _105=objj_msgSend(_fe,"convertPoint:fromView:",objj_msgSend(_100,"locationInWindow"),nil);
delta=!objj_msgSend(_fe,"isVertical")?_105.x-_trackingStartPoint.x:_105.y-_trackingStartPoint.y;
objj_msgSend(_fe,"setFloatValue:",_trackingFloatValue+delta/_104);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_fe,sel_getUid("trackKnob:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
objj_msgSend(_fe,"sendAction:to:",objj_msgSend(_fe,"action"),objj_msgSend(_fe,"target"));
}
}),new objj_method(sel_getUid("trackScrollButtons:"),function(self,_cmd,_108){
with(self){
var type=objj_msgSend(_108,"type");
if(type===CPLeftMouseUp){
objj_msgSend(self,"highlight:",NO);
objj_msgSend(CPEvent,"stopPeriodicEvents");
_hitPart=CPScrollerNoPart;
return;
}
if(type===CPLeftMouseDown){
_trackingPart=objj_msgSend(self,"hitPart");
_trackingStartPoint=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_108,"locationInWindow"),nil);
if(objj_msgSend(_108,"modifierFlags")&CPAlternateKeyMask){
if(_trackingPart==CPScrollerDecrementLine){
_hitPart=CPScrollerDecrementPage;
}else{
if(_trackingPart==CPScrollerIncrementLine){
_hitPart=CPScrollerIncrementPage;
}else{
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _10a=objj_msgSend(self,"rectForPart:",CPScrollerKnob),_10b=!objj_msgSend(self,"isVertical")?(_10a.size.width):(_10a.size.height),_10c=objj_msgSend(self,"rectForPart:",CPScrollerKnobSlot),_10d=(!objj_msgSend(self,"isVertical")?(_10c.size.width):(_10c.size.height))-_10b;
objj_msgSend(self,"setFloatValue:",((!objj_msgSend(self,"isVertical")?_trackingStartPoint.x-(_10c.origin.x):_trackingStartPoint.y-(_10c.origin.y))-_10b/2)/_10d);
_hitPart=CPScrollerKnob;
objj_msgSend(self,"sendAction:to:",objj_msgSend(self,"action"),objj_msgSend(self,"target"));
return objj_msgSend(self,"trackKnob:",_108);
}
}
}
}
objj_msgSend(self,"highlight:",YES);
objj_msgSend(self,"sendAction:to:",objj_msgSend(self,"action"),objj_msgSend(self,"target"));
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0.5,0.04);
}else{
if(type===CPLeftMouseDragged){
_trackingStartPoint=objj_msgSend(self,"convertPoint:fromView:",objj_msgSend(_108,"locationInWindow"),nil);
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _10e=objj_msgSend(self,"testPart:",objj_msgSend(_108,"locationInWindow"));
if(_10e==CPScrollerDecrementPage||_10e==CPScrollerIncrementPage){
_trackingPart=_10e;
_hitPart=_10e;
}
}
objj_msgSend(self,"highlight:",CGRectContainsPoint(objj_msgSend(self,"rectForPart:",_trackingPart),_trackingStartPoint));
}else{
if(type==CPPeriodic&&CGRectContainsPoint(objj_msgSend(self,"rectForPart:",_trackingPart),_trackingStartPoint)){
objj_msgSend(self,"sendAction:to:",objj_msgSend(self,"action"),objj_msgSend(self,"target"));
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",self,sel_getUid("trackScrollButtons:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(self,_cmd,_111){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPControl")},"setFrameSize:",_111);
_isVertical=nil;
objj_msgSend(self,"checkSpaceForParts");
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("mouseDown:"),function(self,_cmd,_114){
with(self){
if(!objj_msgSend(self,"isEnabled")){
return;
}
_hitPart=objj_msgSend(self,"testPart:",objj_msgSend(_114,"locationInWindow"));
switch(_hitPart){
case CPScrollerKnob:
return objj_msgSend(self,"trackKnob:",_114);
case CPScrollerDecrementLine:
case CPScrollerIncrementLine:
case CPScrollerDecrementPage:
case CPScrollerIncrementPage:
return objj_msgSend(self,"trackScrollButtons:",_114);
}
}
})]);
class_addMethods(_11,[new objj_method(sel_getUid("scrollerWidth"),function(self,_cmd){
with(self){
return objj_msgSend(self,"scrollerWidthForControlSize:",CPRegularControlSize);
}
}),new objj_method(sel_getUid("scrollerWidthForControlSize:"),function(self,_cmd,_119){
with(self){
return _1[_119];
}
})]);
var _10=objj_getClass("CPScroller");
if(!_10){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPScroller\""));
}
var _11=_10.isa;
class_addMethods(_10,[new objj_method(sel_getUid("viewDidChangeTheme"),function(self,_cmd){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPScroller").super_class},"viewDidChangeTheme");
var _11c=objj_msgSend(self,"theme");
objj_msgSend(_trackOverlapInset,"setTheme:",_11c);
objj_msgSend(_verticalMinimumKnobSize,"setTheme:",_11c);
objj_msgSend(_verticalDecrementLineSize,"setTheme:",_11c);
objj_msgSend(_verticalIncrementLineSize,"setTheme:",_11c);
objj_msgSend(_horizontalMinimumKnobSize,"setTheme:",_11c);
objj_msgSend(_horizontalDecrementLineSize,"setTheme:",_11c);
objj_msgSend(_horizontalIncrementLineSize,"setTheme:",_11c);
var _11d=0,_11e=_f.length;
for(;_11d<_11e;++_11d){
var part=_f[_11d];
objj_msgSend(_horizontalPartColors[part],"setTheme:",_11c);
objj_msgSend(_verticalPartColors[part],"setTheme:",_11c);
}
objj_msgSend(self,"setNeedsLayout");
objj_msgSend(self,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("themedValues"),function(self,_cmd){
with(self){
var _122=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPScroller").super_class},"themedValues"),_123=objj_msgSend(self,"isVertical");
objj_msgSend(_122,"setObject:forKey:",_trackOverlapInset,"track-overlap-inset");
if(_123){
objj_msgSend(_122,"setObject:forKey:",_verticalMinimumKnobSize,"vertical-minimum-knob-size");
objj_msgSend(_122,"setObject:forKey:",_verticalDecrementLineSize,"vertical-decrement-line-size");
objj_msgSend(_122,"setObject:forKey:",_verticalIncrementLineSize,"vertical-increment-line-size");
}else{
objj_msgSend(_122,"setObject:forKey:",_horizontalMinimumKnobSize,"horizontal-minimum-knob-size");
objj_msgSend(_122,"setObject:forKey:",_horizontalDecrementLineSize,"horizontal-decrement-line-size");
objj_msgSend(_122,"setObject:forKey:",_horizontalIncrementLineSize,"horizontal-increment-line-size");
}
var _124=0,_125=_f.length;
for(;_124<_125;++_124){
var part=_f[_124];
_horizontalPartColors[part]=CPThemedValueMake(nil,(_123?"vertical-":"horizontal-")+part+"-color",theme,theClass);
}
return _122;
}
})]);
var _127="CPScrollerControlSize",_128="CPScrollerKnobProportion";
var _10=objj_getClass("CPScrobller");
if(!_10){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPScrobller\""));
}
var _11=_10.isa;
class_addMethods(_10,[new objj_method(sel_getUid("initWithCoder:"),function(self,_cmd,_12b){
with(self){
if(self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPControl")},"initWithCoder:",_12b)){
_layoutViews={};
_controlSize=CPRegularControlSize;
if(objj_msgSend(_12b,"containsValueForKey:",_127)){
_controlSize=objj_msgSend(_12b,"decodeIntForKey:",_127);
}
_knobProportion=1;
if(objj_msgSend(_12b,"containsValueForKey:",_128)){
_knobProportion=objj_msgSend(_12b,"decodeFloatForKey:",_128);
}
_partRects=[];
_isHorizontal=CPRectGetWidth(objj_msgSend(self,"frame"))>CPRectGetHeight(objj_msgSend(self,"frame"));
_hitPart=CPScrollerNoPart;
objj_msgSend(self,"checkSpaceForParts");
objj_msgSend(self,"setNeedsLayout");
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_cmd,_12e){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_12e);
objj_msgSend(_12e,"encodeInt:forKey:",_controlSize,_127);
objj_msgSend(_12e,"encodeFloat:forKey:",_knobProportion,_128);
}
})]);
p;12;CPScroller.ji;11;CPControl.jc;15053;
CPScrollerNoPart=0;
CPScrollerDecrementPage=1;
CPScrollerKnob=2;
CPScrollerIncrementPage=3;
CPScrollerDecrementLine=4;
CPScrollerIncrementLine=5;
CPScrollerKnobSlot=6;
CPScrollerIncrementArrow=0;
CPScrollerDecrementArrow=1;
CPNoScrollerParts=0;
CPOnlyScrollerArrows=1;
CPAllScrollerParts=2;
var _1=[CPScrollerKnobSlot,CPScrollerDecrementLine,CPScrollerIncrementLine,CPScrollerKnob],_2={},_3={};
_2[CPScrollerDecrementLine]="decrement-line";
_2[CPScrollerIncrementLine]="increment-line";
_2[CPScrollerKnobSlot]="knob-slot";
_2[CPScrollerKnob]="knob";
var _4=objj_allocateClassPair(CPControl,"CPScroller"),_5=_4.isa;
class_addIvars(_4,[new objj_ivar("_controlSize"),new objj_ivar("_usableParts"),new objj_ivar("_partRects"),new objj_ivar("_isVertical"),new objj_ivar("_knobProportion"),new objj_ivar("_hitPart"),new objj_ivar("_trackingPart"),new objj_ivar("_trackingFloatValue"),new objj_ivar("_trackingStartPoint")]);
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("isVertical"),function(_6,_7){
with(_6){
return _isVertical;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPControl")},"initWithFrame:",_a);
if(_8){
_controlSize=CPRegularControlSize;
_partRects=[];
objj_msgSend(_8,"setFloatValue:knobProportion:",0,1);
_hitPart=CPScrollerNoPart;
objj_msgSend(_8,"_recalculateIsVertical");
}
return _8;
}
}),new objj_method(sel_getUid("setControlSize:"),function(_b,_c,_d){
with(_b){
if(_controlSize==_d){
return;
}
_controlSize=_d;
objj_msgSend(_b,"setNeedsLayout");
objj_msgSend(_b,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("controlSize"),function(_e,_f){
with(_e){
return _controlSize;
}
}),new objj_method(sel_getUid("setFloatValue:"),function(_10,_11,_12){
with(_10){
objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPControl")},"setFloatValue:",MIN(1,MAX(0,_12)));
objj_msgSend(_10,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setFloatValue:knobProportion:"),function(_13,_14,_15,_16){
with(_13){
_knobProportion=MIN(1,MAX(0.0001,_16));
objj_msgSend(_13,"setFloatValue:",_15);
}
}),new objj_method(sel_getUid("knobProportion"),function(_17,_18){
with(_17){
return _knobProportion;
}
}),new objj_method(sel_getUid("currentValueForThemedAttributeName:"),function(_19,_1a,_1b){
with(_19){
var _1c=_controlState;
if(_2[_hitPart]+"-color"!==_1b){
_1c&=~CPControlStateHighlighted;
}
return objj_msgSend(_19,"valueForThemedAttributeName:inControlState:",_1b,_1c);
}
}),new objj_method(sel_getUid("rectForPart:"),function(_1d,_1e,_1f){
with(_1d){
if(_1f==CPScrollerNoPart){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
return _partRects[_1f];
}
}),new objj_method(sel_getUid("testPart:"),function(_20,_21,_22){
with(_20){
_22=objj_msgSend(_20,"convertPoint:fromView:",_22,nil);
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerKnob),_22)){
return CPScrollerKnob;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerDecrementPage),_22)){
return CPScrollerDecrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerIncrementPage),_22)){
return CPScrollerIncrementPage;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerDecrementLine),_22)){
return CPScrollerDecrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerIncrementLine),_22)){
return CPScrollerIncrementLine;
}
if(CGRectContainsPoint(objj_msgSend(_20,"rectForPart:",CPScrollerKnobSlot),_22)){
return CPScrollerKnobSlot;
}
return CPScrollerNoPart;
}
}),new objj_method(sel_getUid("checkSpaceForParts"),function(_23,_24){
with(_23){
var _25=objj_msgSend(_23,"bounds");
if(_knobProportion===1){
_usableParts=CPNoScrollerParts;
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnob]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:0},size:{width:0,height:0}};
_partRects[CPScrollerKnobSlot]={origin:{x:_25.origin.x,y:_25.origin.y},size:{width:_25.size.width,height:_25.size.height}};
return;
}
_usableParts=CPAllScrollerParts;
var _26=objj_msgSend(_23,"currentValueForThemedAttributeName:","track-overlap-inset"),_27=(_25.size.width),_28=(_25.size.height);
if(objj_msgSend(_23,"isVertical")){
var _29=objj_msgSend(_23,"currentValueForThemedAttributeName:","decrement-line-size"),_2a=objj_msgSend(_23,"currentValueForThemedAttributeName:","increment-line-size"),_2b=_29.height-_26.top,_2c=_2a.height-_26.bottom,_2d=_28-_2b-_2c,_2e=objj_msgSend(_23,"currentValueForThemedAttributeName:","minimum-knob-size"),_2f=MAX(_2e.height,(_2d*_knobProportion)),_30=_2b+(_2d-_2f)*objj_msgSend(_23,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:0,y:_2b},size:{width:_27,height:_30-_2b}};
_partRects[CPScrollerKnob]={origin:{x:(_27-_2e.width)/2,y:_30},size:{width:_2e.width,height:_2f}};
_partRects[CPScrollerIncrementPage]={origin:{x:0,y:_30+_2f},size:{width:_27,height:_28-(_30+_2f)-_2c}};
_partRects[CPScrollerKnobSlot]={origin:{x:0,y:_2b},size:{width:_27,height:_2d}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_29.width,height:_29.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:0,y:_28-_2a.height},size:{width:_2a.width,height:_2a.height}};
}else{
var _29=objj_msgSend(_23,"currentValueForThemedAttributeName:","decrement-line-size"),_2a=objj_msgSend(_23,"currentValueForThemedAttributeName:","increment-line-size"),_31=_29.width-_26.left,_32=_2a.width-_26.right;
slotWidth=_27-_31-_32,_2e=objj_msgSend(_23,"currentValueForThemedAttributeName:","minimum-knob-size"),knobWidth=MAX(_2e.width,(slotWidth*_knobProportion)),_30=_31+(slotWidth-knobWidth)*objj_msgSend(_23,"floatValue");
_partRects[CPScrollerDecrementPage]={origin:{x:_31,y:0},size:{width:_30-_31,height:_28}};
_partRects[CPScrollerKnob]={origin:{x:_30,y:0},size:{width:knobWidth,height:_2e.height}};
_partRects[CPScrollerIncrementPage]={origin:{x:_30+knobWidth,y:0},size:{width:_27-(_30+knobWidth)-_32,height:_28}};
_partRects[CPScrollerKnobSlot]={origin:{x:_31,y:0},size:{width:slotWidth,height:_28}};
_partRects[CPScrollerDecrementLine]={origin:{x:0,y:0},size:{width:_29.width,height:_29.height}};
_partRects[CPScrollerIncrementLine]={origin:{x:_27-_2a.width,y:0},size:{width:_2a.width,height:_2a.height}};
}
}
}),new objj_method(sel_getUid("usableParts"),function(_33,_34){
with(_33){
return _usableParts;
}
}),new objj_method(sel_getUid("drawArrow:highlight:"),function(_35,_36,_37,_38){
with(_35){
}
}),new objj_method(sel_getUid("drawKnob"),function(_39,_3a){
with(_39){
}
}),new objj_method(sel_getUid("drawKnobSlot"),function(_3b,_3c){
with(_3b){
}
}),new objj_method(sel_getUid("createViewForPart:"),function(_3d,_3e,_3f){
with(_3d){
var _40=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_40,"setHitTests:",NO);
return _40;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_41,_42,_43){
with(_41){
return _partRects[_43];
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_44,_45,_46){
with(_44){
var _47=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",{origin:{x:0,y:0},size:{width:0,height:0}});
objj_msgSend(_47,"setHitTests:",NO);
return _47;
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_48,_49){
with(_48){
objj_msgSend(_48,"checkSpaceForParts");
var _4a=0,_4b=_1.length;
for(;_4a<_4b;++_4a){
var _4c=_1[_4a];
if(_4a===0){
view=objj_msgSend(_48,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:",_4c,CPWindowBelow,_1[_4a+1]);
}else{
view=objj_msgSend(_48,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:",_4c,CPWindowAbove,_1[_4a-1]);
}
if(view){
objj_msgSend(view,"setBackgroundColor:",objj_msgSend(_48,"currentValueForThemedAttributeName:",_2[_4c]+"-color"));
}
}
}
}),new objj_method(sel_getUid("drawParts"),function(_4d,_4e){
with(_4d){
objj_msgSend(_4d,"drawKnobSlot");
objj_msgSend(_4d,"drawKnob");
objj_msgSend(_4d,"drawArrow:highlight:",CPScrollerDecrementArrow,NO);
objj_msgSend(_4d,"drawArrow:highlight:",CPScrollerIncrementArrow,NO);
}
}),new objj_method(sel_getUid("hitPart"),function(_4f,_50){
with(_4f){
return _hitPart;
}
}),new objj_method(sel_getUid("trackKnob:"),function(_51,_52,_53){
with(_51){
var _54=objj_msgSend(_53,"type");
if(_54===CPLeftMouseUp){
_hitPart=CPScrollerNoPart;
return;
}
if(_54===CPLeftMouseDown){
_trackingFloatValue=objj_msgSend(_51,"floatValue");
_trackingStartPoint=objj_msgSend(_51,"convertPoint:fromView:",objj_msgSend(_53,"locationInWindow"),nil);
}else{
if(_54===CPLeftMouseDragged){
var _55=objj_msgSend(_51,"rectForPart:",CPScrollerKnob),_56=objj_msgSend(_51,"rectForPart:",CPScrollerKnobSlot),_57=!objj_msgSend(_51,"isVertical")?((_56.size.width)-(_55.size.width)):((_56.size.height)-(_55.size.height));
if(_57<=0){
objj_msgSend(_51,"setFloatValue:",0);
}else{
var _58=objj_msgSend(_51,"convertPoint:fromView:",objj_msgSend(_53,"locationInWindow"),nil);
delta=!objj_msgSend(_51,"isVertical")?_58.x-_trackingStartPoint.x:_58.y-_trackingStartPoint.y;
objj_msgSend(_51,"setFloatValue:",_trackingFloatValue+delta/_57);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_51,sel_getUid("trackKnob:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
objj_msgSend(_51,"sendAction:to:",objj_msgSend(_51,"action"),objj_msgSend(_51,"target"));
}
}),new objj_method(sel_getUid("trackScrollButtons:"),function(_59,_5a,_5b){
with(_59){
var _5c=objj_msgSend(_5b,"type");
if(_5c===CPLeftMouseUp){
objj_msgSend(_59,"highlight:",NO);
objj_msgSend(CPEvent,"stopPeriodicEvents");
_hitPart=CPScrollerNoPart;
return;
}
if(_5c===CPLeftMouseDown){
_trackingPart=objj_msgSend(_59,"hitPart");
_trackingStartPoint=objj_msgSend(_59,"convertPoint:fromView:",objj_msgSend(_5b,"locationInWindow"),nil);
if(objj_msgSend(_5b,"modifierFlags")&CPAlternateKeyMask){
if(_trackingPart==CPScrollerDecrementLine){
_hitPart=CPScrollerDecrementPage;
}else{
if(_trackingPart==CPScrollerIncrementLine){
_hitPart=CPScrollerIncrementPage;
}else{
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _5d=objj_msgSend(_59,"rectForPart:",CPScrollerKnob),_5e=!objj_msgSend(_59,"isVertical")?(_5d.size.width):(_5d.size.height),_5f=objj_msgSend(_59,"rectForPart:",CPScrollerKnobSlot),_60=(!objj_msgSend(_59,"isVertical")?(_5f.size.width):(_5f.size.height))-_5e;
objj_msgSend(_59,"setFloatValue:",((!objj_msgSend(_59,"isVertical")?_trackingStartPoint.x-(_5f.origin.x):_trackingStartPoint.y-(_5f.origin.y))-_5e/2)/_60);
_hitPart=CPScrollerKnob;
objj_msgSend(_59,"sendAction:to:",objj_msgSend(_59,"action"),objj_msgSend(_59,"target"));
return objj_msgSend(_59,"trackKnob:",_5b);
}
}
}
}
objj_msgSend(_59,"highlight:",YES);
objj_msgSend(_59,"sendAction:to:",objj_msgSend(_59,"action"),objj_msgSend(_59,"target"));
objj_msgSend(CPEvent,"startPeriodicEventsAfterDelay:withPeriod:",0.5,0.04);
}else{
if(_5c===CPLeftMouseDragged){
_trackingStartPoint=objj_msgSend(_59,"convertPoint:fromView:",objj_msgSend(_5b,"locationInWindow"),nil);
if(_trackingPart==CPScrollerDecrementPage||_trackingPart==CPScrollerIncrementPage){
var _61=objj_msgSend(_59,"testPart:",objj_msgSend(_5b,"locationInWindow"));
if(_61==CPScrollerDecrementPage||_61==CPScrollerIncrementPage){
_trackingPart=_61;
_hitPart=_61;
}
}
objj_msgSend(_59,"highlight:",CGRectContainsPoint(objj_msgSend(_59,"rectForPart:",_trackingPart),_trackingStartPoint));
}else{
if(_5c==CPPeriodic&&CGRectContainsPoint(objj_msgSend(_59,"rectForPart:",_trackingPart),_trackingStartPoint)){
objj_msgSend(_59,"sendAction:to:",objj_msgSend(_59,"action"),objj_msgSend(_59,"target"));
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_59,sel_getUid("trackScrollButtons:"),CPPeriodicMask|CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_recalculateIsVertical"),function(_62,_63){
with(_62){
var _64=objj_msgSend(_62,"bounds"),_65=(_64.size.width),_66=(_64.size.height);
_isVertical=_65<_66?1:(_65>_66?0:-1);
if(_isVertical===1){
_controlState|=CPControlStateVertical;
}else{
if(_isVertical===0){
_controlState&=~CPControlStateVertical;
}
}
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_67,_68,_69){
with(_67){
objj_msgSendSuper({receiver:_67,super_class:objj_getClass("CPControl")},"setFrameSize:",_69);
objj_msgSend(_67,"_recalculateIsVertical");
objj_msgSend(_67,"checkSpaceForParts");
objj_msgSend(_67,"setNeedsLayout");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_6a,_6b,_6c){
with(_6a){
if(!objj_msgSend(_6a,"isEnabled")){
return;
}
_hitPart=objj_msgSend(_6a,"testPart:",objj_msgSend(_6c,"locationInWindow"));
switch(_hitPart){
case CPScrollerKnob:
return objj_msgSend(_6a,"trackKnob:",_6c);
case CPScrollerDecrementLine:
case CPScrollerIncrementLine:
case CPScrollerDecrementPage:
case CPScrollerIncrementPage:
return objj_msgSend(_6a,"trackScrollButtons:",_6c);
}
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("themedAttributes"),function(_6d,_6e){
with(_6d){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[{top:(0),left:(0),bottom:(0),right:(0)},nil,nil,nil,nil,{width:0,height:0},{width:0,height:0},{width:0,height:0}],["track-overlap-inset","knob-slot-color","decrement-line-color","increment-line-color","knob-color","decrement-line-size","increment-line-size","minimum-knob-size"]);
}
}),new objj_method(sel_getUid("scrollerWidth"),function(_6f,_70){
with(_6f){
return 17;
}
}),new objj_method(sel_getUid("scrollerWidthForControlSize:"),function(_71,_72,_73){
with(_71){
return 17;
}
})]);
var _74="CPScrollerControlSize",_75="CPScrollerKnobProportion";
var _4=objj_getClass("CPScroller");
if(!_4){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPScroller\""));
}
var _5=_4.isa;
class_addMethods(_4,[new objj_method(sel_getUid("initWithCoder:"),function(_76,_77,_78){
with(_76){
if(_76=objj_msgSendSuper({receiver:_76,super_class:objj_getClass("CPControl")},"initWithCoder:",_78)){
_controlSize=CPRegularControlSize;
if(objj_msgSend(_78,"containsValueForKey:",_74)){
_controlSize=objj_msgSend(_78,"decodeIntForKey:",_74);
}
_knobProportion=1;
if(objj_msgSend(_78,"containsValueForKey:",_75)){
_knobProportion=objj_msgSend(_78,"decodeFloatForKey:",_75);
}
_partRects=[];
_hitPart=CPScrollerNoPart;
objj_msgSend(_76,"_recalculateIsVertical");
}
return _76;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_79,_7a,_7b){
with(_79){
objj_msgSendSuper({receiver:_79,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_7b);
objj_msgSend(_7b,"encodeInt:forKey:",_controlSize,_74);
objj_msgSend(_7b,"encodeFloat:forKey:",_knobProportion,_75);
}
})]);
p;14;CPScrollView.ji;8;CPView.ji;12;CPClipView.ji;12;CPScroller.jc;14694;
var _1=objj_allocateClassPair(CPView,"CPScrollView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contentView"),new objj_ivar("_hasVerticalScroller"),new objj_ivar("_hasHorizontalScroller"),new objj_ivar("_autohidesScrollers"),new objj_ivar("_verticalScroller"),new objj_ivar("_horizontalScroller"),new objj_ivar("_recursionCount"),new objj_ivar("_verticalLineScroll"),new objj_ivar("_verticalPageScroll"),new objj_ivar("_horizontalLineScroll"),new objj_ivar("_horizontalPageScroll")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPView")},"initWithFrame:",_5);
if(_3){
_verticalLineScroll=10;
_verticalPageScroll=10;
_horizontalLineScroll=10;
_horizontalPageScroll=10;
_contentView=objj_msgSend(objj_msgSend(CPClipView,"alloc"),"initWithFrame:",objj_msgSend(_3,"bounds"));
objj_msgSend(_3,"addSubview:",_contentView);
objj_msgSend(_3,"setHasVerticalScroller:",YES);
objj_msgSend(_3,"setHasHorizontalScroller:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("contentSize"),function(_6,_7){
with(_6){
return objj_msgSend(_contentView,"frame").size;
}
}),new objj_method(sel_getUid("documentView"),function(_8,_9){
with(_8){
return objj_msgSend(_contentView,"documentView");
}
}),new objj_method(sel_getUid("setContentView:"),function(_a,_b,_c){
with(_a){
if(!_c){
return;
}
var _d=objj_msgSend(_c,"documentView");
if(_d){
objj_msgSend(_d,"removeFromSuperview");
}
objj_msgSend(_contentView,"removeFromSuperview");
var _e=objj_msgSend(_a,"contentSize");
_contentView=_c;
objj_msgSend(_contentView,"setFrame:",CGRectMake(0,0,_e.width,_e.height));
objj_msgSend(_contentView,"setDocumentView:",_d);
objj_msgSend(_a,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_f,_10){
with(_f){
return _contentView;
}
}),new objj_method(sel_getUid("setDocumentView:"),function(_11,_12,_13){
with(_11){
objj_msgSend(_contentView,"setDocumentView:",_13);
objj_msgSend(_11,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(_14,_15,_16){
with(_14){
if(_contentView!==_16){
return;
}
if(_recursionCount>5){
return;
}
++_recursionCount;
var _17=objj_msgSend(_14,"documentView");
if(!_17){
if(_autohidesScrollers){
objj_msgSend(_verticalScroller,"setHidden:",YES);
objj_msgSend(_horizontalScroller,"setHidden:",YES);
}else{
}
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_14,"bounds"));
--_recursionCount;
return;
}
var _18=objj_msgSend(_17,"frame"),_19=objj_msgSend(_14,"bounds"),_1a=objj_msgSend(_contentView,"bounds").origin,_1b={width:CPRectGetWidth(_18)-CPRectGetWidth(_19),height:CPRectGetHeight(_18)-CPRectGetHeight(_19)},_1c=(!_autohidesScrollers||_1b.height>0)&&_hasVerticalScroller,_1d=(!_autohidesScrollers||_1b.width>0)&&_hasHorizontalScroller,_1e=!objj_msgSend(_verticalScroller,"isHidden"),_1f=!objj_msgSend(_horizontalScroller,"isHidden"),_20=(objj_msgSend(_verticalScroller,"frame").size.width);
horizontalScrollerHeight=(objj_msgSend(_horizontalScroller,"frame").size.height);
if(_autohidesScrollers){
if(_1c){
_1d=(!_autohidesScrollers||_1b.width>-_20)&&_hasHorizontalScroller;
}
if(_1d){
_1c=(!_autohidesScrollers||_1b.height>-horizontalScrollerHeight)&&_hasVerticalScroller;
}
}
objj_msgSend(_verticalScroller,"setHidden:",!_1c);
objj_msgSend(_verticalScroller,"setEnabled:",_1b.height>0);
objj_msgSend(_horizontalScroller,"setHidden:",!_1d);
objj_msgSend(_horizontalScroller,"setEnabled:",_1b.width>0);
if(_1c){
var _21=CPRectGetHeight(_19);
if(_1d){
_21-=horizontalScrollerHeight;
}
_1b.width+=_20;
_19.size.width-=_20;
objj_msgSend(_verticalScroller,"setFloatValue:knobProportion:",(_1b.height<=0)?0:_1a.y/_1b.height,CPRectGetHeight(_19)/CPRectGetHeight(_18));
objj_msgSend(_verticalScroller,"setFrame:",CPRectMake(CPRectGetMaxX(_19),0,_20,_21));
}else{
if(_1e){
objj_msgSend(_verticalScroller,"setFloatValue:knobProportion:",0,1);
}
}
if(_1d){
_1b.height+=horizontalScrollerHeight;
_19.size.height-=horizontalScrollerHeight;
objj_msgSend(_horizontalScroller,"setFloatValue:knobProportion:",(_1b.width<=0)?0:_1a.x/_1b.width,CPRectGetWidth(_19)/CPRectGetWidth(_18));
objj_msgSend(_horizontalScroller,"setFrame:",CPRectMake(0,CPRectGetMaxY(_19),CPRectGetWidth(_19),horizontalScrollerHeight));
}else{
if(_1f){
objj_msgSend(_horizontalScroller,"setFloatValue:knobProportion:",0,1);
}
}
objj_msgSend(_contentView,"setFrame:",_19);
--_recursionCount;
}
}),new objj_method(sel_getUid("setHorizontalScroller:"),function(_22,_23,_24){
with(_22){
if(_horizontalScroller===_24){
return;
}
objj_msgSend(_horizontalScroller,"removeFromSuperview");
objj_msgSend(_horizontalScroller,"setTarget:",nil);
objj_msgSend(_horizontalScroller,"setAction:",nil);
_horizontalScroller=_24;
objj_msgSend(_horizontalScroller,"setTarget:",_22);
objj_msgSend(_horizontalScroller,"setAction:",sel_getUid("_horizontalScrollerDidScroll:"));
objj_msgSend(_22,"addSubview:",_horizontalScroller);
objj_msgSend(_22,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("horizontalScroller"),function(_25,_26){
with(_25){
return _horizontalScroller;
}
}),new objj_method(sel_getUid("setHasHorizontalScroller:"),function(_27,_28,_29){
with(_27){
if(_hasHorizontalScroller===_29){
return;
}
_hasHorizontalScroller=_29;
if(_hasHorizontalScroller&&!_horizontalScroller){
objj_msgSend(_27,"setHorizontalScroller:",objj_msgSend(objj_msgSend(CPScroller,"alloc"),"initWithFrame:",CGRectMake(0,0,CPRectGetWidth(objj_msgSend(_27,"bounds")),objj_msgSend(CPScroller,"scrollerWidth"))));
}else{
if(!_hasHorizontalScroller&&_horizontalScroller){
objj_msgSend(_horizontalScroller,"setHidden:",YES);
objj_msgSend(_27,"reflectScrolledClipView:",_contentView);
}
}
}
}),new objj_method(sel_getUid("hasHorizontalScroller"),function(_2a,_2b){
with(_2a){
return _hasHorizontalScroller;
}
}),new objj_method(sel_getUid("setVerticalScroller:"),function(_2c,_2d,_2e){
with(_2c){
if(_verticalScroller===_2e){
return;
}
objj_msgSend(_verticalScroller,"removeFromSuperview");
objj_msgSend(_verticalScroller,"setTarget:",nil);
objj_msgSend(_verticalScroller,"setAction:",nil);
_verticalScroller=_2e;
objj_msgSend(_verticalScroller,"setTarget:",_2c);
objj_msgSend(_verticalScroller,"setAction:",sel_getUid("_verticalScrollerDidScroll:"));
objj_msgSend(_2c,"addSubview:",_verticalScroller);
objj_msgSend(_2c,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("verticalScroller"),function(_2f,_30){
with(_2f){
return _verticalScroller;
}
}),new objj_method(sel_getUid("setHasVerticalScroller:"),function(_31,_32,_33){
with(_31){
if(_hasVerticalScroller===_33){
return;
}
_hasVerticalScroller=_33;
if(_hasVerticalScroller&&!_verticalScroller){
objj_msgSend(_31,"setVerticalScroller:",objj_msgSend(objj_msgSend(CPScroller,"alloc"),"initWithFrame:",CPRectMake(0,0,objj_msgSend(CPScroller,"scrollerWidth"),CPRectGetHeight(objj_msgSend(_31,"bounds")))));
}else{
if(!_hasVerticalScroller&&_verticalScroller){
objj_msgSend(_verticalScroller,"setHidden:",YES);
objj_msgSend(_31,"reflectScrolledClipView:",_contentView);
}
}
}
}),new objj_method(sel_getUid("hasHorizontalScroller"),function(_34,_35){
with(_34){
return _hasHorizontalScroller;
}
}),new objj_method(sel_getUid("setAutohidesScrollers:"),function(_36,_37,_38){
with(_36){
if(_autohidesScrollers==_38){
return;
}
_autohidesScrollers=_38;
objj_msgSend(_36,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("autohidesScrollers"),function(_39,_3a){
with(_39){
return _autohidesScrollers;
}
}),new objj_method(sel_getUid("_verticalScrollerDidScroll:"),function(_3b,_3c,_3d){
with(_3b){
var _3e=objj_msgSend(_3d,"floatValue"),_3f=objj_msgSend(objj_msgSend(_contentView,"documentView"),"frame");
contentBounds=objj_msgSend(_contentView,"bounds");
switch(objj_msgSend(_verticalScroller,"hitPart")){
case CPScrollerDecrementLine:
contentBounds.origin.y-=_verticalLineScroll;
break;
case CPScrollerIncrementLine:
contentBounds.origin.y+=_verticalLineScroll;
break;
case CPScrollerDecrementPage:
contentBounds.origin.y-=(contentBounds.size.height)-_verticalPageScroll;
break;
case CPScrollerIncrementPage:
contentBounds.origin.y+=(contentBounds.size.height)-_verticalPageScroll;
break;
case CPScrollerKnobSlot:
case CPScrollerKnob:
default:
contentBounds.origin.y=_3e*((_3f.size.height)-(contentBounds.size.height));
}
objj_msgSend(_contentView,"scrollToPoint:",contentBounds.origin);
}
}),new objj_method(sel_getUid("_horizontalScrollerDidScroll:"),function(_40,_41,_42){
with(_40){
var _43=objj_msgSend(_42,"floatValue"),_44=objj_msgSend(objj_msgSend(_40,"documentView"),"frame"),_45=objj_msgSend(_contentView,"bounds");
switch(objj_msgSend(_horizontalScroller,"hitPart")){
case CPScrollerDecrementLine:
_45.origin.x-=_horizontalLineScroll;
break;
case CPScrollerIncrementLine:
_45.origin.x+=_horizontalLineScroll;
break;
case CPScrollerDecrementPage:
_45.origin.x-=(_45.size.width)-_horizontalPageScroll;
break;
case CPScrollerIncrementPage:
_45.origin.x+=(_45.size.width)-_horizontalPageScroll;
break;
case CPScrollerKnobSlot:
case CPScrollerKnob:
default:
_45.origin.x=_43*((_44.size.width)-(_45.size.width));
}
objj_msgSend(_contentView,"scrollToPoint:",_45.origin);
}
}),new objj_method(sel_getUid("tile"),function(_46,_47){
with(_46){
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(_48,"reflectScrolledClipView:",_contentView);
}
}),new objj_method(sel_getUid("setLineScroll:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"setHorizonalLineScroll:",_4d);
objj_msgSend(_4b,"setVerticalLineScroll:",_4d);
}
}),new objj_method(sel_getUid("lineScroll"),function(_4e,_4f){
with(_4e){
return objj_msgSend(_4e,"horizontalLineScroll");
}
}),new objj_method(sel_getUid("setHorizontalLineScroll:"),function(_50,_51,_52){
with(_50){
_horizontalLineScroll=_52;
}
}),new objj_method(sel_getUid("horizontalLineScroll"),function(_53,_54){
with(_53){
return _horizontalLineScroll;
}
}),new objj_method(sel_getUid("setVerticalLineScroll:"),function(_55,_56,_57){
with(_55){
_verticalLineScroll=_57;
}
}),new objj_method(sel_getUid("verticalLineScroll"),function(_58,_59){
with(_58){
return _verticalLineScroll;
}
}),new objj_method(sel_getUid("setPageScroll:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_5a,"setHorizontalPageScroll:",_5c);
objj_msgSend(_5a,"setVerticalPageScroll:",_5c);
}
}),new objj_method(sel_getUid("pageScroll"),function(_5d,_5e){
with(_5d){
return objj_msgSend(_5d,"horizontalPageScroll");
}
}),new objj_method(sel_getUid("setHorizontalPageScroll:"),function(_5f,_60,_61){
with(_5f){
_horizontalPageScroll=_61;
}
}),new objj_method(sel_getUid("horizontalPageScroll"),function(_62,_63){
with(_62){
return _horizontalPageScroll;
}
}),new objj_method(sel_getUid("setVerticalPageScroll:"),function(_64,_65,_66){
with(_64){
_verticalPageScroll=_66;
}
}),new objj_method(sel_getUid("verticalPageScroll"),function(_67,_68){
with(_67){
return _verticalPageScroll;
}
}),new objj_method(sel_getUid("scrollWheel:"),function(_69,_6a,_6b){
with(_69){
var _6c=objj_msgSend(_verticalScroller,"floatValue"),_6d=objj_msgSend(objj_msgSend(_69,"documentView"),"frame"),_6e=objj_msgSend(_contentView,"bounds");
_6e.origin.x+=objj_msgSend(_6b,"deltaX")*_horizontalLineScroll;
_6e.origin.y+=objj_msgSend(_6b,"deltaY")*_verticalLineScroll;
objj_msgSend(_contentView,"scrollToPoint:",_6e.origin);
}
}),new objj_method(sel_getUid("keyDown:"),function(_6f,_70,_71){
with(_6f){
var _72=objj_msgSend(_71,"keyCode"),_73=objj_msgSend(_verticalScroller,"floatValue"),_74=objj_msgSend(objj_msgSend(_6f,"documentView"),"frame"),_75=objj_msgSend(_contentView,"bounds");
switch(_72){
case 33:
_75.origin.y-=(_75.size.height)-_verticalPageScroll;
break;
case 34:
_75.origin.y+=(_75.size.height)-_verticalPageScroll;
break;
case 38:
_75.origin.y-=_verticalLineScroll;
break;
case 40:
_75.origin.y+=_verticalLineScroll;
break;
case 37:
_75.origin.x-=_horizontalLineScroll;
break;
case 49:
_75.origin.x+=_horizontalLineScroll;
break;
default:
return objj_msgSendSuper({receiver:_6f,super_class:objj_getClass("CPView")},"keyDown:",_71);
}
objj_msgSend(_contentView,"scrollToPoint:",_75.origin);
}
})]);
var _76="CPScrollViewContentView",_77="CPScrollViewVLineScroll",_78="CPScrollViewHLineScroll",_79="CPScrollViewVPageScroll",_7a="CPScrollViewHPageScroll",_7b="CPScrollViewHasVScroller",_7c="CPScrollViewHasHScroller",_7d="CPScrollViewVScroller",_7e="CPScrollViewHScroller",_7f="CPScrollViewAutohidesScroller";
var _1=objj_getClass("CPScrollView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPScrollView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_80,_81,_82){
with(_80){
if(_80=objj_msgSendSuper({receiver:_80,super_class:objj_getClass("CPView")},"initWithCoder:",_82)){
_verticalLineScroll=objj_msgSend(_82,"decodeFloatForKey:",_77);
_verticalPageScroll=objj_msgSend(_82,"decodeFloatForKey:",_79);
_horizontalLineScroll=objj_msgSend(_82,"decodeFloatForKey:",_78);
_horizontalPageScroll=objj_msgSend(_82,"decodeFloatForKey:",_7a);
_contentView=objj_msgSend(_82,"decodeObjectForKey:",_76);
_verticalScroller=objj_msgSend(_82,"decodeObjectForKey:",_7d);
_horizontalScroller=objj_msgSend(_82,"decodeObjectForKey:",_7e);
_hasVerticalScroller=objj_msgSend(_82,"decodeBoolForKey:",_7b);
_hasHorizontalScroller=objj_msgSend(_82,"decodeBoolForKey:",_7c);
_autohidesScrollers=objj_msgSend(_82,"decodeBoolForKey:",_7f);
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"performSelector:target:argument:order:modes:",sel_getUid("reflectScrolledClipView:"),_80,_contentView,0,[CPDefaultRunLoopMode]);
}
return _80;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_83,_84,_85){
with(_83){
objj_msgSendSuper({receiver:_83,super_class:objj_getClass("CPView")},"encodeWithCoder:",_85);
objj_msgSend(_85,"encodeObject:forKey:",_contentView,_76);
objj_msgSend(_85,"encodeObject:forKey:",_verticalScroller,_7d);
objj_msgSend(_85,"encodeObject:forKey:",_horizontalScroller,_7e);
objj_msgSend(_85,"encodeFloat:forKey:",_verticalLineScroll,_77);
objj_msgSend(_85,"encodeFloat:forKey:",_verticalPageScroll,_79);
objj_msgSend(_85,"encodeFloat:forKey:",_horizontalLineScroll,_78);
objj_msgSend(_85,"encodeFloat:forKey:",_horizontalPageScroll,_7a);
objj_msgSend(_85,"encodeBool:forKey:",_hasVerticalScroller,_7b);
objj_msgSend(_85,"encodeBool:forKey:",_hasHorizontalScroller,_7c);
objj_msgSend(_85,"encodeBool:forKey:",_autohidesScrollers,_7f);
}
})]);
p;19;CPSecureTextField.ji;13;CPTextField.jc;2304;
var _1=4,_2=3;
HORIZONTAL_PADDING=3;
var _3=nil;
var _4=objj_allocateClassPair(CPTextField,"CPSecureTextField"),_5=_4.isa;
objj_registerClassPair(_4);
objj_addClassForBundle(_4,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_4,[new objj_method(sel_getUid("initWithFrame:"),function(_6,_7,_8){
with(_6){
_6=objj_msgSendSuper({receiver:_6,super_class:objj_getClass("CPTextField")},"initWithFrame:",_8);
if(_6){
_DOMElement.removeChild(_DOMTextElement);
_DOMTextElement=document.createElement("input");
_DOMTextElement.type="password";
_DOMTextElement.style.position="absolute";
_DOMTextElement.style.top=_1+"px";
_DOMTextElement.style.left=HORIZONTAL_PADDING+"px";
_DOMTextElement.style.width=MAX(0,CGRectGetWidth(_8)-2*HORIZONTAL_PADDING)+"px";
_DOMTextElement.style.height=MAX(0,CGRectGetHeight(_8)-_1-_2)+"px";
_DOMTextElement.style.whiteSpace="pre";
_DOMTextElement.style.cursor="default";
_DOMTextElement.style.zIndex=100;
_DOMTextElement.style.border="0";
_DOMTextElement.style.font=_DOMElement.style.font;
_DOMTextElement.style.padding="0px";
_DOMTextElement.style.margin="0px";
_DOMElement.appendChild(_DOMTextElement);
}
return _6;
}
}),new objj_method(sel_getUid("setFont:"),function(_9,_a,_b){
with(_9){
objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPTextField")},"setFont:",_b);
if(_DOMTextElement){
_DOMTextElement.style.font=_DOMElement.style.font;
}
}
}),new objj_method(sel_getUid("stringValue"),function(_c,_d){
with(_c){
if(objj_msgSend(objj_msgSend(_c,"window"),"firstResponder")==_c){
return objj_msgSend(objj_msgSend(_c,"class"),"_inputElement").value;
}
return _DOMTextElement.value;
}
}),new objj_method(sel_getUid("setStringValue:"),function(_e,_f,_10){
with(_e){
_value=_10;
_DOMTextElement.value=_value;
}
})]);
class_addMethods(_5,[new objj_method(sel_getUid("_inputElement"),function(_11,_12){
with(_11){
if(!_3){
_3=document.createElement("input");
_3.type="password";
_3.style.position="absolute";
_3.style.top="0px";
_3.style.left="0px";
_3.style.width="100%";
_3.style.height="100%";
_3.style.border="0px";
_3.style.padding="0px";
_3.style.whiteSpace="pre";
_3.style.background="transparent";
_3.style.outline="none";
_3.style.paddingLeft=HORIZONTAL_PADDING+"px";
_3.style.paddingTop=_1-2+"px";
_3.style.margin="0px";
}
return _3;
}
})]);
p;20;CPSegmentedControl.jI;20;Foundation/CPArray.ji;11;CPControl.jc;14516;
CPSegmentSwitchTrackingSelectOne=0;
CPSegmentSwitchTrackingSelectAny=1;
CPSegmentSwitchTrackingMomentary=2;
var _1=objj_allocateClassPair(CPControl,"CPSegmentedControl"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_segments"),new objj_ivar("_selectedSegment"),new objj_ivar("_segmentStyle"),new objj_ivar("_trackingMode"),new objj_ivar("_trackingSegment"),new objj_ivar("_trackingHighlighted")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_segments=[];
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"initWithFrame:",_5);
if(_3){
_selectedSegment=-1;
_trackingMode=CPSegmentSwitchTrackingSelectOne;
}
return _3;
}
}),new objj_method(sel_getUid("selectedTag"),function(_6,_7){
with(_6){
return _segments[_selectedSegment].tag;
}
}),new objj_method(sel_getUid("setSegmentCount:"),function(_8,_9,_a){
with(_8){
if(_segments.length==_a){
return;
}
var _b=CGRectGetHeight(objj_msgSend(_8,"bounds"));
if(_segments.length<_a){
var _c=_segments.length;
for(;_c<_a;++_c){
_segments[_c]=objj_msgSend(objj_msgSend(_CPSegmentItem,"alloc"),"init");
_segments[_c].frame.size.height=_b;
}
}else{
if(_a<_segments.length){
var _c=_a;
for(;_c<_segments.length;++_c){
objj_msgSend(_segments[_c].imageView,"removeFromSuperview");
objj_msgSend(_segments[_c].labelView,"removeFromSuperview");
_segments[_c]=nil;
}
}
}
if(_selectedSegment<_segments.length){
_selectedSegment=-1;
}
objj_msgSend(_8,"tileWithChangedSegment:",0);
}
}),new objj_method(sel_getUid("segmentCount"),function(_d,_e){
with(_d){
return _segments.length;
}
}),new objj_method(sel_getUid("setSelectedSegment:"),function(_f,_10,_11){
with(_f){
objj_msgSend(_f,"setSelected:forSegment:",YES,_11);
}
}),new objj_method(sel_getUid("selectedSegment"),function(_12,_13){
with(_12){
return _selectedSegment;
}
}),new objj_method(sel_getUid("selectSegmentWithTag:"),function(_14,_15,_16){
with(_14){
var _17=0;
for(;_17<_segments.length;++_17){
if(_segments[_17].tag==_16){
objj_msgSend(_14,"setSelectedSegment:",_17);
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("isTracking"),function(_18,_19){
with(_18){
}
}),new objj_method(sel_getUid("setTrackingMode:"),function(_1a,_1b,_1c){
with(_1a){
if(_trackingMode==_1c){
return;
}
_trackingMode=_1c;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne){
var _1d=0,_1e=NO;
for(;_1d<_segments.length;++_1d){
if(_segments[_1d].selected){
if(_1e){
objj_msgSend(_1a,"setSelected:forSegment:",NO,_1d);
}else{
_1e=YES;
}
}
}
}else{
if(_trackingMode==CPSegmentSwitchTrackingMomentary){
var _1d=0;
for(;_1d<_segments.length;++_1d){
if(_segments[_1d].selected){
objj_msgSend(_1a,"setSelected:forSegment:",NO,_1d);
}
}
}
}
}
}),new objj_method(sel_getUid("trackingMode"),function(_1f,_20){
with(_1f){
return _trackingMode;
}
}),new objj_method(sel_getUid("setWidth:forSegment:"),function(_21,_22,_23,_24){
with(_21){
_segments[_24].width=_23;
objj_msgSend(_21,"tileWithChangedSegment:",_24);
}
}),new objj_method(sel_getUid("widthForSegment:"),function(_25,_26,_27){
with(_25){
return _segments[_27].width;
}
}),new objj_method(sel_getUid("setImage:forSegment:"),function(_28,_29,_2a,_2b){
with(_28){
var _2c=_segments[_2b];
if(!_2a){
objj_msgSend(_2c.imageView,"removeFromSuperview");
_2c.imageView=nil;
}else{
if(!_2c.imageView){
_2c.imageView=objj_msgSend(objj_msgSend(CPImageView,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_28,"addSubview:",_2c.imageView);
}
objj_msgSend(_2c.imageView,"setImage:",_2a);
objj_msgSend(_2c.imageView,"setFrameSize:",CGSizeMakeCopy(objj_msgSend(_2a,"size")));
}
_2c.image=_2a;
if(_2c.width){
objj_msgSend(_28,"drawSegment:highlight:",_2b,NO);
}else{
objj_msgSend(_28,"tileWithChangedSegment:",_2b);
}
}
}),new objj_method(sel_getUid("imageForSegment:"),function(_2d,_2e,_2f){
with(_2d){
return _segments[_2f].image;
}
}),new objj_method(sel_getUid("setLabel:forSegment:"),function(_30,_31,_32,_33){
with(_30){
var _34=_segments[_33];
if(!_32||!_32.length){
objj_msgSend(_34.labelView,"removeFromSuperview");
_34.labelView=nil;
}else{
if(!_34.labelView){
_34.labelView=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_34.labelView,"setFont:",objj_msgSend(_30,"font"));
objj_msgSend(_30,"addSubview:",_34.labelView);
}
objj_msgSend(_34.labelView,"setStringValue:",_32);
objj_msgSend(_34.labelView,"sizeToFit");
}
_segments[_33].label=_32;
if(_34.width){
objj_msgSend(_30,"drawSegment:highlight:",_33,NO);
}else{
objj_msgSend(_30,"tileWithChangedSegment:",_33);
}
}
}),new objj_method(sel_getUid("labelForSegment:"),function(_35,_36,_37){
with(_35){
return _segments[_37].label;
}
}),new objj_method(sel_getUid("setMenu:forSegment:"),function(_38,_39,_3a,_3b){
with(_38){
_segments[_3b].menu=_3a;
}
}),new objj_method(sel_getUid("menuForSegment:"),function(_3c,_3d,_3e){
with(_3c){
return _segments[_3e].menu;
}
}),new objj_method(sel_getUid("setSelected:forSegment:"),function(_3f,_40,_41,_42){
with(_3f){
var _43=_segments[_42];
if(_43.selected==_41){
return;
}
_43.selected=_41;
if(_41){
var _44=_selectedSegment;
_selectedSegment=_42;
if(_trackingMode==CPSegmentSwitchTrackingSelectOne&&_44!=_42&&_44!=-1){
_segments[_44].selected=NO;
objj_msgSend(_3f,"drawSegmentBezel:highlight:",_44,NO);
}
}
if(_trackingMode!=CPSegmentSwitchTrackingMomentary){
objj_msgSend(_3f,"drawSegmentBezel:highlight:",_42,NO);
}
}
}),new objj_method(sel_getUid("isSelectedForSegment:"),function(_45,_46,_47){
with(_45){
return _segments[_47].selected;
}
}),new objj_method(sel_getUid("setEnabled:forSegment:"),function(_48,_49,_4a,_4b){
with(_48){
_segments[_4b].enabled=_4a;
}
}),new objj_method(sel_getUid("isEnabledForSegment:"),function(_4c,_4d,_4e){
with(_4c){
return _segments[_4e].enabled;
}
}),new objj_method(sel_getUid("setTag:forSegment:"),function(_4f,_50,_51,_52){
with(_4f){
_segments[_52].tag=_51;
}
}),new objj_method(sel_getUid("tagForSegment:"),function(_53,_54,_55){
with(_53){
return _segments[_55].tag;
}
}),new objj_method(sel_getUid("drawSegmentBezel:highlight:"),function(_56,_57,_58,_59){
with(_56){
}
}),new objj_method(sel_getUid("drawSegment:highlight:"),function(_5a,_5b,_5c,_5d){
with(_5a){
var _5e=_segments[_5c],_5f=_5e.imageView,_60=_5e.labelView,_61=_5e.frame,_62=CGRectGetMinX(_61),_63=CGRectGetWidth(_61),_64=CGRectGetHeight(_61)-1;
if(_5f&&_60){
var _65=objj_msgSend(_5f,"frame").size,_66=objj_msgSend(_60,"frame").size,_67=_65.height+_66.height,_68=MIN(_66.width,width),y=(_64-_67)/2;
objj_msgSend(_5f,"setFrameOrigin:",CGPointMake(_62+(_63-_65.width)/2,y));
if(_68<_66.width){
objj_msgSend(_60,"setFrameSize:",CGSizeMake(_68,_66.height));
}
objj_msgSend(_60,"setFrameOrigin:",CGPointMake(_62+(_63-_68)/2,y+_65.height));
}else{
if(_5f){
var _65=objj_msgSend(_5f,"frame").size;
objj_msgSend(_5f,"setFrameOrigin:",CGPointMake(_62+(_63-_65.width)/2,(_64-_65.height)/2));
}else{
if(_60){
var _66=objj_msgSend(_60,"frame").size,_68=MIN(_66.width,_63);
if(_68<_66.width){
objj_msgSend(_60,"setFrameSize:",CGSizeMake(_68,_66.height));
}
objj_msgSend(_60,"setFrameOrigin:",CGPointMake(_62+(_63-_68)/2,(_64-_66.height)/2));
}
}
}
}
}),new objj_method(sel_getUid("tileWithChangedSegment:"),function(_6a,_6b,_6c){
with(_6a){
var _6d=_segments[_6c],_6e=_6d.width;
if(!_6e){
if(_6d.labelView&&_6d.imageView){
_6e=MAX(CGRectGetWidth(objj_msgSend(_6d.labelView,"frame")),CGRectGetWidth(objj_msgSend(_6d.imageView,"frame")));
}else{
if(_6d.labelView){
_6e=CGRectGetWidth(objj_msgSend(_6d.labelView,"frame"));
}else{
if(_6d.imageView){
_6e=CGRectGetWidth(objj_msgSend(_6d.imageView,"frame"));
}
}
}
}
var _6f=_6e-CGRectGetWidth(_6d.frame);
if(!_6f){
return;
}
var _70=objj_msgSend(_6a,"frame");
objj_msgSend(_6a,"setFrameSize:",CGSizeMake(CGRectGetWidth(_70)+_6f,CGRectGetHeight(_70)));
_6d.frame.size.width=_6e;
var _71=_6c+1;
for(;_71<_segments.length;++_71){
_segments[_71].frame.origin.x+=_6f;
objj_msgSend(_6a,"drawSegmentBezel:highlight:",_71,NO);
objj_msgSend(_6a,"drawSegment:highlight:",_71,NO);
}
objj_msgSend(_6a,"drawSegmentBezel:highlight:",_6c,NO);
objj_msgSend(_6a,"drawSegment:highlight:",_6c,NO);
}
}),new objj_method(sel_getUid("frameForSegment:"),function(_72,_73,_74){
with(_72){
return _segments[_74].frame;
}
}),new objj_method(sel_getUid("testSegment:"),function(_75,_76,_77){
with(_75){
var _78=objj_msgSend(_75,"convertPoint:fromView:",_77,nil),_79=_segments.length;
while(_79--){
if(CGRectContainsPoint(_segments[_79].frame,_77)){
return _79;
}
}
return -1;
}
}),new objj_method(sel_getUid("mouseDown:"),function(_7a,_7b,_7c){
with(_7a){
if(!objj_msgSend(_7a,"isEnabled")){
return;
}
objj_msgSend(_7a,"trackSegment:",_7c);
}
}),new objj_method(sel_getUid("mouseUp:"),function(_7d,_7e,_7f){
with(_7d){
}
}),new objj_method(sel_getUid("trackSegment:"),function(_80,_81,_82){
with(_80){
var _83=objj_msgSend(_82,"type"),_84=objj_msgSend(_80,"convertPoint:fromView:",objj_msgSend(_82,"locationInWindow"),nil);
if(_83==CPLeftMouseUp){
if(CGRectContainsPoint(_segments[_trackingSegment].frame,_84)){
if(_trackingMode==CPSegmentSwitchTrackingSelectAny){
objj_msgSend(_80,"setSelected:forSegment:",!objj_msgSend(_80,"isSelectedForSegment:",_trackingSegment),_trackingSegment);
_selectedSegment=_trackingSegment;
}else{
objj_msgSend(_80,"setSelected:forSegment:",YES,_trackingSegment);
}
objj_msgSend(_80,"sendAction:to:",objj_msgSend(_80,"action"),objj_msgSend(_80,"target"));
if(_trackingMode==CPSegmentSwitchTrackingMomentary){
objj_msgSend(_80,"setSelected:forSegment:",NO,_trackingSegment);
_selectedSegment=-1;
}
}
objj_msgSend(_80,"drawSegmentBezel:highlight:",_trackingSegment,NO);
_trackingSegment=-1;
return;
}
if(_83==CPLeftMouseDown){
_trackingHighlighted=YES;
_trackingSegment=objj_msgSend(_80,"testSegment:",_84);
CPLog.error("_trackingSegment="+_trackingSegment);
objj_msgSend(_80,"drawSegmentBezel:highlight:",_trackingSegment,YES);
}else{
if(_83==CPLeftMouseDragged){
var _85=CGRectContainsPoint(_segments[_trackingSegment].frame,_84);
if(_85!=_trackingHighlighted){
_trackingHighlighted=_85;
objj_msgSend(_80,"drawSegmentBezel:highlight:",_trackingSegment,_trackingHighlighted);
}
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_80,sel_getUid("trackSegment:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("setFont:"),function(_86,_87,_88){
with(_86){
objj_msgSendSuper({receiver:_86,super_class:objj_getClass("CPControl")},"setFont:",_88);
var _89=_segments.length;
if(!_89){
return;
}
while(_89--){
objj_msgSend(_segments[_89].labelView,"setFont:",_88);
}
objj_msgSend(_86,"tileWithChangedSegment:",0);
}
})]);
var _8a="CPSegmentedControlSegmentsKey",_8b="CPSegmentedControlSelectedKey",_8c="CPSegmentedControlSegmentStyleKey",_8d="CPSegmentedControlTrackingModeKey";
var _1=objj_getClass("CPSegmentedControl");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSegmentedControl\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8e,_8f,_90){
with(_8e){
_8e=objj_msgSendSuper({receiver:_8e,super_class:objj_getClass("CPControl")},"initWithCoder:",_90);
if(_8e){
_segments=objj_msgSend(_90,"decodeObjectForKey:",_8a);
_segmentStyle=objj_msgSend(_90,"decodeIntForKey:",_8c);
if(objj_msgSend(_90,"containsValueForKey:",_8b)){
_selectedSegment=objj_msgSend(_90,"decodeIntForKey:",_8b);
}else{
_selectedSegment=-1;
}
if(objj_msgSend(_90,"containsValueForKey:",_8d)){
_trackingMode=objj_msgSend(_90,"decodeIntForKey:",_8d);
}else{
_trackingMode=CPSegmentSwitchTrackingSelectOne;
}
for(var i=0;i<_segments.length;i++){
if(_segments[i].image!=undefined){
objj_msgSend(_8e,"setImage:forSegment:",_segments[i].image,i);
}
if(_segments[i].label!=undefined){
objj_msgSend(_8e,"setLabel:forSegment:",_segments[i].label,i);
}
}
}
return _8e;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_92,_93,_94){
with(_92){
var _95=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_92,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_94);
_subviews=_95;
objj_msgSend(_94,"encodeObject:forKey:",_segments,_8a);
objj_msgSend(_94,"encodeInt:forKey:",_selectedSegment,_8b);
objj_msgSend(_94,"encodeInt:forKey:",_segmentStyle,_8c);
objj_msgSend(_94,"encodeInt:forKey:",_trackingMode,_8d);
}
})]);
var _1=objj_allocateClassPair(CPObject,"_CPSegmentItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("image"),new objj_ivar("label"),new objj_ivar("menu"),new objj_ivar("selected"),new objj_ivar("enabled"),new objj_ivar("tag"),new objj_ivar("width"),new objj_ivar("labelView"),new objj_ivar("imageView"),new objj_ivar("frame")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("init"),function(_96,_97){
with(_96){
if(_96=objj_msgSendSuper({receiver:_96,super_class:objj_getClass("CPObject")},"init")){
image=nil;
label="";
menu=nil;
selected=NO;
enabled=NO;
tag=0;
labelView=nil;
imageView=nil;
width=0;
frame=CGRectMakeZero();
}
return _96;
}
})]);
var _98="CPSegmentItemImageKey",_99="CPSegmentItemLabelKey",_9a="CPSegmentItemMenuKey",_9b="CPSegmentItemSelectedKey",_9c="CPSegmentItemEnabledKey",_9d="CPSegmentItemTagKey";
var _1=objj_getClass("_CPSegmentItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"_CPSegmentItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_9e,_9f,_a0){
with(_9e){
_9e=objj_msgSendSuper({receiver:_9e,super_class:objj_getClass("CPObject")},"init");
if(_9e){
image=objj_msgSend(_a0,"decodeObjectForKey:",_98);
label=objj_msgSend(_a0,"decodeObjectForKey:",_99);
menu=objj_msgSend(_a0,"decodeObjectForKey:",_9a);
selected=objj_msgSend(_a0,"decodeBoolForKey:",_9b);
enabled=objj_msgSend(_a0,"decodeBoolForKey:",_9c);
tag=objj_msgSend(_a0,"decodeIntForKey:",_9d);
labelView=nil;
imageView=nil;
width=0;
frame=CGRectMakeZero();
}
return _9e;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a1,_a2,_a3){
with(_a1){
objj_msgSend(_a3,"encodeObject:forKey:",image,_98);
objj_msgSend(_a3,"encodeObject:forKey:",label,_99);
objj_msgSend(_a3,"encodeObject:forKey:",menu,_9a);
objj_msgSend(_a3,"encodeBool:forKey:",selected,_9b);
objj_msgSend(_a3,"encodeBool:forKey:",enabled,_9c);
objj_msgSend(_a3,"encodeInt:forKey:",tag,_9d);
}
})]);
p;10;CPShadow.jI;21;Foundation/CPObject.jc;1307;
var _1=objj_allocateClassPair(CPObject,"CPShadow"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_offset"),new objj_ivar("_blurRadius"),new objj_ivar("_color"),new objj_ivar("_cssString")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("_initWithOffset:blurRadius:color:"),function(_3,_4,_5,_6,_7){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_offset=_5;
_blurRadius=_6;
_color=_7;
_cssString=objj_msgSend(_color,"cssString")+" "+Math.round(_5.width)+"px "+Math.round(_5.height)+"px "+Math.round(_blurRadius)+"px";
}
return _3;
}
}),new objj_method(sel_getUid("shadowOffset"),function(_8,_9){
with(_8){
return _offset;
}
}),new objj_method(sel_getUid("shadowBlurRadius"),function(_a,_b){
with(_a){
return _blurRadius;
}
}),new objj_method(sel_getUid("shadowColor"),function(_c,_d){
with(_c){
return _color;
}
}),new objj_method(sel_getUid("cssString"),function(_e,_f){
with(_e){
return _cssString;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("shadowWithOffset:blurRadius:color:"),function(_10,_11,_12,_13,_14){
with(_10){
return objj_msgSend(objj_msgSend(CPShadow,"alloc"),"_initWithOffset:blurRadius:color:",_12,_13,_14);
}
})]);
p;14;CPShadowView.jI;21;Foundation/CPBundle.ji;12;CGGeometry.ji;9;CPImage.ji;13;CPImageView.ji;8;CPView.jc;5564;
CPLightShadow=0;
CPHeavyShadow=1;
var _1=nil,_2=nil;
var _3=3,_4=3,_5=3,_6=5,_7=7,_8=7,_9=5,_a=5;
var _b=objj_allocateClassPair(CPView,"CPShadowView"),_c=_b.isa;
class_addIvars(_b,[new objj_ivar("_weight")]);
objj_registerClassPair(_b);
objj_addClassForBundle(_b,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_b,[new objj_method(sel_getUid("initWithFrame:"),function(_d,_e,_f){
with(_d){
_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("CPView")},"initWithFrame:",_f);
if(_d){
_weight=CPLightShadow;
objj_msgSend(_d,"setBackgroundColor:",_1);
objj_msgSend(_d,"setHitTests:",NO);
}
return _d;
}
}),new objj_method(sel_getUid("setWeight:"),function(_10,_11,_12){
with(_10){
if(_weight==_12){
return;
}
_weight=_12;
if(_weight==CPLightShadow){
objj_msgSend(_10,"setBackgroundColor:",_1);
}else{
objj_msgSend(_10,"setBackgroundColor:",_2);
}
}
}),new objj_method(sel_getUid("leftInset"),function(_13,_14){
with(_13){
return _weight==CPLightShadow?_3:_7;
}
}),new objj_method(sel_getUid("rightInset"),function(_15,_16){
with(_15){
return _weight==CPLightShadow?_4:_8;
}
}),new objj_method(sel_getUid("topInset"),function(_17,_18){
with(_17){
return _weight==CPLightShadow?_5:_9;
}
}),new objj_method(sel_getUid("bottomInset"),function(_19,_1a){
with(_19){
return _weight==CPLightShadow?_6:_a;
}
}),new objj_method(sel_getUid("horizontalInset"),function(_1b,_1c){
with(_1b){
if(_weight==CPLightShadow){
return _3+_4;
}
return _7+_8;
}
}),new objj_method(sel_getUid("verticalInset"),function(_1d,_1e){
with(_1d){
if(_weight==CPLightShadow){
return _5+_6;
}
return _9+_a;
}
}),new objj_method(sel_getUid("frameForContentFrame:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(objj_msgSend(_1f,"class"),"frameForContentFrame:withWeight:",_21,_weight);
}
}),new objj_method(sel_getUid("setFrameForContentFrame:"),function(_22,_23,_24){
with(_22){
objj_msgSend(_22,"setFrame:",objj_msgSend(_22,"frameForContentFrame:",_24));
}
})]);
class_addMethods(_c,[new objj_method(sel_getUid("initialize"),function(_25,_26){
with(_25){
if(_25!=objj_msgSend(CPShadowView,"class")){
return;
}
var _27=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_25,"class"));
_1=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightTopLeft.png"),CGSizeMake(9,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightTop.png"),CGSizeMake(1,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightTopRight.png"),CGSizeMake(9,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightLeft.png"),CGSizeMake(9,1)),nil,objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightRight.png"),CGSizeMake(9,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightBottomLeft.png"),CGSizeMake(9,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightBottom.png"),CGSizeMake(1,9)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewLightBottomRight.png"),CGSizeMake(9,9))]));
_2=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyTopLeft.png"),CGSizeMake(17,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyTop.png"),CGSizeMake(1,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyTopRight.png"),CGSizeMake(17,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyLeft.png"),CGSizeMake(17,1)),nil,objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyRight.png"),CGSizeMake(17,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyBottomLeft.png"),CGSizeMake(17,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyBottom.png"),CGSizeMake(1,17)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_27,"pathForResource:","CPShadowView/CPShadowViewHeavyBottomRight.png"),CGSizeMake(17,17))]));
}
}),new objj_method(sel_getUid("frameForContentFrame:withWeight:"),function(_28,_29,_2a,_2b){
with(_28){
if(_2b==CPLightShadow){
return CGRectMake((_2a.origin.x)-_3,(_2a.origin.y)-_5,(_2a.size.width)+_3+_4,(_2a.size.height)+_5+_6);
}else{
return CGRectMake((_2a.origin.x)-_7,(_2a.origin.y)-_9,(_2a.size.width)+_7+_8,(_2a.size.height)+_9+_a);
}
}
})]);
p;10;CPSlider.ji;11;CPControl.jc;9106;
var _1=objj_allocateClassPair(CPControl,"CPSlider"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_minValue"),new objj_ivar("_maxValue"),new objj_ivar("_altIncrementValue")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPControl")},"initWithFrame:",_5);
if(_3){
_minValue=0;
_maxValue=100;
objj_msgSend(_3,"setObjectValue:",50);
objj_msgSend(_3,"setContinuous:",YES);
}
return _3;
}
}),new objj_method(sel_getUid("setMinValue:"),function(_6,_7,_8){
with(_6){
if(_minValue===_8){
return;
}
_minValue=_8;
var _9=objj_msgSend(_6,"doubleValue");
if(_9<_minValue){
objj_msgSend(_6,"setDoubleValue:",_minValue);
}
}
}),new objj_method(sel_getUid("minValue"),function(_a,_b){
with(_a){
return _minValue;
}
}),new objj_method(sel_getUid("setMaxValue:"),function(_c,_d,_e){
with(_c){
if(_maxValue===_e){
return;
}
_maxValue=_e;
var _f=objj_msgSend(_c,"doubleValue");
if(_f>_maxValue){
objj_msgSend(_c,"setDoubleValue:",_maxValue);
}
}
}),new objj_method(sel_getUid("maxValue"),function(_10,_11){
with(_10){
return _maxValue;
}
}),new objj_method(sel_getUid("setObjectValue:"),function(_12,_13,_14){
with(_12){
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("CPControl")},"setObjectValue:",MIN(MAX(_14,_minValue),_maxValue));
objj_msgSend(_12,"setNeedsLayout");
objj_msgSend(_12,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("trackRectForBounds:"),function(_15,_16,_17){
with(_15){
var _18=objj_msgSend(_15,"currentValueForThemedAttributeName:","track-width");
if(_18<=0){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
if(objj_msgSend(_15,"isVertical")){
_17.origin.x=((_17.size.width)-_18)/2;
_17.size.width=_18;
}else{
_17.origin.y=((_17.size.height)-_18)/2;
_17.size.height=_18;
}
return _17;
}
}),new objj_method(sel_getUid("knobRectForBounds:"),function(_19,_1a,_1b){
with(_19){
var _1c=objj_msgSend(_19,"currentValueForThemedAttributeName:","knob-size");
if(_1c.width<=0||_1c.height<=0){
return {origin:{x:0,y:0},size:{width:0,height:0}};
}
var _1d={origin:{x:0,y:0},size:{width:_1c.width,height:_1c.height}},_1e=objj_msgSend(_19,"trackRectForBounds:",_1b);
if(!_1e||(_1e.size.width<=0||_1e.size.height<=0)){
_1e=_1b;
}
if(objj_msgSend(_19,"isVertical")){
_1d.origin.x=(_1e.origin.x+(_1e.size.width)/2)-_1c.width/2;
_1d.origin.y=((objj_msgSend(_19,"doubleValue")-_minValue)/(_maxValue-_minValue))*((_1e.size.height)-_1c.height);
}else{
_1d.origin.x=((objj_msgSend(_19,"doubleValue")-_minValue)/(_maxValue-_minValue))*((_1e.size.width)-_1c.width);
_1d.origin.y=(_1e.origin.y+(_1e.size.height)/2)-_1c.height/2;
}
return _1d;
}
}),new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"),function(_1f,_20,_21){
with(_1f){
if(_21==="track-view"){
return objj_msgSend(_1f,"trackRectForBounds:",objj_msgSend(_1f,"bounds"));
}else{
if(_21==="knob-view"){
return objj_msgSend(_1f,"knobRectForBounds:",objj_msgSend(_1f,"bounds"));
}
}
return objj_msgSendSuper({receiver:_1f,super_class:objj_getClass("CPControl")},"rectForEphemeralSubviewNamed:",_21);
}
}),new objj_method(sel_getUid("createEphemeralSubviewNamed:"),function(_22,_23,_24){
with(_22){
if(_24==="track-view"||_24==="knob-view"){
var _25=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_25,"setHitTests:",NO);
return _25;
}
return objj_msgSendSuper({receiver:_22,super_class:objj_getClass("CPControl")},"createEphemeralSubviewNamed:",_24);
}
}),new objj_method(sel_getUid("isVertical"),function(_26,_27){
with(_26){
var _28=objj_msgSend(_26,"bounds"),_29=CGRectGetWidth(_28),_2a=CGRectGetHeight(_28);
return _29<_2a?1:(_29>_2a?0:-1);
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_2b,_2c){
with(_2b){
var _2d=objj_msgSend(_2b,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","track-view",CPWindowBelow,"knob-view");
if(_2d){
if(objj_msgSend(_2b,"isVertical")){
objj_msgSend(_2d,"setBackgroundColor:",objj_msgSend(_2b,"currentValueForThemedAttributeName:","vertical-track-color"));
}else{
objj_msgSend(_2d,"setBackgroundColor:",objj_msgSend(_2b,"currentValueForThemedAttributeName:","horizontal-track-color"));
}
}
var _2e=objj_msgSend(_2b,"layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:","knob-view",CPWindowAbove,"track-view");
if(_2e){
objj_msgSend(_2e,"setBackgroundColor:",objj_msgSend(_2b,"currentValueForThemedAttributeName:","knob-color"));
}
}
}),new objj_method(sel_getUid("tracksMouseOutsideOfFrame"),function(_2f,_30){
with(_2f){
return YES;
}
}),new objj_method(sel_getUid("_valueAtPoint:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(_31,"bounds"),_35=objj_msgSend(_31,"knobRectForBounds:",_34),_36=objj_msgSend(_31,"trackRectForBounds:",_34);
if(objj_msgSend(_31,"isVertical")){
var _37=(_35.size.height);
_36.origin.y+=_37/2;
_36.size.height-=_37;
var _38=objj_msgSend(_31,"minValue");
return MAX(0,MIN(1,(_33.y-(_36.origin.y))/(_36.size.height)))*(objj_msgSend(_31,"maxValue")-_38)+_38;
}else{
var _39=(_35.size.width);
}
_36.origin.x+=_39/2;
_36.size.width-=_39;
var _38=objj_msgSend(_31,"minValue");
return MAX(0,MIN(1,(_33.x-(_36.origin.x))/(_36.size.width)))*(objj_msgSend(_31,"maxValue")-_38)+_38;
}
}),new objj_method(sel_getUid("startTrackingAt:"),function(_3a,_3b,_3c){
with(_3a){
var _3d=objj_msgSend(_3a,"bounds"),_3e=objj_msgSend(_3a,"knobRectForBounds:",{origin:{x:_3d.origin.x,y:_3d.origin.y},size:{width:_3d.size.width,height:_3d.size.height}});
if((_3c.x>=(_3e.origin.x)&&_3c.y>=(_3e.origin.y)&&_3c.x<(_3e.origin.x+_3e.size.width)&&_3c.y<(_3e.origin.y+_3e.size.height))){
_dragOffset={width:(_3e.origin.x+(_3e.size.width)/2)-_3c.x,height:(_3e.origin.y+(_3e.size.height)/2)-_3c.y};
}else{
var _3f=objj_msgSend(_3a,"trackRectForBounds:",_3d);
if(_3f&&(_3c.x>=(_3f.origin.x)&&_3c.y>=(_3f.origin.y)&&_3c.x<(_3f.origin.x+_3f.size.width)&&_3c.y<(_3f.origin.y+_3f.size.height))){
_dragOffset={width:0,height:0};
objj_msgSend(_3a,"setObjectValue:",objj_msgSend(_3a,"_valueAtPoint:",_3c));
}else{
return NO;
}
}
objj_msgSend(_3a,"setHighlighted:",YES);
objj_msgSend(_3a,"setNeedsLayout");
objj_msgSend(_3a,"setNeedsDisplay:",YES);
return YES;
}
}),new objj_method(sel_getUid("continueTracking:at:"),function(_40,_41,_42,_43){
with(_40){
objj_msgSend(_40,"setObjectValue:",objj_msgSend(_40,"_valueAtPoint:",{x:_43.x+_dragOffset.width,y:_43.y+_dragOffset.height}));
return YES;
}
}),new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"),function(_44,_45,_46,_47,_48){
with(_44){
objj_msgSend(_44,"setHighlighted:",NO);
if(objj_msgSend(_target,"respondsToSelector:",sel_getUid("sliderDidFinish:"))){
objj_msgSend(_target,"sliderDidFinish:",_44);
}
objj_msgSend(_44,"setNeedsLayout");
objj_msgSend(_44,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setContinuous:"),function(_49,_4a,_4b){
with(_49){
if(_4b){
_sendActionOn|=CPLeftMouseDraggedMask;
}else{
_sendActionOn&=~CPLeftMouseDraggedMask;
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("themedAttributes"),function(_4c,_4d){
with(_4c){
return objj_msgSend(CPDictionary,"dictionaryWithObjects:forKeys:",[nil,{width:0,height:0},0,nil,nil],["knob-color","knob-size","track-width","vertical-track-color","horizontal-track-color"]);
}
})]);
var _4e="CPSliderMinValueKey",_4f="CPSliderMaxValueKey",_50="CPSliderAltIncrValueKey";
var _1=objj_getClass("CPSlider");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSlider\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_51,_52,_53){
with(_51){
_minValue=objj_msgSend(_53,"decodeDoubleForKey:",_4e);
_maxValue=objj_msgSend(_53,"decodeDoubleForKey:",_4f);
_51=objj_msgSendSuper({receiver:_51,super_class:objj_getClass("CPControl")},"initWithCoder:",_53);
if(_51){
_altIncrementValue=objj_msgSend(_53,"decodeDoubleForKey:",_50);
objj_msgSend(_51,"setContinuous:",YES);
objj_msgSend(_51,"setNeedsLayout");
objj_msgSend(_51,"setNeedsDisplay:",YES);
}
return _51;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_54,_55,_56){
with(_54){
objj_msgSendSuper({receiver:_54,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_56);
objj_msgSend(_56,"encodeDouble:forKey:",_minValue,_4e);
objj_msgSend(_56,"encodeDouble:forKey:",_maxValue,_4f);
objj_msgSend(_56,"encodeDouble:forKey:",_altIncrementValue,_50);
}
})]);
var _1=objj_getClass("CPSlider");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPSlider\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("value"),function(_57,_58){
with(_57){
CPLog.warn("[CPSlider value] is deprecated, use doubleValue or objectValue instead.");
return objj_msgSend(_57,"doubleValue");
}
}),new objj_method(sel_getUid("setValue:"),function(_59,_5a,_5b){
with(_59){
CPLog.warn("[CPSlider setValue:] is deprecated, use setDoubleValue: or setObjectValue: instead.");
objj_msgSend(_59,"setObjectValue:",_5b);
}
})]);
p;21;CPSliderColorPicker.ji;15;CPColorPicker.jc;13627;
var _1=objj_allocateClassPair(CPColorPicker,"CPSliderColorPicker"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contentView"),new objj_ivar("_redSlider"),new objj_ivar("_greenSlider"),new objj_ivar("_blueSlider"),new objj_ivar("_hueSlider"),new objj_ivar("_saturationSlider"),new objj_ivar("_brightnessSlider"),new objj_ivar("_rgbLabel"),new objj_ivar("_hsbLabel"),new objj_ivar("_redLabel"),new objj_ivar("_greenLabel"),new objj_ivar("_blueLabel"),new objj_ivar("_hueLabel"),new objj_ivar("_saturationLabel"),new objj_ivar("_brightnessLabel"),new objj_ivar("_hexLabel"),new objj_ivar("_redValue"),new objj_ivar("_greenValue"),new objj_ivar("_blueValue"),new objj_ivar("_hueValue"),new objj_ivar("_saturationValue"),new objj_ivar("_brightnessValue"),new objj_ivar("_hexValue")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithPickerMask:colorPanel:"),function(_3,_4,_5,_6){
with(_3){
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPColorPicker")},"initWithPickerMask:colorPanel:",_5,_6);
}
}),new objj_method(sel_getUid("initView"),function(_7,_8){
with(_7){
aFrame=CPRectMake(0,0,CPColorPickerViewWidth,CPColorPickerViewHeight);
_contentView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",aFrame);
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
_rgbLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,10,100,20));
objj_msgSend(_rgbLabel,"setStringValue:","RGB");
objj_msgSend(_rgbLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_redLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,35,15,20));
objj_msgSend(_redLabel,"setStringValue:","R");
objj_msgSend(_redLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_redSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,35,aFrame.size.width-70,20));
objj_msgSend(_redSlider,"setMaxValue:",1);
objj_msgSend(_redSlider,"setMinValue:",0);
objj_msgSend(_redSlider,"setTarget:",_7);
objj_msgSend(_redSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_redSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _9=function(_a){
if(isNaN(this.value)){
return;
}
switch(this){
case _redValue:
objj_msgSend(_redSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),255)/255,0));
break;
case _greenValue:
objj_msgSend(_greenSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),255)/255,0));
break;
case _blueValue:
objj_msgSend(_blueSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),255)/255,0));
break;
case _hueValue:
objj_msgSend(_hueSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),360),0));
break;
case _saturationValue:
objj_msgSend(_saturationSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),100),0));
break;
case _brightnessValue:
objj_msgSend(_brightnessSlider,"setFloatValue:",MAX(MIN(ROUND(this.value),100),0));
break;
}
this.blur();
};
var _b=function(_c){
_c=_c||window.event;
if(_c.keyCode==13){
_9(_c);
if(_c.preventDefault){
_c.preventDefault();
}else{
if(_c.stopPropagation){
_c.stopPropagation();
}
}
}
};
var _d=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,35,45,20));
objj_msgSend(_d,"setAutoresizingMask:",CPViewMinXMargin);
_redValue=document.createElement("input");
_redValue.style.width="40px";
_redValue.style.backgroundColor="transparent";
_redValue.style.border="1px solid white";
_redValue.style.color="white";
_redValue.style.position="absolute";
_redValue.style.top="0px";
_redValue.style.left="0px";
_redValue.onchange=_9;
_d._DOMElement.appendChild(_redValue);
objj_msgSend(_contentView,"addSubview:",_d);
_greenLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,58,15,20));
objj_msgSend(_greenLabel,"setStringValue:","G");
objj_msgSend(_greenLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_greenSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,58,aFrame.size.width-70,20));
objj_msgSend(_greenSlider,"setMaxValue:",1);
objj_msgSend(_greenSlider,"setMinValue:",0);
objj_msgSend(_greenSlider,"setTarget:",_7);
objj_msgSend(_greenSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_greenSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _e=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,58,45,20));
objj_msgSend(_e,"setAutoresizingMask:",CPViewMinXMargin);
_greenValue=_redValue.cloneNode(false);
_greenValue.onchange=_9;
_e._DOMElement.appendChild(_greenValue);
objj_msgSend(_contentView,"addSubview:",_e);
_blueLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,81,15,20));
objj_msgSend(_blueLabel,"setStringValue:","B");
objj_msgSend(_blueLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_blueSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,81,aFrame.size.width-70,20));
objj_msgSend(_blueSlider,"setMaxValue:",1);
objj_msgSend(_blueSlider,"setMinValue:",0);
objj_msgSend(_blueSlider,"setTarget:",_7);
objj_msgSend(_blueSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_blueSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,81,45,20));
objj_msgSend(_f,"setAutoresizingMask:",CPViewMinXMargin);
_blueValue=_redValue.cloneNode(false);
_blueValue.onchange=_9;
_f._DOMElement.appendChild(_blueValue);
objj_msgSend(_contentView,"addSubview:",_f);
_hsbLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,120,100,20));
objj_msgSend(_hsbLabel,"setStringValue:","HSB");
objj_msgSend(_hsbLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_hueLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,145,15,20));
objj_msgSend(_hueLabel,"setStringValue:","H");
objj_msgSend(_hueLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_hueSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,145,aFrame.size.width-70,20));
objj_msgSend(_hueSlider,"setMaxValue:",359);
objj_msgSend(_hueSlider,"setMinValue:",0);
objj_msgSend(_hueSlider,"setTarget:",_7);
objj_msgSend(_hueSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_hueSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _10=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,145,45,20));
objj_msgSend(_10,"setAutoresizingMask:",CPViewMinXMargin);
_hueValue=_redValue.cloneNode(false);
_hueValue.onchange=_9;
_10._DOMElement.appendChild(_hueValue);
objj_msgSend(_contentView,"addSubview:",_10);
_saturationLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,168,15,20));
objj_msgSend(_saturationLabel,"setStringValue:","S");
objj_msgSend(_saturationLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_saturationSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,168,aFrame.size.width-70,20));
objj_msgSend(_saturationSlider,"setMaxValue:",100);
objj_msgSend(_saturationSlider,"setMinValue:",0);
objj_msgSend(_saturationSlider,"setTarget:",_7);
objj_msgSend(_saturationSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_saturationSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _11=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,168,45,20));
objj_msgSend(_11,"setAutoresizingMask:",CPViewMinXMargin);
_saturationValue=_redValue.cloneNode(false);
_saturationValue.onchange=_9;
_11._DOMElement.appendChild(_saturationValue);
objj_msgSend(_contentView,"addSubview:",_11);
_brightnessLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,191,15,20));
objj_msgSend(_brightnessLabel,"setStringValue:","B");
objj_msgSend(_brightnessLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_brightnessSlider=objj_msgSend(objj_msgSend(CPSlider,"alloc"),"initWithFrame:",CPRectMake(15,191,aFrame.size.width-70,20));
objj_msgSend(_brightnessSlider,"setMaxValue:",100);
objj_msgSend(_brightnessSlider,"setMinValue:",0);
objj_msgSend(_brightnessSlider,"setTarget:",_7);
objj_msgSend(_brightnessSlider,"setAction:",sel_getUid("sliderChanged:"));
objj_msgSend(_brightnessSlider,"setAutoresizingMask:",CPViewWidthSizable);
var _12=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(aFrame.size.width-45,191,45,20));
objj_msgSend(_12,"setAutoresizingMask:",CPViewMinXMargin);
_brightnessValue=_redValue.cloneNode(false);
_brightnessValue.onchange=_9;
_12._DOMElement.appendChild(_brightnessValue);
objj_msgSend(_contentView,"addSubview:",_12);
_hexLabel=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMake(0,230,100,20));
objj_msgSend(_hexLabel,"setStringValue:","Hex");
objj_msgSend(_hexLabel,"setTextColor:",objj_msgSend(CPColor,"whiteColor"));
_hexValue=_redValue.cloneNode(false);
_hexValue.style.top="255px";
_hexValue.style.width="80px";
_hexValue.style.left="0px";
_hexValue.onkeypress=function(_13){
_13=_13||window.event;
if(_13.keyCode==13){
var _14=objj_msgSend(CPColor,"colorWithHexString:",this.value);
if(_14){
objj_msgSend(_7,"setColor:",_14);
objj_msgSend(objj_msgSend(_7,"colorPanel"),"setColor:",_14);
}
if(_13.preventDefault){
_13.preventDefault();
}else{
if(_13.stopPropagation){
_13.stopPropagation();
}
}
this.blur();
}
};
_contentView._DOMElement.appendChild(_hexValue);
objj_msgSend(_contentView,"addSubview:",_rgbLabel);
objj_msgSend(_contentView,"addSubview:",_redLabel);
objj_msgSend(_contentView,"addSubview:",_greenLabel);
objj_msgSend(_contentView,"addSubview:",_blueLabel);
objj_msgSend(_contentView,"addSubview:",_redSlider);
objj_msgSend(_contentView,"addSubview:",_greenSlider);
objj_msgSend(_contentView,"addSubview:",_blueSlider);
objj_msgSend(_contentView,"addSubview:",_hsbLabel);
objj_msgSend(_contentView,"addSubview:",_hueLabel);
objj_msgSend(_contentView,"addSubview:",_saturationLabel);
objj_msgSend(_contentView,"addSubview:",_brightnessLabel);
objj_msgSend(_contentView,"addSubview:",_hueSlider);
objj_msgSend(_contentView,"addSubview:",_saturationSlider);
objj_msgSend(_contentView,"addSubview:",_brightnessSlider);
objj_msgSend(_contentView,"addSubview:",_hexLabel);
}
}),new objj_method(sel_getUid("provideNewView:"),function(_15,_16,_17){
with(_15){
if(_17){
objj_msgSend(_15,"initView");
}
return _contentView;
}
}),new objj_method(sel_getUid("currentMode"),function(_18,_19){
with(_18){
return CPSliderColorPickerMode;
}
}),new objj_method(sel_getUid("supportsMode:"),function(_1a,_1b,_1c){
with(_1a){
return (_1c==CPSliderColorPickerMode)?YES:NO;
}
}),new objj_method(sel_getUid("sliderChanged:"),function(_1d,_1e,_1f){
with(_1d){
var _20;
switch(_1f){
case _hueSlider:
case _saturationSlider:
case _brightnessSlider:
_20=objj_msgSend(CPColor,"colorWithHue:saturation:brightness:",objj_msgSend(_hueSlider,"floatValue"),objj_msgSend(_saturationSlider,"floatValue"),objj_msgSend(_brightnessSlider,"floatValue"));
objj_msgSend(_1d,"updateRGBSliders:",_20);
break;
case _redSlider:
case _greenSlider:
case _blueSlider:
_20=objj_msgSend(CPColor,"colorWithCalibratedRed:green:blue:alpha:",objj_msgSend(_redSlider,"floatValue"),objj_msgSend(_greenSlider,"floatValue"),objj_msgSend(_blueSlider,"floatValue"),1);
objj_msgSend(_1d,"updateHSBSliders:",_20);
break;
}
objj_msgSend(_1d,"updateLabels");
objj_msgSend(_1d,"updateHex:",_20);
objj_msgSend(objj_msgSend(_1d,"colorPanel"),"setColor:",_20);
}
}),new objj_method(sel_getUid("setColor:"),function(_21,_22,_23){
with(_21){
objj_msgSend(_21,"updateRGBSliders:",_23);
objj_msgSend(_21,"updateHSBSliders:",_23);
objj_msgSend(_21,"updateHex:",_23);
objj_msgSend(_21,"updateLabels");
}
}),new objj_method(sel_getUid("updateHSBSliders:"),function(_24,_25,_26){
with(_24){
var hsb=objj_msgSend(_26,"hsbComponents");
objj_msgSend(_hueSlider,"setFloatValue:",hsb[0]);
objj_msgSend(_saturationSlider,"setFloatValue:",hsb[1]);
objj_msgSend(_brightnessSlider,"setFloatValue:",hsb[2]);
}
}),new objj_method(sel_getUid("updateHex:"),function(_28,_29,_2a){
with(_28){
_hexValue.value=objj_msgSend(_2a,"hexString");
}
}),new objj_method(sel_getUid("updateRGBSliders:"),function(_2b,_2c,_2d){
with(_2b){
var rgb=objj_msgSend(_2d,"components");
objj_msgSend(_redSlider,"setFloatValue:",rgb[0]);
objj_msgSend(_greenSlider,"setFloatValue:",rgb[1]);
objj_msgSend(_blueSlider,"setFloatValue:",rgb[2]);
}
}),new objj_method(sel_getUid("updateLabels"),function(_2f,_30){
with(_2f){
_hueValue.value=ROUND(objj_msgSend(_hueSlider,"floatValue"));
_saturationValue.value=ROUND(objj_msgSend(_saturationSlider,"floatValue"));
_brightnessValue.value=ROUND(objj_msgSend(_brightnessSlider,"floatValue"));
_redValue.value=ROUND(objj_msgSend(_redSlider,"floatValue")*255);
_greenValue.value=ROUND(objj_msgSend(_greenSlider,"floatValue")*255);
_blueValue.value=ROUND(objj_msgSend(_blueSlider,"floatValue")*255);
}
}),new objj_method(sel_getUid("provideNewButtonImage"),function(_31,_32){
with(_31){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","slider_button.png"),CGSizeMake(32,32));
}
}),new objj_method(sel_getUid("provideNewAlternateButtonImage"),function(_33,_34){
with(_33){
return objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(objj_msgSend(CPBundle,"bundleForClass:",CPColorPicker),"pathForResource:","slider_button_h.png"),CGSizeMake(32,32));
}
})]);
p;13;CPSplitView.ji;9;CPImage.ji;8;CPView.jc;25381;
CPSplitViewDidResizeSubviewsNotification = "CPSplitViewDidResizeSubviewsNotification";
CPSplitViewWillResizeSubviewsNotification = "CPSplitViewWillResizeSubviewsNotification";
var CPSplitViewHorizontalImage = nil,
    CPSplitViewVerticalImage = nil;
{var the_class = objj_allocateClassPair(CPView, "CPSplitView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_isVertical"), new objj_ivar("_isPaneSplitter"), new objj_ivar("_currentDivider"), new objj_ivar("_initialOffset"), new objj_ivar("_originComponent"), new objj_ivar("_sizeComponent"), new objj_ivar("_DOMDividerElements"), new objj_ivar("_dividerImagePath"), new objj_ivar("_drawingDivider"), new objj_ivar("_needsResizeSubviews")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPSplitView__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame))
    {
        _currentDivider = CPNotFound;
        _DOMDividerElements = [];
        objj_msgSend(self, "_setVertical:", YES);
    }
    return self;
}
}), new objj_method(sel_getUid("dividerThickness"), function $CPSplitView__dividerThickness(self, _cmd)
{ with(self)
{
    return _isPaneSplitter ? 1.0 : 10.0;
}
}), new objj_method(sel_getUid("isVertical"), function $CPSplitView__isVertical(self, _cmd)
{ with(self)
{
    return _isVertical;
}
}), new objj_method(sel_getUid("setVertical:"), function $CPSplitView__setVertical_(self, _cmd, shouldBeVertical)
{ with(self)
{
    if (!objj_msgSend(self, "_setVertical:", shouldBeVertical))
        return;
    var frame = objj_msgSend(self, "frame"),
        dividerThickness = objj_msgSend(self, "dividerThickness");
    objj_msgSend(self, "_postNotificationWillResize");
    var eachSize = ROUND((frame.size[_sizeComponent] - dividerThickness * (_subviews.length - 1)) / _subviews.length),
        index = 0,
        count = _subviews.length;
    if (objj_msgSend(self, "isVertical"))
        for (; index < count; ++index)
            objj_msgSend(_subviews[index], "setFrame:", CGRectMake(ROUND((eachSize + dividerThickness) * index), 0, eachSize, frame.size.height));
    else
        for (; index < count; ++index)
            objj_msgSend(_subviews[index], "setFrame:", CGRectMake(0, ROUND((eachSize + dividerThickness) * index), frame.size.width, eachSize));
    objj_msgSend(self, "setNeedsDisplay:", YES);
    objj_msgSend(self, "_postNotificationDidResize");
}
}), new objj_method(sel_getUid("_setVertical:"), function $CPSplitView___setVertical_(self, _cmd, shouldBeVertical)
{ with(self)
{
    var changed = (_isVertical != shouldBeVertical);
    _isVertical = shouldBeVertical;
    _originComponent = objj_msgSend(self, "isVertical") ? "x" : "y";
    _sizeComponent = objj_msgSend(self, "isVertical") ? "width" : "height";
    _dividerImagePath = objj_msgSend(self, "isVertical") ? objj_msgSend(CPSplitViewVerticalImage, "filename") : objj_msgSend(CPSplitViewHorizontalImage, "filename");
    return changed;
}
}), new objj_method(sel_getUid("isPaneSplitter"), function $CPSplitView__isPaneSplitter(self, _cmd)
{ with(self)
{
    return _isPaneSplitter;
}
}), new objj_method(sel_getUid("setIsPaneSplitter:"), function $CPSplitView__setIsPaneSplitter_(self, _cmd, shouldBePaneSplitter)
{ with(self)
{
    if (_isPaneSplitter == shouldBePaneSplitter)
        return;
    _isPaneSplitter = shouldBePaneSplitter;
    _DOMDividerElements = [];
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("didAddSubview:"), function $CPSplitView__didAddSubview_(self, _cmd, aSubview)
{ with(self)
{
    _needsResizeSubviews = YES;
}
}), new objj_method(sel_getUid("isSubviewCollapsed:"), function $CPSplitView__isSubviewCollapsed_(self, _cmd, subview)
{ with(self)
{
    return objj_msgSend(subview, "frame").size[_sizeComponent] < 1 ? YES : NO;
}
}), new objj_method(sel_getUid("rectOfDividerAtIndex:"), function $CPSplitView__rectOfDividerAtIndex_(self, _cmd, aDivider)
{ with(self)
{
    var frame = objj_msgSend(_subviews[aDivider], "frame"),
        rect = CGRectMakeZero();
    rect.size = objj_msgSend(self, "frame").size;
    rect.size[_sizeComponent] = objj_msgSend(self, "dividerThickness");
    rect.origin[_originComponent] = frame.origin[_originComponent] + frame.size[_sizeComponent];
    return rect;
}
}), new objj_method(sel_getUid("effectiveRectOfDividerAtIndex:"), function $CPSplitView__effectiveRectOfDividerAtIndex_(self, _cmd, aDivider)
{ with(self)
{
    var realRect = objj_msgSend(self, "rectOfDividerAtIndex:", aDivider);
    var padding = 2;
    realRect.size[_sizeComponent] += padding * 2;
    realRect.origin[_originComponent] -= padding;
    return realRect;
}
}), new objj_method(sel_getUid("drawRect:"), function $CPSplitView__drawRect_(self, _cmd, rect)
{ with(self)
{
    var count = objj_msgSend(_subviews, "count") - 1;
    while ((count--) > 0)
    {
        _drawingDivider = count;
        objj_msgSend(self, "drawDividerInRect:", objj_msgSend(self, "rectOfDividerAtIndex:", count));
    }
}
}), new objj_method(sel_getUid("drawDividerInRect:"), function $CPSplitView__drawDividerInRect_(self, _cmd, aRect)
{ with(self)
{
    if (!_DOMDividerElements[_drawingDivider])
    {
        _DOMDividerElements[_drawingDivider] = document.createElement("div");
        _DOMDividerElements[_drawingDivider].style.cursor = "move";
        _DOMDividerElements[_drawingDivider].style.position = "absolute";
        _DOMDividerElements[_drawingDivider].style.backgroundRepeat = "repeat";
        if (_DOMDividerElements[_drawingDivider].CPDOMDisplayContext) _DOMDividerElements[_drawingDivider].CPDOMDisplayContext[0] = -1; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = 6; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = _DOMElement; CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++] = _DOMDividerElements[_drawingDivider];;
        if (_isPaneSplitter)
        {
            _DOMDividerElements[_drawingDivider].style.backgroundColor = "#A5A5A5";
            _DOMDividerElements[_drawingDivider].style.backgroundImage = "";
        }
        else
        {
            _DOMDividerElements[_drawingDivider].style.backgroundColor = "";
            _DOMDividerElements[_drawingDivider].style.backgroundImage = "url('"+_dividerImagePath+"')";
        }
    }
    if (!_DOMDividerElements[_drawingDivider].CPDOMDisplayContext) _DOMDividerElements[_drawingDivider].CPDOMDisplayContext = []; var __index = _DOMDividerElements[_drawingDivider].CPDOMDisplayContext[0]; if (!(__index >= 0)) { __index = _DOMDividerElements[_drawingDivider].CPDOMDisplayContext[0] = CPDOMDisplayServerInstructionCount; CPDOMDisplayServerInstructionCount += 5; } CPDOMDisplayServerInstructions[__index] = 0; CPDOMDisplayServerInstructions[__index + 1] = _DOMDividerElements[_drawingDivider]; CPDOMDisplayServerInstructions[__index + 2] = NULL; CPDOMDisplayServerInstructions[__index + 3] = (aRect.origin.x); CPDOMDisplayServerInstructions[__index + 4] = (aRect.origin.y);;
    if (!_DOMDividerElements[_drawingDivider].CPDOMDisplayContext) _DOMDividerElements[_drawingDivider].CPDOMDisplayContext = []; var __index = _DOMDividerElements[_drawingDivider].CPDOMDisplayContext[4]; if (!(__index >= 0)) { __index = _DOMDividerElements[_drawingDivider].CPDOMDisplayContext[4] = CPDOMDisplayServerInstructionCount; CPDOMDisplayServerInstructionCount += 4; } CPDOMDisplayServerInstructions[__index] = 4; CPDOMDisplayServerInstructions[__index + 1] = _DOMDividerElements[_drawingDivider]; CPDOMDisplayServerInstructions[__index + 2] = (aRect.size.width); CPDOMDisplayServerInstructions[__index + 3] = (aRect.size.height);;
}
}), new objj_method(sel_getUid("viewWillDraw"), function $CPSplitView__viewWillDraw(self, _cmd)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize");
}
}), new objj_method(sel_getUid("_adjustSubviewsWithCalculatedSize"), function $CPSplitView___adjustSubviewsWithCalculatedSize(self, _cmd)
{ with(self)
{
    if (!_needsResizeSubviews)
        return;
    _needsResizeSubviews = NO;
    var subviews = objj_msgSend(self, "subviews"),
        count = subviews.length,
        oldSize = CGSizeMakeZero();
    if (objj_msgSend(self, "isVertical"))
    {
        oldSize.width += objj_msgSend(self, "dividerThickness") * (count - 1);
        oldSize.height = CGRectGetHeight(objj_msgSend(self, "frame"));
    }
    else
    {
        oldSize.width = CGRectGetWidth(objj_msgSend(self, "frame"));
        oldSize.height += objj_msgSend(self, "dividerThickness") * (count - 1);
    }
    while (count--)
        oldSize[_sizeComponent] += objj_msgSend(subviews[count], "frame").size[_sizeComponent];
    objj_msgSend(self, "resizeSubviewsWithOldSize:", oldSize);
}
}), new objj_method(sel_getUid("cursorAtPoint:hitDividerAtIndex:"), function $CPSplitView__cursorAtPoint_hitDividerAtIndex_(self, _cmd, aPoint, anIndex)
{ with(self)
{
    var frame = objj_msgSend(_subviews[anIndex], "frame"),
        startPosition = frame.origin[_originComponent] + frame.size[_sizeComponent],
        effectiveRect = objj_msgSend(self, "effectiveRectOfDividerAtIndex:", anIndex),
        additionalRect = null;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:")))
        effectiveRect = objj_msgSend(_delegate, "splitView:effectiveRect:forDrawnRect:ofDividerAtIndex:", self, effectiveRect, effectiveRect, anIndex);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:additionalEffectiveRectOfDividerAtIndex:")))
        additionalRect = objj_msgSend(_delegate, "splitView:additionalEffectiveRectOfDividerAtIndex:", self, anIndex);
    return CGRectContainsPoint(effectiveRect, aPoint) || (additionalRect && CGRectContainsPoint(additionalRect, aPoint));
}
}), new objj_method(sel_getUid("hitTest:"), function $CPSplitView__hitTest_(self, _cmd, aPoint)
{ with(self)
{
    if (objj_msgSend(self, "isHidden") || !objj_msgSend(self, "hitTests") || !CGRectContainsPoint(objj_msgSend(self, "frame"), aPoint))
        return nil;
    var point = objj_msgSend(self, "convertPoint:fromView:", aPoint, objj_msgSend(self, "superview"));
    var count = objj_msgSend(_subviews, "count") - 1;
    for (var i = 0; i < count; i++)
    {
        if (objj_msgSend(self, "cursorAtPoint:hitDividerAtIndex:", point, i))
            return self;
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "hitTest:", aPoint);
}
}), new objj_method(sel_getUid("trackDivider:"), function $CPSplitView__trackDivider_(self, _cmd, anEvent)
{ with(self)
{
    var type = objj_msgSend(anEvent, "type");
    if (type == CPLeftMouseUp)
    {
        if (_currentDivider != CPNotFound)
        {
            _currentDivider = CPNotFound;
            objj_msgSend(self, "_postNotificationDidResize");
        }
        return;
    }
    if (type == CPLeftMouseDown)
    {
        var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        _currentDivider = CPNotFound;
        var count = objj_msgSend(_subviews, "count") - 1;
        for (var i = 0; i < count; i++)
        {
            var frame = objj_msgSend(_subviews[i], "frame"),
                startPosition = frame.origin[_originComponent] + frame.size[_sizeComponent];
            if (objj_msgSend(self, "cursorAtPoint:hitDividerAtIndex:", point, i))
            {
                if (objj_msgSend(anEvent, "clickCount") == 2 &&
                    objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:canCollapseSubview:")) &&
                    objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:")))
                {
                    var minPosition = objj_msgSend(self, "minPossiblePositionOfDividerAtIndex:", i),
                        maxPosition = objj_msgSend(self, "maxPossiblePositionOfDividerAtIndex:", i);
                    if (objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, _subviews[i]) && objj_msgSend(_delegate, "splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:", self, _subviews[i], i))
                    {
                        if (objj_msgSend(self, "isSubviewCollapsed:", _subviews[i]))
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", (minPosition + (maxPosition - minPosition) / 2), i);
                        else
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", minPosition, i);
                    }
                    else if (objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, _subviews[i+1]) && objj_msgSend(_delegate, "splitView:shouldCollapseSubview:forDoubleClickOnDividerAtIndex:", self, _subviews[i+1], i))
                    {
                        if (objj_msgSend(self, "isSubviewCollapsed:", _subviews[i+1]))
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", (minPosition + (maxPosition - minPosition) / 2), i);
                        else
                            objj_msgSend(self, "setPosition:ofDividerAtIndex:", maxPosition, i);
                    }
                }
                else
                {
                    _currentDivider = i;
                    _initialOffset = startPosition - point[_originComponent];
                    objj_msgSend(self, "_postNotificationWillResize");
                }
            }
        }
    }
    else if (type == CPLeftMouseDragged && _currentDivider != CPNotFound)
    {
        var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        objj_msgSend(self, "setPosition:ofDividerAtIndex:", (point[_originComponent] + _initialOffset), _currentDivider);
    }
    objj_msgSend(CPApp, "setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:", self, sel_getUid("trackDivider:"), CPLeftMouseDraggedMask | CPLeftMouseUpMask, nil, nil, YES);
}
}), new objj_method(sel_getUid("mouseDown:"), function $CPSplitView__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    objj_msgSend(self, "trackDivider:", anEvent);
}
}), new objj_method(sel_getUid("maxPossiblePositionOfDividerAtIndex:"), function $CPSplitView__maxPossiblePositionOfDividerAtIndex_(self, _cmd, dividerIndex)
{ with(self)
{
    var frame = objj_msgSend(_subviews[dividerIndex + 1], "frame");
    if (dividerIndex + 1 < objj_msgSend(_subviews, "count") - 1)
        return frame.origin[_originComponent] + frame.size[_sizeComponent] - objj_msgSend(self, "dividerThickness");
    else
        return objj_msgSend(self, "frame").size[_sizeComponent] - objj_msgSend(self, "dividerThickness");
}
}), new objj_method(sel_getUid("minPossiblePositionOfDividerAtIndex:"), function $CPSplitView__minPossiblePositionOfDividerAtIndex_(self, _cmd, dividerIndex)
{ with(self)
{
    if (dividerIndex > 0)
    {
        var frame = objj_msgSend(_subviews[dividerIndex - 1], "frame");
        return frame.origin[_originComponent] + frame.size[_sizeComponent] + objj_msgSend(self, "dividerThickness");
    }
    else
        return 0;
}
}), new objj_method(sel_getUid("setPosition:ofDividerAtIndex:"), function $CPSplitView__setPosition_ofDividerAtIndex_(self, _cmd, position, dividerIndex)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize");
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:constrainSplitPosition:ofSubviewAt:")))
        position = objj_msgSend(_delegate, "splitView:constrainSplitPosition:ofSubviewAt:", self, position, dividerIndex);
    var proposedMax = objj_msgSend(self, "maxPossiblePositionOfDividerAtIndex:", dividerIndex),
        proposedMin = objj_msgSend(self, "minPossiblePositionOfDividerAtIndex:", dividerIndex),
        actualMax = proposedMax,
        actualMin = proposedMin;
    if(objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:constrainMinCoordinate:ofSubviewAt:")))
        actualMin = objj_msgSend(_delegate, "splitView:constrainMinCoordinate:ofSubviewAt:", self, proposedMin, dividerIndex);
    if(objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:constrainMaxCoordinate:ofSubviewAt:")))
        actualMax = objj_msgSend(_delegate, "splitView:constrainMaxCoordinate:ofSubviewAt:", self, proposedMax, dividerIndex);
    var frame = objj_msgSend(self, "frame"),
        viewA = _subviews[dividerIndex],
        frameA = objj_msgSend(viewA, "frame"),
        viewB = _subviews[dividerIndex + 1],
        frameB = objj_msgSend(viewB, "frame");
    var realPosition = MAX(MIN(position, actualMax), actualMin);
    if (position < proposedMin + (actualMin - proposedMin) / 2)
        if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:canCollapseSubview:")))
            if (objj_msgSend(_delegate, "splitView:canCollapseSubview:", self, viewA))
                realPosition = proposedMin;
    frameA.size[_sizeComponent] = realPosition - frameA.origin[_originComponent];
    objj_msgSend(_subviews[dividerIndex], "setFrame:", frameA);
    frameB.size[_sizeComponent] = frameB.origin[_originComponent] + frameB.size[_sizeComponent] - realPosition - objj_msgSend(self, "dividerThickness");
    frameB.origin[_originComponent] = realPosition + objj_msgSend(self, "dividerThickness");
    objj_msgSend(_subviews[dividerIndex + 1], "setFrame:", frameB);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("setFrameSize:"), function $CPSplitView__setFrameSize_(self, _cmd, aSize)
{ with(self)
{
    objj_msgSend(self, "_adjustSubviewsWithCalculatedSize");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "setFrameSize:", aSize);
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("resizeSubviewsWithOldSize:"), function $CPSplitView__resizeSubviewsWithOldSize_(self, _cmd, oldSize)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitView:resizeSubviewsWithOldSize:")))
    {
        objj_msgSend(_delegate, "splitView:resizeSubviewsWithOldSize:", self, oldSize);
        return;
    }
    objj_msgSend(self, "_postNotificationWillResize");
    var index = 0,
        count = objj_msgSend(_subviews, "count"),
        bounds = objj_msgSend(self, "bounds"),
        dividerThickness = objj_msgSend(self, "dividerThickness"),
        totalDividers = count - 1,
        totalSizableSpace = 0,
        nonSizableSpace = 0,
        lastSizableIndex = -1,
        totalSizablePanes = 0,
        isVertical = objj_msgSend(self, "isVertical");
    for (index = 0; index < count; ++index)
    {
        var view = _subviews[index],
            isSizable = isVertical ? objj_msgSend(view, "autoresizingMask") & CPViewWidthSizable : objj_msgSend(view, "autoresizingMask") & CPViewHeightSizable;
        if (isSizable)
        {
            totalSizableSpace += objj_msgSend(view, "frame").size[_sizeComponent];
            lastSizableIndex = index;
            totalSizablePanes++;
        }
    }
    if (totalSizablePanes === count)
        totalSizableSpace = 0;
    var nonSizableSpace = totalSizableSpace ? bounds.size[_sizeComponent] - totalSizableSpace : 0,
        ratio = (bounds.size[_sizeComponent] - totalDividers*dividerThickness - nonSizableSpace) / (oldSize[_sizeComponent]- totalDividers*dividerThickness - nonSizableSpace),
        remainingFlexibleSpace = bounds.size[_sizeComponent] - oldSize[_sizeComponent];
    for (index = 0; index < count; ++index)
    {
        var view = _subviews[index],
            viewFrame = CGRectMakeCopy(bounds),
            isSizable = isVertical ? objj_msgSend(view, "autoresizingMask") & CPViewWidthSizable : objj_msgSend(view, "autoresizingMask") & CPViewHeightSizable;
            if (index + 1 == count)
                viewFrame.size[_sizeComponent] = bounds.size[_sizeComponent] - viewFrame.origin[_originComponent];
            else if (totalSizableSpace && isSizable && lastSizableIndex === index)
                viewFrame.size[_sizeComponent] = MAX(0, ROUND(objj_msgSend(view, "frame").size[_sizeComponent] + remainingFlexibleSpace))
            else if (isSizable || !totalSizableSpace)
            {
                viewFrame.size[_sizeComponent] = MAX(0, ROUND(ratio * objj_msgSend(view, "frame").size[_sizeComponent]));
                remainingFlexibleSpace -= (viewFrame.size[_sizeComponent] - objj_msgSend(view, "frame").size[_sizeComponent]);
            }
            else if (totalSizableSpace && !isSizable)
                viewFrame.size[_sizeComponent] = objj_msgSend(view, "frame").size[_sizeComponent];
            else
                alert("SHOULD NEVER GET HERE");
        bounds.origin[_originComponent] += viewFrame.size[_sizeComponent] + dividerThickness;
        objj_msgSend(view, "setFrame:", viewFrame);
    }
    objj_msgSend(self, "_postNotificationDidResize");
}
}), new objj_method(sel_getUid("setDelegate:"), function $CPSplitView__setDelegate_(self, _cmd, delegate)
{ with(self)
{
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewDidResizeSubviews:")))
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", _delegate, CPSplitViewDidResizeSubviewsNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewWillResizeSubviews:")))
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", _delegate, CPSplitViewWillResizeSubviewsNotification, self);
   _delegate = delegate;
   if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewDidResizeSubviews:")))
       objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", _delegate, sel_getUid("splitViewDidResizeSubviews:"), CPSplitViewDidResizeSubviewsNotification, self);
   if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("splitViewWillResizeSubviews:")))
       objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", _delegate, sel_getUid("splitViewWillResizeSubviews:"), CPSplitViewWillResizeSubviewsNotification, self);
}
}), new objj_method(sel_getUid("_postNotificationWillResize"), function $CPSplitView___postNotificationWillResize(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPSplitViewWillResizeSubviewsNotification, self);
}
}), new objj_method(sel_getUid("_postNotificationDidResize"), function $CPSplitView___postNotificationDidResize(self, _cmd)
{ with(self)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", CPSplitViewDidResizeSubviewsNotification, self);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $CPSplitView__initialize(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(CPSplitView, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    CPSplitViewHorizontalImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSplitView/CPSplitViewHorizontal.png"), CPSizeMake(5.0, 10.0));
    CPSplitViewVerticalImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPSplitView/CPSplitViewVertical.png"), CPSizeMake(10.0, 5.0));
}
})]);
}
var CPSplitViewDelegateKey = "CPSplitViewDelegateKey",
    CPSplitViewIsVerticalKey = "CPSplitViewIsVerticalKey",
    CPSplitViewIsPaneSplitterKey = "CPSplitViewIsPaneSplitterKey";
{
var the_class = objj_getClass("CPSplitView")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPSplitView\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPSplitView__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithCoder:", aCoder);
    if (self)
    {
        _currentDivider = CPNotFound;
        _DOMDividerElements = [];
        _delegate = objj_msgSend(aCoder, "decodeObjectForKey:", CPSplitViewDelegateKey);;
        _isPaneSplitter = objj_msgSend(aCoder, "decodeBoolForKey:", CPSplitViewIsPaneSplitterKey);
        objj_msgSend(self, "_setVertical:", objj_msgSend(aCoder, "decodeBoolForKey:", CPSplitViewIsVerticalKey));
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPSplitView__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _delegate, CPSplitViewDelegateKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isVertical, CPSplitViewIsVerticalKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isPaneSplitter, CPSplitViewIsPaneSplitterKey);
}
})]);
}

p;17;CPStringDrawing.jI;21;Foundation/CPString.jc;1475;
var _1=nil,_2=nil;
var _3=objj_getClass("CPString");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPString\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("cssString"),function(_5,_6){
with(_5){
return _5;
}
}),new objj_method(sel_getUid("sizeWithFont:"),function(_7,_8,_9){
with(_7){
return objj_msgSend(_7,"sizeWithFont:inWidth:",_9,NULL);
}
}),new objj_method(sel_getUid("sizeWithFont:inWidth:"),function(_a,_b,_c,_d){
with(_a){
if(!_1){
_1=document.createElement("span");
var _e=_1.style;
_e.position="absolute";
_e.whiteSpace="pre";
_e.visibility="visible";
_e.padding="0px";
_e.margin="0px";
_e.left="-100000px";
_e.top="-100000px";
_e.zIndex="10000";
_e.background="red";
document.getElementsByTagName("body")[0].appendChild(_1);
}
if(!_c){
if(!_2){
_2=objj_msgSend(CPFont,"systemFontOfSize:",12);
}
_c=_2;
}
var _e=_1.style;
if(_d===NULL){
_e.width="";
_e.whiteSpace="pre";
}else{
_e.width=ROUND(_d)+"px";
if(document.attachEvent){
_e.wordWrap="break-word";
}else{
_e.whiteSpace="-o-pre-wrap";
_e.whiteSpace="-pre-wrap";
_e.whiteSpace="-moz-pre-wrap";
_e.whiteSpace="pre-wrap";
}
}
_e.font=objj_msgSend(_c,"cssString");
if(CPFeatureIsCompatible(CPJavascriptInnerTextFeature)){
_1.innerText=_a;
}else{
if(CPFeatureIsCompatible(CPJavascriptTextContentFeature)){
_1.textContent=_a;
}
}
return CGSizeMake(_1.clientWidth,_1.clientHeight);
return {width:0,height:0};
}
})]);
p;15;CPTableColumn.jI;23;Foundation/Foundation.jc;6974;
CPTableColumnNoResizing=0;
CPTableColumnAutoresizingMask=1;
CPTableColumnUserResizingMask=2;
var _1=objj_allocateClassPair(CPObject,"CPTableColumn"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("_headerView"),new objj_ivar("_tableView"),new objj_ivar("_width"),new objj_ivar("_minWidth"),new objj_ivar("_maxWidth"),new objj_ivar("_resizingMask"),new objj_ivar("_dataView"),new objj_ivar("_dataViewData"),new objj_ivar("_dataViewForView"),new objj_ivar("_purgableInfosForDataView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
objj_msgSend(_3,"_init");
_identifier=_5;
_width=40;
_minWidth=8;
_maxWidth=1000;
var _6=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_6,"setValue:forThemedAttributeName:inControlState:",objj_msgSend(CPColor,"whiteColor"),"text-color",CPControlStateHighlighted);
objj_msgSend(_3,"setDataView:",_6);
_headerView=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CPRectMakeZero());
objj_msgSend(_headerView,"setBackgroundColor:",objj_msgSend(CPColor,"greenColor"));
}
return _3;
}
}),new objj_method(sel_getUid("_init"),function(_7,_8){
with(_7){
_dataViewData={};
_dataViewForView={};
_purgableInfosForDataView={};
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_9,_a,_b){
with(_9){
_identifier=_b;
}
}),new objj_method(sel_getUid("identifier"),function(_c,_d){
with(_c){
return _identifier;
}
}),new objj_method(sel_getUid("setTableView:"),function(_e,_f,_10){
with(_e){
_tableView=_10;
}
}),new objj_method(sel_getUid("tableView"),function(_11,_12){
with(_11){
return _tableView;
}
}),new objj_method(sel_getUid("setWidth:"),function(_13,_14,_15){
with(_13){
_width=_15;
}
}),new objj_method(sel_getUid("width"),function(_16,_17){
with(_16){
return _width;
}
}),new objj_method(sel_getUid("setMinWidth:"),function(_18,_19,_1a){
with(_18){
if(_width<(_minWidth=_1a)){
objj_msgSend(_18,"setWidth:",_minWidth);
}
}
}),new objj_method(sel_getUid("minWidth"),function(_1b,_1c){
with(_1b){
return _minWidth;
}
}),new objj_method(sel_getUid("setMaxWidth:"),function(_1d,_1e,_1f){
with(_1d){
if(_width>(_maxmimumWidth=_1f)){
objj_msgSend(_1d,"setWidth:",_maxWidth);
}
}
}),new objj_method(sel_getUid("setResizingMask:"),function(_20,_21,_22){
with(_20){
_resizingMask=_22;
}
}),new objj_method(sel_getUid("resizingMask"),function(_23,_24){
with(_23){
return _resizingMask;
}
}),new objj_method(sel_getUid("sizeToFit"),function(_25,_26){
with(_25){
var _27=CPRectGetWidth(objj_msgSend(_headerView,"frame"));
if(_27<_minWidth){
objj_msgSend(_25,"setMinWidth:",_27);
}else{
if(_27>_maxWidth){
objj_msgSend(_25,"setMaxWidth:",_27);
}
}
if(_width!=_27){
objj_msgSend(_25,"setWidth:",_27);
}
}
}),new objj_method(sel_getUid("setEditable:"),function(_28,_29,_2a){
with(_28){
_isEditable=_2a;
}
}),new objj_method(sel_getUid("isEditable"),function(_2b,_2c){
with(_2b){
return _isEditable;
}
}),new objj_method(sel_getUid("setHeaderView:"),function(_2d,_2e,_2f){
with(_2d){
_headerView=_2f;
}
}),new objj_method(sel_getUid("headerView"),function(_30,_31){
with(_30){
return _headerView;
}
}),new objj_method(sel_getUid("setDataCell:"),function(_32,_33,_34){
with(_32){
objj_msgSend(_32,"setDataView:",_34);
}
}),new objj_method(sel_getUid("setDataView:"),function(_35,_36,_37){
with(_35){
if(_dataView){
_dataViewData[objj_msgSend(_dataView,"hash")]=nil;
}
_dataView=_37;
_dataViewData[objj_msgSend(_37,"hash")]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_37);
}
}),new objj_method(sel_getUid("dataCell"),function(_38,_39){
with(_38){
return _dataView;
}
}),new objj_method(sel_getUid("dataView"),function(_3a,_3b){
with(_3a){
return objj_msgSend(_3a,"dataCell");
}
}),new objj_method(sel_getUid("dataCellForRow:"),function(_3c,_3d,_3e){
with(_3c){
return objj_msgSend(_3c,"dataView");
}
}),new objj_method(sel_getUid("dataViewForRow:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(_3f,"dataCellForRow:",_41);
}
}),new objj_method(sel_getUid("_markView:inRow:asPurgable:"),function(_42,_43,_44,_45,_46){
with(_42){
var _47=objj_msgSend(_44,"hash"),_48=objj_msgSend(_dataViewForView[_47],"hash");
if(!_purgableInfosForDataView[_48]){
if(!_46){
return;
}
_purgableInfosForDataView[_48]={};
}
if(!_46){
delete _purgableInfosForDataView[_48][_47];
}else{
_purgableInfosForDataView[_48][_47]={view:(_44),row:(_45)};
}
}
}),new objj_method(sel_getUid("_newDataViewForRow:avoidingRows:"),function(_49,_4a,_4b,_4c){
with(_49){
var _4d=objj_msgSend(_49,"dataViewForRow:",_4b),_4e=objj_msgSend(_4d,"hash"),_4f=_purgableInfosForDataView[_4e];
if(_4f){
for(var key in _4f){
var _51=_4f[key];
if(!CPLocationInRange(((_51).row),_4c)){
delete _4f[key];
return ((_51).view);
}
}
}
if(!_dataViewData[_4e]){
_dataViewData[_4e]=objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_4d);
}
var _52=objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",_dataViewData[_4e]);
_dataViewForView[objj_msgSend(_52,"hash")]=_4d;
return _52;
}
}),new objj_method(sel_getUid("_purge"),function(_53,_54){
with(_53){
for(var _55 in _purgableInfosForDataView){
var _56=_purgableInfosForDataView[_55];
for(var key in _56){
var _58=((_56[key]).view);
objj_msgSend(_58,"removeFromSuperview");
delete _56[key];
}
}
}
})]);
var _59="CPTableColumnIdentifierKey",_5a="CPTableColumnHeaderViewKey",_5b="CPTableColumnDataViewKey",_5c="CPTableColumnWidthKey",_5d="CPTableColumnMinWidthKey",_5e="CPTableColumnMaxWidthKey",_5f="CPTableColumnResizingMaskKey";
var _1=objj_getClass("CPTableColumn");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTableColumn\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_60,_61,_62){
with(_60){
objj_msgSend(_60,"_init");
_identifier=objj_msgSend(_62,"decodeObjectForKey:",_59);
objj_msgSend(_60,"setHeaderView:",objj_msgSend(_62,"decodeObjectForKey:",_5a));
objj_msgSend(_60,"setDataView:",objj_msgSend(_62,"decodeObjectForKey:",_5b));
_width=objj_msgSend(_62,"decodeFloatForKey:",_5c);
_minWidth=objj_msgSend(_62,"decodeFloatForKey:",_5d);
_maxWidth=objj_msgSend(_62,"decodeFloatForKey:",_5e);
_resizingMask=objj_msgSend(_62,"decodeBoolForKey:",_5f);
return _60;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_63,_64,_65){
with(_63){
objj_msgSend(_65,"encodeObject:forKey:",_identifier,_59);
objj_msgSend(_65,"encodeObject:forKey:",_headerView,_5a);
objj_msgSend(_65,"encodeObject:forKey:",_dataView,_5b);
objj_msgSend(_65,"encodeObject:forKey:",_width,_5c);
objj_msgSend(_65,"encodeObject:forKey:",_minWidth,_5d);
objj_msgSend(_65,"encodeObject:forKey:",_maxWidth,_5e);
objj_msgSend(_65,"encodeObject:forKey:",_resizingMask,_5f);
}
})]);
p;13;CPTableView.ji;11;CPControl.ji;15;CPTableColumn.ji;9;CPColor.ji;13;CPTextField.jc;27185;
CPTableViewColumnDidMoveNotification="CPTableViewColumnDidMoveNotification";
CPTableViewColumnDidResizeNotification="CPTableViewColumnDidResizeNotification";
CPTableViewSelectionDidChangeNotification="CPTableViewSelectionDidChangeNotification";
CPTableViewSelectionIsChangingNotification="CPTableViewSelectionIsChangingNotification";
var _1=1<<0,_2=1<<1,_3=1<<2,_4=1<<3,_5=1<<4,_6=1<<5,_7=1<<6;
var _8=objj_allocateClassPair(CPControl,"CPTableView"),_9=_8.isa;
class_addIvars(_8,[new objj_ivar("_dataSource"),new objj_ivar("_delegate"),new objj_ivar("_tableColumns"),new objj_ivar("_selectedRowIndexes"),new objj_ivar("_rowHeight"),new objj_ivar("_intercellSpacing"),new objj_ivar("_allowsMultipleSelection"),new objj_ivar("_allowsEmptySelection"),new objj_ivar("_delegateSelectorsCache"),new objj_ivar("_numberOfRows"),new objj_ivar("_numberOfColumns"),new objj_ivar("_hasVariableHeightRows"),new objj_ivar("_columnHeight"),new objj_ivar("_rowHeights"),new objj_ivar("_rowMinYs"),new objj_ivar("_tableCells"),new objj_ivar("_tableColumnViews"),new objj_ivar("_dataViewCache"),new objj_ivar("_objectValueCache"),new objj_ivar("_visibleRows"),new objj_ivar("_visibleColumns"),new objj_ivar("_populatedRows"),new objj_ivar("_populatedColumns"),new objj_ivar("_previousSelectedRowIndexes"),new objj_ivar("_selectionStartRow"),new objj_ivar("_selectionModifier"),new objj_ivar("_currentlySelected"),new objj_ivar("_selectionViews"),new objj_ivar("_selectionViewsPool")]);
objj_registerClassPair(_8);
objj_addClassForBundle(_8,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_8,[new objj_method(sel_getUid("initWithFrame:"),function(_a,_b,_c){
with(_a){
_a=objj_msgSendSuper({receiver:_a,super_class:objj_getClass("CPControl")},"initWithFrame:",_c);
if(_a){
objj_msgSend(_a,"_init");
}
return _a;
}
}),new objj_method(sel_getUid("_init"),function(_d,_e){
with(_d){
_tableColumns=[];
_numberOfColumns=0;
_selectedRowIndexes=objj_msgSend(CPIndexSet,"indexSet");
_rowHeight=17;
_intercellSpacing=CPSizeMake(3,2);
_allowsMultipleSelection=YES;
_allowsEmptySelection=YES;
_tableCells=[];
_tableColumnViews=[];
_dataViewCache={};
_objectValueCache=[];
_visibleRows=CPMakeRange(0,0);
_visibleColumns=CPMakeRange(0,0);
_rowHeights=[];
_rowMinYs=[];
}
}),new objj_method(sel_getUid("_columnHeight"),function(_f,_10){
with(_f){
return _columnHeight;
}
}),new objj_method(sel_getUid("newCellForRow:column:avoidingRows:"),function(_11,_12,_13,_14,_15){
with(_11){
var _16=objj_msgSend(_tableColumns[_14],"_newDataViewForRow:avoidingRows:",_13,_15);
objj_msgSend(_16,"setFrame:",CGRectMake(0,(_hasVariableHeightRows?_rowMinYs[_13]:(_13*(_rowHeight+_intercellSpacing.height))),objj_msgSend(_tableColumns[_14],"width"),(_hasVariableHeightRows?_rowHeights[_13]:_rowHeight)));
if(objj_msgSend(_16,"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_16,"highlight:",objj_msgSend(_selectedRowIndexes,"containsIndex:",_13));
}
if(!_objectValueCache[_14]){
_objectValueCache[_14]=[];
}
if(_objectValueCache[_14][_13]===undefined){
_objectValueCache[_14][_13]=objj_msgSend(_dataSource,"tableView:objectValueForTableColumn:row:",_11,_tableColumns[_14],_13);
}
objj_msgSend(_16,"setObjectValue:",_objectValueCache[_14][_13]);
return _16;
}
}),new objj_method(sel_getUid("clearCells"),function(_17,_18){
with(_17){
var _19=CPMaxRange(_visibleColumns),_1a=CPMaxRange(_visibleRows);
for(var _1b=_visibleColumns.location;_1b<_19;_1b++){
var _1c=_tableColumns[_1b],_1d=_tableCells[_1b];
for(var row=_visibleRows.location;row<_1a;row++){
var _1f=_1d[row];
if(_1f){
_1d[row]=nil;
objj_msgSend(_1c,"_markView:inRow:asPurgable:",_1f,row,YES);
}else{
CPLog.warn("Missing cell? "+row+","+_1b);
}
}
}
_visibleColumns=CPMakeRange(0,0);
_visibleRows=CPMakeRange(0,0);
}
}),new objj_method(sel_getUid("loadTableCellsInRect:"),function(_20,_21,_22){
with(_20){
if(!_dataSource){
return;
}
var _23=MAX(0,objj_msgSend(_20,"_rowAtY:",CGRectGetMinY(_22))-1),_24=MIN(_numberOfRows,objj_msgSend(_20,"_rowAtY:",CGRectGetMaxY(_22))+1),_25=CPMakeRange(_23,_24-_23),_26=MAX(0,objj_msgSend(_20,"_columnAtX:",CGRectGetMinX(_22))),_27=MIN(_numberOfColumns,objj_msgSend(_20,"_columnAtX:",CGRectGetMaxX(_22))+1),_28=CPMakeRange(_26,_27-_26);
if(CPEqualRanges(_visibleRows,_25)&&CPEqualRanges(_visibleColumns,_28)){
return;
}
var _29=CPUnionRange(_visibleRows,_25),_2a=CPUnionRange(_visibleColumns,_28);
var _2b=_2a.location,_27=CPMaxRange(_2a),_23=_29.location,_24=CPMaxRange(_29);
for(;_2b<_27;++_2b){
var row=_23,_2d=_tableColumns[_2b],_2e=_tableCells[_2b],_2f=CPLocationInRange(_2b,_28);
for(;row<_24;++row){
var _30=_2e[row];
if(_30){
if(_2f&&CPLocationInRange(row,_25)){
objj_msgSend(_2d,"_markView:inRow:asPurgable:",_30,row,NO);
}else{
_2e[row]=nil;
objj_msgSend(_2d,"_markView:inRow:asPurgable:",_30,row,YES);
}
}else{
_2e[row]=objj_msgSend(_20,"newCellForRow:column:avoidingRows:",row,_2b,_25);
objj_msgSend(_tableColumnViews[_2b],"addSubview:",_2e[row]);
}
}
objj_msgSend(_2d,"_purge");
}
_visibleRows=_25;
_visibleColumns=_28;
}
}),new objj_method(sel_getUid("setIntercellSpacing:"),function(_31,_32,_33){
with(_31){
if(_intercellSpacing.width!=_33.width){
var i=1,_35=_33.width-_intercellSpacing.width;
total=_35;
for(;i<_numberOfColumns;++i,total+=_35){
var _36=objj_msgSend(_tableColumnViews[i],"frame").origin;
objj_msgSend(_tableColumnViews[i],"setFrameOrigin:",CGPointMake(_36.x+total,_36.y));
}
}
if(_intercellSpacing.height!=_33.height){
var i=0;
for(;i<_numberOfColumns;++i,total+=_35){
objj_msgSend(_tableColumnViews[i],"setFrameSize:",CGSizeMake(objj_msgSend(_tableColumnViews[i],"width"),_numberOfRows*(_rowHeight+_intercellSpacing.height)));
var j=1,y=_rowHeight+_intercellSpacing.height;
for(;j<_numberOfRows;++i,y+=_rowHeight+_intercellSpacing.height){
if(!_tableCells[i][j]){
continue;
}
objj_msgSend(_tableCells[i][j],"setFrameOrigin:",CPPointMake(0,y));
}
}
}
_intercellSpacing=CPSizeCreateCopy(_33);
}
}),new objj_method(sel_getUid("intercellSpacing"),function(_39,_3a){
with(_39){
return _intercellSpacing;
}
}),new objj_method(sel_getUid("setRowHeight:"),function(_3b,_3c,_3d){
with(_3b){
if(_rowHeight==_3d){
return;
}
_rowHeight=_3d;
if(_hasVariableHeightRows){
return;
}
for(var row=0;row<_numberOfRows;++row){
for(var _3f=0;_3f<_numberOfColumns;++_3f){
objj_msgSend(_tableCells[_3f][row],"setFrameOrigin:",CPPointMake(0,row*(_rowHeight+_intercellSpacing.height)));
}
}
}
}),new objj_method(sel_getUid("rowHeight"),function(_40,_41){
with(_40){
return _rowHeight;
}
}),new objj_method(sel_getUid("addTableColumn:"),function(_42,_43,_44){
with(_42){
var i=0,x=_numberOfColumns?CPRectGetMaxX(objj_msgSend(_42,"rectOfColumn:",_numberOfColumns-1))+_intercellSpacing.width:0,_47=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CPRectMake(x,0,objj_msgSend(_44,"width"),objj_msgSend(_42,"_columnHeight"))),_48=[];
objj_msgSend(_tableColumns,"addObject:",_44);
objj_msgSend(_tableColumnViews,"addObject:",_47);
objj_msgSend(_42,"addSubview:",_47);
objj_msgSend(_tableCells,"addObject:",_48);
for(;i<_numberOfRows;++i){
_tableCells[_numberOfColumns][i]=nil;
}
++_numberOfColumns;
}
}),new objj_method(sel_getUid("removeTableColumn:"),function(_49,_4a,_4b){
with(_49){
var _4c=objj_msgSend(_49,"frame"),_4d=objj_msgSend(_4b,"width")+_intercellSpacing.width,_4e=objj_msgSend(_tableColumns,"indexOfObjectIdenticalTo:",_4b);
objj_msgSend(_tableColumnViews[i],"removeFromSuperview");
objj_msgSend(_tableCells,"removeObjectAtIndex:",_4e);
objj_msgSend(_tableColumns,"removeObjectAtIndex:",_4e);
objj_msgSend(_tabelColumnViews,"removeObjectAtIndex:",_4e);
for(;_4e<_numberOfColumns;++_4e){
objj_msgSend(_tableColumnViews[_4e],"setFrameOrigin:",CPPointMake(CPRectGetMinX(objj_msgSend(_tableColumnViews[_4e],"frame"))-_4d,0));
}
objj_msgSend(_49,"setFrameSize:",CPSizeMake(CPRectGetWidth(_4c)-_4d,CPRectGetHeight(_4c)));
}
}),new objj_method(sel_getUid("moveColumn:toColumn:"),function(_4f,_50,_51,_52){
with(_4f){
if(_51==_52){
return;
}
}
}),new objj_method(sel_getUid("tableColumns"),function(_53,_54){
with(_53){
return _tableColumns;
}
}),new objj_method(sel_getUid("tableColumnWithIdentifier:"),function(_55,_56,_57){
with(_55){
for(var i=0;i<_tableColumns.length;i++){
if(objj_msgSend(_tableColumns[i],"isEqual:",_57)){
return _tableColumns[i];
}
}
return nil;
}
}),new objj_method(sel_getUid("numberOfColumns"),function(_59,_5a){
with(_59){
return _numberOfColumns;
}
}),new objj_method(sel_getUid("numberOfRows"),function(_5b,_5c){
with(_5b){
return _numberOfRows;
}
}),new objj_method(sel_getUid("tile"),function(_5d,_5e){
with(_5d){
var _5f=10;
}
}),new objj_method(sel_getUid("setDataSource:"),function(_60,_61,_62){
with(_60){
if(!objj_msgSend(_62,"respondsToSelector:",sel_getUid("numberOfRowsInTableView:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source doesn't support 'numberOfRowsInTableView:'");
}
if(!objj_msgSend(_62,"respondsToSelector:",sel_getUid("tableView:objectValueForTableColumn:row:"))){
objj_msgSend(CPException,"raise:reason:",CPInternalInconsistencyException,"Data source doesn't support 'tableView:objectValueForTableColumn:row:'");
}
_dataSource=_62;
objj_msgSend(_60,"reloadData");
}
}),new objj_method(sel_getUid("dataSource"),function(_63,_64){
with(_63){
return _dataSource;
}
}),new objj_method(sel_getUid("delegate"),function(_65,_66){
with(_65){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_67,_68,_69){
with(_67){
if(_delegate===_69){
return;
}
var _6a=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidMove:"))){
objj_msgSend(_6a,"removeObserver:name:object:",_delegate,CPTableViewColumnDidMoveNotification,_67);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidResize:"))){
objj_msgSend(_6a,"removeObserver:name:object:",_delegate,CPTableViewColumnDidResizeNotification,_67);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionDidChange:"))){
objj_msgSend(_6a,"removeObserver:name:object:",_delegate,CPTableViewSelectionDidChangeNotification,_67);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionIsChanging:"))){
objj_msgSend(_6a,"removeObserver:name:object:",_delegate,CPTableViewSelectionIsChangingNotification,_67);
}
_delegate=_69;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidMove:"))){
objj_msgSend(_6a,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewColumnDidMove:"),CPTableViewColumnDidMoveNotification,_67);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewColumnDidResize:"))){
objj_msgSend(_6a,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewColumnDidResize:"),CPTableViewColumnDidResizeNotification,_67);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionDidChange:"))){
objj_msgSend(_6a,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewSelectionDidChange:"),CPTableViewSelectionDidChangeNotification,_67);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableViewSelectionIsChanging:"))){
objj_msgSend(_6a,"addObserver:selector:name:object:",_delegate,sel_getUid("tableViewSelectionIsChanging:"),CPTableViewSelectionIsChangingNotification,_67);
}
_delegateSelectorsCache=0;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:willDisplayCell:forTableColumn:row:"))){
_delegateSelectorsCache|=_1;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldSelectRow:"))){
_delegateSelectorsCache|=_2;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldSelectTableColumn:"))){
_delegateSelectorsCache|=_3;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("selectionShouldChangeInTableView:"))){
_delegateSelectorsCache|=_4;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:shouldEditTableColumn:row:"))){
_delegateSelectorsCache|=_5;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:selectionIndexesForProposedSelection:"))){
_delegateSelectorsCache|=_6;
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("tableView:heightOfRow:"))){
_delegateSelectorsCache|=_7;
_hasVariableHeightRows=YES;
}else{
_hasVariableHeightRows=NO;
}
}
}),new objj_method(sel_getUid("noteNumberOfRowsChanged"),function(_6b,_6c){
with(_6b){
var _6d=objj_msgSend(_dataSource,"numberOfRowsInTableView:",_6b);
if(_numberOfRows!=_6d){
_numberOfRows=_6d;
objj_msgSend(_6b,"_recalculateColumnHeight");
}
}
}),new objj_method(sel_getUid("noteHeightOfRowsWithIndexesChanged:"),function(_6e,_6f,_70){
with(_6e){
objj_msgSend(_6e,"_recalculateColumnHeight");
}
}),new objj_method(sel_getUid("rectOfRow:"),function(_71,_72,_73){
with(_71){
return CPRectMake(0,(_hasVariableHeightRows?_rowMinYs[_73]:(_73*(_rowHeight+_intercellSpacing.height))),CPRectGetWidth(objj_msgSend(_71,"bounds")),(_hasVariableHeightRows?_rowHeights[_73]:_rowHeight));
}
}),new objj_method(sel_getUid("rectOfColumn:"),function(_74,_75,_76){
with(_74){
return objj_msgSend(_tableColumnViews[_76],"frame");
}
}),new objj_method(sel_getUid("sizeToFit"),function(_77,_78){
with(_77){
}
}),new objj_method(sel_getUid("_recalculateColumnHeight"),function(_79,_7a){
with(_79){
var _7b=_columnHeight;
if(_hasVariableHeightRows){
_rowMinYs[0]=0;
for(var row=0;row<_numberOfRows;row++){
_rowHeights[row]=objj_msgSend(_delegate,"tableView:heightOfRow:",_79,row);
_rowMinYs[row+1]=_rowMinYs[row]+_rowHeights[row]+_intercellSpacing.height;
}
_columnHeight=_rowMinYs[_numberOfRows];
}else{
_columnHeight=_numberOfRows*(_rowHeight+_intercellSpacing.height);
}
var _7d=_tableColumnViews.length;
while(_7d--){
objj_msgSend(_tableColumnViews[_7d],"setFrameSize:",CGSizeMake(objj_msgSend(_tableColumns[_7d],"width"),_columnHeight));
}
objj_msgSend(_79,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_79,"frame")),_columnHeight));
}
}),new objj_method(sel_getUid("visibleRectInParent"),function(_7e,_7f){
with(_7e){
var _80=objj_msgSend(_7e,"superview");
if(!_80){
return objj_msgSend(_7e,"bounds");
}
return objj_msgSend(_7e,"convertRect:fromView:",CGRectIntersection(objj_msgSend(_80,"bounds"),objj_msgSend(_7e,"frame")),_80);
}
}),new objj_method(sel_getUid("reloadData"),function(_81,_82){
with(_81){
var _83=_numberOfRows;
_numberOfRows=objj_msgSend(_dataSource,"numberOfRowsInTableView:",_81);
if(_83!=_numberOfRows){
objj_msgSend(_81,"_recalculateColumnHeight");
objj_msgSend(_81,"setFrameSize:",CGSizeMake(CGRectGetWidth(objj_msgSend(_81,"frame")),objj_msgSend(_81,"_columnHeight")));
}
_objectValueCache=[];
objj_msgSend(_81,"clearCells");
objj_msgSend(_81,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("viewWillDraw"),function(_84,_85){
with(_84){
objj_msgSend(_84,"loadTableCellsInRect:",objj_msgSend(_84,"visibleRectInParent"));
}
}),new objj_method(sel_getUid("drawRect:"),function(_86,_87,_88){
with(_86){
}
}),new objj_method(sel_getUid("displaySoon"),function(_89,_8a){
with(_89){
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_8b,_8c){
with(_8b){
objj_msgSend(objj_msgSend(objj_msgSend(_8b,"enclosingScrollView"),"contentView"),"setPostsBoundsChangedNotifications:",YES);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_8b,sel_getUid("viewBoundsChanged:"),CPViewBoundsDidChangeNotification,objj_msgSend(objj_msgSend(_8b,"enclosingScrollView"),"contentView"));
}
}),new objj_method(sel_getUid("viewBoundsChanged:"),function(_8d,_8e,_8f){
with(_8d){
objj_msgSend(_8d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("setAllowsMultipleSelection:"),function(_90,_91,_92){
with(_90){
if(_allowsMultipleSelection===_92){
return;
}
_allowsMultipleSelection=_92;
}
}),new objj_method(sel_getUid("allowsMultipleSelection"),function(_93,_94){
with(_93){
return _allowsMultipleSelection;
}
}),new objj_method(sel_getUid("setAllowsEmptySelection:"),function(_95,_96,_97){
with(_95){
if(_allowsEmptySelection===_97){
return;
}
_allowsEmptySelection=_97;
}
}),new objj_method(sel_getUid("allowsEmptySelection"),function(_98,_99){
with(_98){
return _allowsEmptySelection;
}
}),new objj_method(sel_getUid("rowAtPoint:"),function(_9a,_9b,_9c){
with(_9a){
var _9d=objj_msgSend(_9a,"_rowAtY:",_9c.y);
if(_9d>=0&&_9d<_numberOfRows){
return _9d;
}else{
return CPNotFound;
}
}
}),new objj_method(sel_getUid("columnAtPoint:"),function(_9e,_9f,_a0){
with(_9e){
var _a1=objj_msgSend(_9e,"_columnAtX:",_a0.x);
if(_a1>=0&&_a1<_numberOfColumns){
return _a1;
}else{
return CPNotFound;
}
}
}),new objj_method(sel_getUid("_rowAtY:"),function(_a2,_a3,y){
with(_a2){
if(_hasVariableHeightRows){
var a=0,b=_numberOfRows;
if(y<_rowMinYs[0]){
return -1;
}
if(y>=_rowMinYs[_rowMinYs.length-1]){
return _numberOfRows;
}
while(true){
var _a7=a+Math.floor((b-a)/2);
if(_a7===_numberOfRows-1){
return _numberOfRows-1;
}
if(y>=_rowMinYs[_a7+1]){
a=_a7;
}else{
if(y<_rowMinYs[_a7]){
b=_a7;
}else{
return _a7;
}
}
}
}else{
return FLOOR(y/(_rowHeight+_intercellSpacing.height));
}
}
}),new objj_method(sel_getUid("_columnAtX:"),function(_a8,_a9,y){
with(_a8){
var a=0,b=_numberOfColumns;
var _ad=objj_msgSend(_tableColumnViews[_numberOfColumns-1],"frame");
if(y<objj_msgSend(_tableColumnViews[0],"frame").origin.x){
return -1;
}
if(y>=_ad.origin.x+_ad.size.width){
return _numberOfColumns;
}
while(true){
var _ae=a+Math.floor((b-a)/2);
if(_ae===_numberOfColumns-1){
return _numberOfColumns-1;
}
if(y>=objj_msgSend(_tableColumnViews[_ae+1],"frame").origin.x){
a=_ae;
}else{
if(y<objj_msgSend(_tableColumnViews[_ae],"frame").origin.x){
b=_ae;
}else{
return _ae;
}
}
}
}
}),new objj_method(sel_getUid("selectRowIndexes:byExtendingSelection:"),function(_af,_b0,_b1,_b2){
with(_af){
if(_b2){
_selectedRowIndexes=objj_msgSend(objj_msgSend(_selectedRowIndexes,"copy"),"addIndexes:",_b1);
}else{
if(objj_msgSend(_b1,"count")>0||_allowsEmptySelection){
_selectedRowIndexes=objj_msgSend(_b1,"copy");
}
}
objj_msgSend(_af,"_drawSelection");
}
}),new objj_method(sel_getUid("selectedRowIndexes"),function(_b3,_b4){
with(_b3){
return _selectedRowIndexes;
}
}),new objj_method(sel_getUid("numberOfSelectedRows"),function(_b5,_b6){
with(_b5){
return objj_msgSend(_selectedRowIndexes,"count");
}
}),new objj_method(sel_getUid("deselectAll:"),function(_b7,_b8,_b9){
with(_b7){
if(!_allowsEmptySelection||objj_msgSend(_selectedRowIndexes,"count")===0||((_delegateSelectorsCache&_4)&&!objj_msgSend(_delegate,"selectionShouldChangeInTableView:",_b7))){
return;
}
objj_msgSend(_b7,"selectRowIndexes:byExtendingSelection:",objj_msgSend(CPIndexSet,"indexSet"),NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionDidChangeNotification,_b7,nil);
}
}),new objj_method(sel_getUid("editColumn:row:withEvent:select:"),function(_ba,_bb,_bc,_bd,_be,_bf){
with(_ba){
}
}),new objj_method(sel_getUid("_updateSelectionWithMouseAtRow:"),function(_c0,_c1,_c2){
with(_c0){
var _c3;
if(_allowsMultipleSelection){
_c3=objj_msgSend(CPIndexSet,"indexSetWithIndexesInRange:",CPMakeRange(MIN(_c2,_selectionStartRow),ABS(_c2-_selectionStartRow)+1));
}else{
if(_c2>=0&&_c2<_numberOfRows){
_c3=objj_msgSend(CPIndexSet,"indexSetWithIndex:",_c2);
}else{
_c3=objj_msgSend(CPIndexSet,"indexSet");
}
}
if(_allowsMultipleSelection&&_selectionModifier&(CPCommandKeyMask|CPControlKeyMask|CPAlternateKeyMask)){
var _c4=objj_msgSend(_c3,"copy"),_c5=objj_msgSend(_c3,"copy");
objj_msgSend(_c5,"removeIndexes:",_previousSelectedRowIndexes);
objj_msgSend(_c4,"removeIndexes:",_c5);
objj_msgSend(_c3,"addIndexes:",_previousSelectedRowIndexes);
objj_msgSend(_c3,"removeIndexes:",_c4);
}
if(!objj_msgSend(_c3,"isEqualToIndexSet:",_selectedRowIndexes)){
if((_delegateSelectorsCache&_4)&&!objj_msgSend(_delegate,"selectionShouldChangeInTableView:",_c0)){
return;
}
if(_delegateSelectorsCache&_6){
_c3=objj_msgSend(_delegate,"tableView:selectionIndexesForProposedSelection:",_c0,_c3);
}else{
if(_delegateSelectorsCache&_2){
var _c6=[];
objj_msgSend(_c3,"getIndexes:maxCount:inIndexRange:",_c6,Number.MAX_VALUE,nil);
for(var i=0;i<_c6.length;i++){
if(!objj_msgSend(_delegate,"tableView:shouldSelectRow:",_c0,_c6[i])){
objj_msgSend(_c3,"removeIndex:",_c6[i]);
}
}
}
}
}
if(!_allowsEmptySelection&&objj_msgSend(_c3,"count")===0){
return;
}
if(!objj_msgSend(_c3,"isEqualToIndexSet:",_selectedRowIndexes)){
objj_msgSend(_c0,"selectRowIndexes:byExtendingSelection:",_c3,NO);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionIsChangingNotification,_c0,nil);
}
}
}),new objj_method(sel_getUid("mouseDown:"),function(_c8,_c9,_ca){
with(_c8){
objj_msgSend(_c8,"trackSelection:",_ca);
}
}),new objj_method(sel_getUid("setDoubleAction:"),function(_cb,_cc,_cd){
with(_cb){
_doubleAction=_cd;
}
}),new objj_method(sel_getUid("doubleAction"),function(_ce,_cf){
with(_ce){
return _doubleAction;
}
}),new objj_method(sel_getUid("clickedColumn"),function(_d0,_d1){
with(_d0){
return _clickedColumn;
}
}),new objj_method(sel_getUid("clickedRow"),function(_d2,_d3){
with(_d2){
return _clickedRow;
}
}),new objj_method(sel_getUid("trackSelection:"),function(_d4,_d5,_d6){
with(_d4){
var _d7=objj_msgSend(_d6,"type"),_d8=objj_msgSend(_d4,"convertPoint:fromView:",objj_msgSend(_d6,"locationInWindow"),nil),_d9=MAX(0,MIN(_numberOfRows-1,objj_msgSend(_d4,"_rowAtY:",_d8.y)));
if(_d7==CPLeftMouseUp){
_clickedRow=objj_msgSend(_d4,"rowAtPoint:",_d8);
_clickedColumn=objj_msgSend(_d4,"columnAtPoint:",_d8);
if(objj_msgSend(_d6,"clickCount")===2){
CPLog.warn("edit?!");
objj_msgSend(_d4,"sendAction:to:",_doubleAction,_target);
}else{
if(!objj_msgSend(_previousSelectedRowIndexes,"isEqualToIndexSet:",_selectedRowIndexes)){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",CPTableViewSelectionDidChangeNotification,_d4,nil);
}
objj_msgSend(_d4,"sendAction:to:",_action,_target);
}
return;
}
if(_d7==CPLeftMouseDown){
_previousSelectedRowIndexes=_selectedRowIndexes;
_selectionModifier=objj_msgSend(_d6,"modifierFlags");
if(_selectionModifier&CPShiftKeyMask){
_selectionStartRow=(ABS(objj_msgSend(_previousSelectedRowIndexes,"firstIndex")-_d9)<ABS(objj_msgSend(_previousSelectedRowIndexes,"lastIndex")-_d9))?objj_msgSend(_previousSelectedRowIndexes,"firstIndex"):objj_msgSend(_previousSelectedRowIndexes,"lastIndex");
}else{
_selectionStartRow=_d9;
}
objj_msgSend(_d4,"_updateSelectionWithMouseAtRow:",_d9);
}else{
if(_d7==CPLeftMouseDragged){
objj_msgSend(_d4,"_updateSelectionWithMouseAtRow:",_d9);
}
}
objj_msgSend(CPApp,"setTarget:selector:forNextEventMatchingMask:untilDate:inMode:dequeue:",_d4,sel_getUid("trackSelection:"),CPLeftMouseDraggedMask|CPLeftMouseUpMask,nil,nil,YES);
}
}),new objj_method(sel_getUid("_drawSelection"),function(_da,_db){
with(_da){
if(!_currentlySelected){
_currentlySelected=objj_msgSend(CPIndexSet,"indexSet");
_selectionViews=[];
_selectionViewsPool=[];
}
var _dc=objj_msgSend(_currentlySelected,"copy"),_dd=[];
objj_msgSend(_dc,"removeIndexes:",_selectedRowIndexes);
objj_msgSend(_dc,"getIndexes:maxCount:inIndexRange:",_dd,Number.MAX_VALUE,nil);
var _de=objj_msgSend(_selectedRowIndexes,"copy"),_df=[];
objj_msgSend(_de,"removeIndexes:",_currentlySelected);
objj_msgSend(_de,"getIndexes:maxCount:inIndexRange:",_df,Number.MAX_VALUE,nil);
for(var i=0;i<_dd.length;i++){
var row=_dd[i];
for(var _e2=0;_e2<_numberOfColumns;_e2++){
if(objj_msgSend(_tableCells[_e2][row],"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_tableCells[_e2][row],"highlight:",NO);
}
}
}
for(var i=0;i<_df.length;i++){
var row=_df[i];
for(var _e2=0;_e2<_numberOfColumns;_e2++){
if(objj_msgSend(_tableCells[_e2][row],"respondsToSelector:",sel_getUid("highlight:"))){
objj_msgSend(_tableCells[_e2][row],"highlight:",YES);
}
}
}
for(var i=0;i<_df.length;i++){
var _e3=_df[i],_e4;
if(_dd.length>0){
_e4=_selectionViews[_dd.pop()];
}else{
if(_selectionViewsPool.length>0){
_e4=_selectionViewsPool.pop();
objj_msgSend(_da,"addSubview:positioned:relativeTo:",_e4,CPWindowBelow,nil);
}else{
_e4=objj_msgSend(objj_msgSend(CPView,"alloc"),"init");
objj_msgSend(_e4,"setBackgroundColor:",objj_msgSend(CPColor,"alternateSelectedControlColor"));
objj_msgSend(_da,"addSubview:positioned:relativeTo:",_e4,CPWindowBelow,nil);
}
}
_selectionViews[_e3]=_e4;
var _e5=objj_msgSend(_da,"rectOfRow:",_e3);
_e5.size.height+=_intercellSpacing.height-1;
objj_msgSend(_e4,"setFrame:",_e5);
}
for(var i=0;i<_dd.length;i++){
var row=_dd[i],_e4=_selectionViews[row];
objj_msgSend(_e4,"removeFromSuperview");
_selectionViewsPool.push(_e4);
}
_currentlySelected=objj_msgSend(_selectedRowIndexes,"copy");
}
})]);
class_addMethods(_9,[new objj_method(sel_getUid("initialize"),function(_e6,_e7){
with(_e6){
}
})]);
var _e8="CPTableViewDataSourceKey",_e9="CPTableViewDelegateKey",_ea="CPTableViewHeaderViewKey",_eb="CPTableViewTableColumnsKey",_ec="CPTableViewRowHeightKey",_ed="CPTableViewIntercellSpacingKey",_ee="CPTableViewMultipleSelectionKey",_ef="CPTableViewEmptySelectionKey";
var _8=objj_getClass("CPTableView");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTableView\""));
}
var _9=_8.isa;
class_addMethods(_8,[new objj_method(sel_getUid("initWithCoder:"),function(_f0,_f1,_f2){
with(_f0){
if(_f0=objj_msgSendSuper({receiver:_f0,super_class:objj_getClass("CPControl")},"initWithCoder:",_f2)){
objj_msgSend(_f0,"_init");
_dataSource=objj_msgSend(_f2,"decodeObjectForKey:",_e8);
_delegate=objj_msgSend(_f2,"decodeObjectForKey:",_e9);
_rowHeight=objj_msgSend(_f2,"decodeFloatForKey:",_ec);
_intercellSpacing=objj_msgSend(_f2,"decodeSizeForKey:",_ed);
_allowsMultipleSelection=objj_msgSend(_f2,"decodeBoolForKey:",_ee);
_allowsEmptySelection=objj_msgSend(_f2,"decodeBoolForKey:",_ef);
var _f3=objj_msgSend(_f2,"decodeObjectForKey:",_eb);
for(var i=0;i<_f3.length;i++){
objj_msgSend(_f0,"addTableColumn:",_f3[i]);
}
}
return _f0;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_f5,_f6,_f7){
with(_f5){
objj_msgSendSuper({receiver:_f5,super_class:objj_getClass("CPControl")},"encodeWithCoder:",_f7);
objj_msgSend(_f7,"encodeObject:forKey:",_dataSource,_e8);
objj_msgSend(_f7,"encodeObject:forKey:",_delegate,_e9);
objj_msgSend(_f7,"encodeObject:forKey:",_tableColumns,_eb);
objj_msgSend(_f7,"encodeFloat:forKey:",_rowHeight,_ec);
objj_msgSend(_f7,"encodeSize:forKey:",_intercellSpacing,_ed);
objj_msgSend(_f7,"encodeBool:forKey:",_allowsMultipleSelection,_ee);
objj_msgSend(_f7,"encodeBool:forKey:",_allowsEmptySelection,_ef);
}
})]);
var _8=objj_getClass("CPColor");
if(!_8){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPColor\""));
}
var _9=_8.isa;
class_addMethods(_9,[new objj_method(sel_getUid("alternateSelectedControlColor"),function(_f8,_f9){
with(_f8){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.22,0.46,0.84,1]);
}
}),new objj_method(sel_getUid("secondarySelectedControlColor"),function(_fa,_fb){
with(_fa){
return objj_msgSend(objj_msgSend(CPColor,"alloc"),"_initWithRGBA:",[0.83,0.83,0.83,1]);
}
})]);
p;11;CPTabView.ji;13;CPImageView.ji;15;CPTabViewItem.ji;8;CPView.jc;24558;
CPTopTabsBezelBorder = 0;
CPNoTabsBezelBorder = 4;
CPNoTabsLineBorder = 5;
CPNoTabsNoBorder = 6;
var CPTabViewBezelBorderLeftImage = nil,
    CPTabViewBackgroundCenterImage = nil,
    CPTabViewBezelBorderRightImage = nil,
    CPTabViewBezelBorderColor = nil,
    CPTabViewBezelBorderBackgroundColor = nil;
var LEFT_INSET = 7.0,
    RIGHT_INSET = 7.0;
var CPTabViewDidSelectTabViewItemSelector = 1,
    CPTabViewShouldSelectTabViewItemSelector = 2,
    CPTabViewWillSelectTabViewItemSelector = 4,
    CPTabViewDidChangeNumberOfTabViewItemsSelector = 8;
{var the_class = objj_allocateClassPair(CPView, "CPTabView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_labelsView"), new objj_ivar("_backgroundView"), new objj_ivar("_separatorView"), new objj_ivar("_auxiliaryView"), new objj_ivar("_contentView"), new objj_ivar("_tabViewItems"), new objj_ivar("_selectedTabViewItem"), new objj_ivar("_tabViewType"), new objj_ivar("_delegate"), new objj_ivar("_delegateSelectors")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        _tabViewType = CPTopTabsBezelBorder;
        _tabViewItems = [];
    }
    return self;
}
}), new objj_method(sel_getUid("viewDidMoveToWindow"), function(self, _cmd)
{ with(self)
{
    if (_tabViewType != CPTopTabsBezelBorder || _labelsView)
        return;
    objj_msgSend(self, "_createBezelBorder");
    objj_msgSend(self, "layoutSubviews");
}
}), new objj_method(sel_getUid("_createBezelBorder"), function(self, _cmd)
{ with(self)
{
    var bounds = objj_msgSend(self, "bounds");
    _labelsView = objj_msgSend(objj_msgSend(_CPTabLabelsView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, CGRectGetWidth(bounds), 0.0));
    objj_msgSend(_labelsView, "setTabView:", self);
    objj_msgSend(_labelsView, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self, "addSubview:", _labelsView);
    _backgroundView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(_backgroundView, "setBackgroundColor:", CPTabViewBezelBorderBackgroundColor);
    objj_msgSend(_backgroundView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self, "addSubview:", _backgroundView);
    _separatorView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(_separatorView, "setBackgroundColor:", objj_msgSend(objj_msgSend(self, "class"), "bezelBorderColor"));
    objj_msgSend(_separatorView, "setAutoresizingMask:", CPViewWidthSizable | CPViewMaxYMargin);
    objj_msgSend(self, "addSubview:", _separatorView);
}
}), new objj_method(sel_getUid("layoutSubviews"), function(self, _cmd)
{ with(self)
{
    if (_tabViewType == CPTopTabsBezelBorder)
    {
        var backgroundRect = objj_msgSend(self, "bounds"),
            labelsViewHeight = objj_msgSend(_CPTabLabelsView, "height");
        backgroundRect.origin.y += labelsViewHeight;
        backgroundRect.size.height -= labelsViewHeight;
        objj_msgSend(_backgroundView, "setFrame:", backgroundRect);
        var auxiliaryViewHeight = 5.0;
        if (_auxiliaryView)
        {
            auxiliaryViewHeight = CGRectGetHeight(objj_msgSend(_auxiliaryView, "frame"));
            objj_msgSend(_auxiliaryView, "setFrame:", CGRectMake(LEFT_INSET, labelsViewHeight, CGRectGetWidth(backgroundRect) - LEFT_INSET - RIGHT_INSET, auxiliaryViewHeight));
        }
        objj_msgSend(_separatorView, "setFrame:", CGRectMake(LEFT_INSET, labelsViewHeight + auxiliaryViewHeight, CGRectGetWidth(backgroundRect) - LEFT_INSET - RIGHT_INSET, 1.0));
    }
    objj_msgSend(_contentView, "setFrame:", objj_msgSend(self, "contentRect"));
}
}), new objj_method(sel_getUid("addTabViewItem:"), function(self, _cmd, aTabViewItem)
{ with(self)
{
    objj_msgSend(self, "insertTabViewItem:atIndex:", aTabViewItem, objj_msgSend(_tabViewItems, "count"));
}
}), new objj_method(sel_getUid("insertTabViewItem:atIndex:"), function(self, _cmd, aTabViewItem, anIndex)
{ with(self)
{
    objj_msgSend(_tabViewItems, "insertObject:atIndex:", aTabViewItem, anIndex);
    objj_msgSend(_labelsView, "tabView:didAddTabViewItem:", self, aTabViewItem);
    if (objj_msgSend(_tabViewItems, "count") == 1)
        objj_msgSend(self, "selectFirstTabViewItem:", self);
    if (_delegateSelectors & CPTabViewDidChangeNumberOfTabViewItemsSelector)
        objj_msgSend(_delegate, "tabViewDidChangeNumberOfTabViewItems:", self);
}
}), new objj_method(sel_getUid("removeTabViewItem:"), function(self, _cmd, aTabViewItem)
{ with(self)
{
    objj_msgSend(_tabViewItems, "removeObjectIdenticalTo:", aTabViewItem);
    objj_msgSend(_labelsView, "tabView:didRemoveTabViewItem:", self, aTabViewItem);
    if (_delegateSelectors & CPTabViewDidChangeNumberOfTabViewItemsSelector)
        objj_msgSend(_delegate, "tabViewDidChangeNumberOfTabViewItems:", self);
}
}), new objj_method(sel_getUid("indexOfTabViewItem:"), function(self, _cmd, aTabViewItem)
{ with(self)
{
    return objj_msgSend(_tabViewItems, "indexOfObjectIdenticalTo:", aTabViewItem);
}
}), new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"), function(self, _cmd, anIdentifier)
{ with(self)
{
    var index = 0,
        count = objj_msgSend(_tabViewItems, "count");
    for (; index < count; ++index)
        if (objj_msgSend(objj_msgSend(_tabViewItems[index], "identifier"), "isEqualTo:", anIdentifier))
            return index;
    return index;
}
}), new objj_method(sel_getUid("numberOfTabViewItems"), function(self, _cmd)
{ with(self)
{
    return objj_msgSend(_tabViewItems, "count");
}
}), new objj_method(sel_getUid("tabViewItemAtIndex:"), function(self, _cmd, anIndex)
{ with(self)
{
    return _tabViewItems[anIndex];
}
}), new objj_method(sel_getUid("tabViewItems"), function(self, _cmd)
{ with(self)
{
    return _tabViewItems;
}
}), new objj_method(sel_getUid("selectFirstTabViewItem:"), function(self, _cmd, aSender)
{ with(self)
{
    var count = objj_msgSend(_tabViewItems, "count");
    if (count)
        objj_msgSend(self, "selectTabViewItemAtIndex:", 0);
}
}), new objj_method(sel_getUid("selectLastTabViewItem:"), function(self, _cmd, aSender)
{ with(self)
{
    var count = objj_msgSend(_tabViewItems, "count");
    if (count)
        objj_msgSend(self, "selectTabViewItemAtIndex:", count - 1);
}
}), new objj_method(sel_getUid("selectNextTabViewItem:"), function(self, _cmd, aSender)
{ with(self)
{
    if (!_selectedTabViewItem)
        return;
    var index = objj_msgSend(self, "indexOfTabViewItem:", _selectedTabViewItem),
        count = objj_msgSend(_tabViewItems, "count");
    objj_msgSend(self, "selectTabViewItemAtIndex:", index + 1 % count);
}
}), new objj_method(sel_getUid("selectPreviousTabViewItem:"), function(self, _cmd, aSender)
{ with(self)
{
    if (!_selectedTabViewItem)
        return;
    var index = objj_msgSend(self, "indexOfTabViewItem:", _selectedTabViewItem),
        count = objj_msgSend(_tabViewItems, "count");
    objj_msgSend(self, "selectTabViewItemAtIndex:", index == 0 ? count : index - 1);
}
}), new objj_method(sel_getUid("selectTabViewItem:"), function(self, _cmd, aTabViewItem)
{ with(self)
{
    if ((_delegateSelectors & CPTabViewShouldSelectTabViewItemSelector) && !objj_msgSend(_delegate, "tabView:shouldSelectTabViewItem:", self, aTabViewItem))
        return;
    if (_delegateSelectors & CPTabViewWillSelectTabViewItemSelector)
        objj_msgSend(_delegate, "tabView:willSelectTabViewItem:", self, aTabViewItem);
    if (_selectedTabViewItem)
    {
        _selectedTabViewItem._tabState = CPBackgroundTab;
        objj_msgSend(_labelsView, "tabView:didChangeStateOfTabViewItem:", self, _selectedTabViewItem);
        objj_msgSend(_contentView, "removeFromSuperview");
        objj_msgSend(_auxiliaryView, "removeFromSuperview");
    }
    _selectedTabViewItem = aTabViewItem;
    _selectedTabViewItem._tabState = CPSelectedTab;
    _contentView = objj_msgSend(_selectedTabViewItem, "view");
    objj_msgSend(_contentView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    _auxiliaryView = objj_msgSend(_selectedTabViewItem, "auxiliaryView");
    objj_msgSend(_auxiliaryView, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self, "addSubview:", _contentView);
    if (_auxiliaryView)
        objj_msgSend(self, "addSubview:", _auxiliaryView);
    objj_msgSend(_labelsView, "tabView:didChangeStateOfTabViewItem:", self, _selectedTabViewItem);
    objj_msgSend(self, "layoutSubviews");
    if (_delegateSelectors & CPTabViewDidSelectTabViewItemSelector)
        objj_msgSend(_delegate, "tabView:didSelectTabViewItem:", self, aTabViewItem);
}
}), new objj_method(sel_getUid("selectTabViewItemAtIndex:"), function(self, _cmd, anIndex)
{ with(self)
{
    objj_msgSend(self, "selectTabViewItem:", _tabViewItems[anIndex]);
}
}), new objj_method(sel_getUid("selectedTabViewItem"), function(self, _cmd)
{ with(self)
{
    return _selectedTabViewItem;
}
}), new objj_method(sel_getUid("setTabViewType:"), function(self, _cmd, aTabViewType)
{ with(self)
{
    if (_tabViewType == aTabViewType)
        return;
    _tabViewType = aTabViewType;
    if (_tabViewType == CPNoTabsBezelBorder || _tabViewType == CPNoTabsLineBorder || _tabViewType == CPNoTabsNoBorder)
        objj_msgSend(_labelsView, "removeFromSuperview");
    else if (!objj_msgSend(_labelsView, "superview"))
        objj_msgSend(self, "addSubview:", _labelsView);
    if (_tabViewType == CPNoTabsLineBorder || _tabViewType == CPNoTabsNoBorder)
        objj_msgSend(_backgroundView, "removeFromSuperview");
    else if (!objj_msgSend(_backgroundView, "superview"))
        objj_msgSend(self, "addSubview:", _backgroundView);
    objj_msgSend(self, "layoutSubviews");
}
}), new objj_method(sel_getUid("tabViewType"), function(self, _cmd)
{ with(self)
{
    return _tabViewType;
}
}), new objj_method(sel_getUid("contentRect"), function(self, _cmd)
{ with(self)
{
    var contentRect = CGRectMakeCopy(objj_msgSend(self, "bounds"));
    if (_tabViewType == CPTopTabsBezelBorder)
    {
        var labelsViewHeight = objj_msgSend(_CPTabLabelsView, "height"),
            auxiliaryViewHeight = _auxiliaryView ? CGRectGetHeight(objj_msgSend(_auxiliaryView, "frame")) : 5.0,
            separatorViewHeight = 1.0;
        contentRect.origin.y += labelsViewHeight + auxiliaryViewHeight + separatorViewHeight;
        contentRect.size.height -= labelsViewHeight + auxiliaryViewHeight + separatorViewHeight * 2.0;
        contentRect.origin.x += LEFT_INSET;
        contentRect.size.width -= LEFT_INSET + RIGHT_INSET;
    }
    return contentRect;
}
}), new objj_method(sel_getUid("setDelegate:"), function(self, _cmd, aDelegate)
{ with(self)
{
    if (_delegate == aDelegate)
        return;
    _delegate = aDelegate;
    _delegateSelectors = 0;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabView:shouldSelectTabViewItem:")))
        _delegateSelectors |= CPTabViewShouldSelectTabViewItemSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabView:willSelectTabViewItem:")))
        _delegateSelectors |= CPTabViewWillSelectTabViewItemSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabView:didSelectTabViewItem:")))
        _delegateSelectors |= CPTabViewDidSelectTabViewItemSelector;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("tabViewDidChangeNumberOfTabViewItems:")))
        _delegateSelectors |= CPTabViewDidChangeNumberOfTabViewItemsSelector;
}
}), new objj_method(sel_getUid("mouseDown:"), function(self, _cmd, anEvent)
{ with(self)
{
    var location = objj_msgSend(_labelsView, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        tabViewItem = objj_msgSend(_labelsView, "representedTabViewItemAtPoint:", location);
    if (tabViewItem)
        objj_msgSend(self, "selectTabViewItem:", tabViewItem);
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function(self, _cmd)
{ with(self)
{
    if (self != CPTabView)
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self),
        emptyImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initByReferencingFile:size:", "", CGSizeMake(7.0, 0.0)),
        backgroundImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/CPTabViewBezelBackgroundCenter.png"), CGSizeMake(1.0, 1.0)),
        bezelBorderLeftImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/CPTabViewBezelBorderLeft.png"), CGSizeMake(7.0, 1.0)),
        bezerBorderImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/CPTabViewBezelBorder.png"), CGSizeMake(1.0, 1.0)),
        bezelBorderRightImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/CPTabViewBezelBorderRight.png"), CGSizeMake(7.0, 1.0));
    CPTabViewBezelBorderBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", 
        [
            emptyImage,
            emptyImage,
            emptyImage,
            bezelBorderLeftImage,
            backgroundImage,
            bezelBorderRightImage,
            bezelBorderLeftImage,
            bezerBorderImage,
            bezelBorderRightImage
        ]));
    CPTabViewBezelBorderColor = objj_msgSend(CPColor, "colorWithPatternImage:", bezerBorderImage);
}
}), new objj_method(sel_getUid("bezelBorderColor"), function(self, _cmd)
{ with(self)
{
    return CPTabViewBezelBorderColor;
}
})]);
}
var CPTabViewItemsKey = "CPTabViewItemsKey",
    CPTabViewSelectedItemKey = "CPTabViewSelectedItemKey",
    CPTabViewTypeKey = "CPTabViewTypeKey",
    CPTabViewDelegateKey = "CPTabViewDelegateKey";
{
var the_class = objj_getClass("CPTabView")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPTabView\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function(self, _cmd, aCoder)
{ with(self)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithCoder:", aCoder))
    {
        _tabViewType = objj_msgSend(aCoder, "decodeIntForKey:", CPTabViewTypeKey);
        _tabViewItems = [];
        objj_msgSend(self, "_createBezelBorder");
        var items = objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewItemsKey);
        for (var i = 0; items && i < items.length; i++)
            objj_msgSend(self, "insertTabViewItem:atIndex:", items[i], i);
        var selected = objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewSelectedItemKey);
        if (selected)
            objj_msgSend(self, "selectTabViewItem:", selected);
        objj_msgSend(self, "setDelegate:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTabViewDelegateKey));
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function(self, _cmd, aCoder)
{ with(self)
{
    var actualSubviews = _subviews;
    _subviews = [];
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "encodeWithCoder:", aCoder);
    _subviews = actualSubviews;
    objj_msgSend(aCoder, "encodeObject:forKey:", _tabViewItems, CPTabViewItemsKey);;
    objj_msgSend(aCoder, "encodeObject:forKey:", _selectedTabViewItem, CPTabViewSelectedItemKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", _tabViewType, CPTabViewTypeKey);
    objj_msgSend(aCoder, "encodeConditionalObject:forKey:", _delegate, CPTabViewDelegateKey);
}
})]);
}
var _CPTabLabelsViewBackgroundColor = nil,
    _CPTabLabelsViewInsideMargin = 10.0,
    _CPTabLabelsViewOutsideMargin = 15.0;
{var the_class = objj_allocateClassPair(CPView, "_CPTabLabelsView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_tabView"), new objj_ivar("_tabLabels")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        _tabLabels = [];
        objj_msgSend(self, "setBackgroundColor:", _CPTabLabelsViewBackgroundColor);
        objj_msgSend(self, "setFrameSize:", CGSizeMake(CGRectGetWidth(aFrame), 26.0));
    }
    return self;
}
}), new objj_method(sel_getUid("setTabView:"), function(self, _cmd, aTabView)
{ with(self)
{
    _tabView = aTabView;
}
}), new objj_method(sel_getUid("tabView"), function(self, _cmd)
{ with(self)
{
    return _tabView;
}
}), new objj_method(sel_getUid("tabView:didAddTabViewItem:"), function(self, _cmd, aTabView, aTabViewItem)
{ with(self)
{
    var label = objj_msgSend(objj_msgSend(_CPTabLabel, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(label, "setTabViewItem:", aTabViewItem);
    _tabLabels.push(label);
    objj_msgSend(self, "addSubview:", label);
    objj_msgSend(self, "layoutSubviews");
}
}), new objj_method(sel_getUid("tabView:didRemoveTabViewItem:"), function(self, _cmd, aTabView, aTabViewItem)
{ with(self)
{
    var index = objj_msgSend(aTabView, "indexOfTabViewItem:", aTabViewItem),
        label = _tabLabels[index];
    objj_msgSend(_tabLabels, "removeObjectAtIndex:", index);
    objj_msgSend(label, "removeFromSuperview");
    objj_msgSend(self, "layoutSubviews");
}
}), new objj_method(sel_getUid("tabView:didChangeStateOfTabViewItem:"), function(self, _cmd, aTabView, aTabViewItem)
{ with(self)
{
    objj_msgSend(_tabLabels[objj_msgSend(aTabView, "indexOfTabViewItem:", aTabViewItem)], "setTabState:", objj_msgSend(aTabViewItem, "tabState"));
 }
}), new objj_method(sel_getUid("representedTabViewItemAtPoint:"), function(self, _cmd, aPoint)
{ with(self)
{
    var index = 0,
        count = _tabLabels.length;
    for (; index < count; ++index)
    {
        var label = _tabLabels[index];
        if (CGRectContainsPoint(objj_msgSend(label, "frame"), aPoint))
            return objj_msgSend(label, "tabViewItem");
    }
    return nil;
}
}), new objj_method(sel_getUid("layoutSubviews"), function(self, _cmd)
{ with(self)
{
    var index = 0,
        count = _tabLabels.length,
        width = ((objj_msgSend(self, "bounds").size.width) - (count - 1) * _CPTabLabelsViewInsideMargin - 2 * _CPTabLabelsViewOutsideMargin) / count,
        x = _CPTabLabelsViewOutsideMargin;
    for (; index < count; ++index)
    {
        var label = _tabLabels[index],
            frame = { origin: { x:x, y:8.0 }, size: { width:width, height:18.0 } };
        objj_msgSend(label, "setFrame:", frame);
        x = (frame.origin.x + frame.size.width) + _CPTabLabelsViewInsideMargin;
    }
}
}), new objj_method(sel_getUid("setFrameSize:"), function(self, _cmd, aSize)
{ with(self)
{
    if (CGSizeEqualToSize(objj_msgSend(self, "frame").size, aSize))
        return;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "setFrameSize:", aSize);
    objj_msgSend(self, "layoutSubviews");
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPTabLabelsView, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    _CPTabLabelsViewBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", 
        [
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelsViewLeft.png"), CGSizeMake(12.0, 26.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelsViewCenter.png"), CGSizeMake(1.0, 26.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelsViewRight.png"), CGSizeMake(12.0, 26.0))
        ], NO));
}
}), new objj_method(sel_getUid("height"), function(self, _cmd)
{ with(self)
{
    return 26.0;
}
})]);
}
var _CPTabLabelBackgroundColor = nil,
    _CPTabLabelSelectedBackgroundColor = nil;
{var the_class = objj_allocateClassPair(CPView, "_CPTabLabel"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_tabViewItem"), new objj_ivar("_labelField")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPView") }, "initWithFrame:", aFrame);
    if (self)
    {
        _labelField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(_labelField, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(_labelField, "setFrame:", CGRectMake(5.0, 0.0, CGRectGetWidth(aFrame) - 10.0, 20.0));
        objj_msgSend(_labelField, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(_labelField, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 11.0));
        objj_msgSend(self, "addSubview:", _labelField);
        objj_msgSend(self, "setTabState:", CPBackgroundTab);
    }
    return self;
}
}), new objj_method(sel_getUid("setTabState:"), function(self, _cmd, aTabState)
{ with(self)
{
    objj_msgSend(self, "setBackgroundColor:", aTabState == CPSelectedTab ? _CPTabLabelSelectedBackgroundColor : _CPTabLabelBackgroundColor);
}
}), new objj_method(sel_getUid("setTabViewItem:"), function(self, _cmd, aTabViewItem)
{ with(self)
{
    _tabViewItem = aTabViewItem;
    objj_msgSend(self, "update");
}
}), new objj_method(sel_getUid("tabViewItem"), function(self, _cmd)
{ with(self)
{
    return _tabViewItem;
}
}), new objj_method(sel_getUid("update"), function(self, _cmd)
{ with(self)
{
    objj_msgSend(_labelField, "setStringValue:", objj_msgSend(_tabViewItem, "label"));
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function(self, _cmd)
{ with(self)
{
    if (self != objj_msgSend(_CPTabLabel, "class"))
        return;
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    _CPTabLabelBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", 
        [
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelBackgroundLeft.png"), CGSizeMake(6.0, 18.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelBackgroundCenter.png"), CGSizeMake(1.0, 18.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelBackgroundRight.png"), CGSizeMake(6.0, 18.0))
        ], NO));
    _CPTabLabelSelectedBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", 
        [
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelSelectedLeft.png"), CGSizeMake(3.0, 18.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelSelectedCenter.png"), CGSizeMake(1.0, 18.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "CPTabView/_CPTabLabelSelectedRight.png"), CGSizeMake(3.0, 18.0))
        ], NO));
}
})]);
}

p;15;CPTabViewItem.jI;21;Foundation/CPObject.jI;15;AppKit/CPView.jc;2568;
CPSelectedTab=0;
CPBackgroundTab=1;
CPPressedTab=2;
var _1=objj_allocateClassPair(CPObject,"CPTabViewItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_identifier"),new objj_ivar("_label"),new objj_ivar("_view"),new objj_ivar("_auxiliaryView")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_identifier=_5;
}
return _3;
}
}),new objj_method(sel_getUid("setLabel:"),function(_6,_7,_8){
with(_6){
_label=_8;
}
}),new objj_method(sel_getUid("label"),function(_9,_a){
with(_9){
return _label;
}
}),new objj_method(sel_getUid("tabState"),function(_b,_c){
with(_b){
return _tabState;
}
}),new objj_method(sel_getUid("setIdentifier:"),function(_d,_e,_f){
with(_d){
_identifier=_f;
}
}),new objj_method(sel_getUid("identifier"),function(_10,_11){
with(_10){
return _identifier;
}
}),new objj_method(sel_getUid("setView:"),function(_12,_13,_14){
with(_12){
_view=_14;
}
}),new objj_method(sel_getUid("view"),function(_15,_16){
with(_15){
return _view;
}
}),new objj_method(sel_getUid("setAuxiliaryView:"),function(_17,_18,_19){
with(_17){
_auxiliaryView=_19;
}
}),new objj_method(sel_getUid("auxiliaryView"),function(_1a,_1b){
with(_1a){
return _auxiliaryView;
}
}),new objj_method(sel_getUid("tabView"),function(_1c,_1d){
with(_1c){
return _tabView;
}
})]);
var _1e="CPTabViewItemIdentifierKey",_1f="CPTabViewItemLabelKey",_20="CPTabViewItemViewKey",_21="CPTabViewItemAuxViewKey";
var _1=objj_getClass("CPTabViewItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTabViewItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_22,_23,_24){
with(_22){
_22=objj_msgSendSuper({receiver:_22,super_class:objj_getClass("CPObject")},"init");
if(_22){
_identifier=objj_msgSend(_24,"decodeObjectForKey:",_1e);
_label=objj_msgSend(_24,"decodeObjectForKey:",_1f);
_view=objj_msgSend(_24,"decodeObjectForKey:",_20);
_auxiliaryView=objj_msgSend(_24,"decodeObjectForKey:",_21);
}
return _22;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_27,"encodeObject:forKey:",_identifier,_1e);
objj_msgSend(_27,"encodeObject:forKey:",_label,_1f);
objj_msgSend(_27,"encodeObject:forKey:",_view,_20);
objj_msgSend(_27,"encodeObject:forKey:",_auxiliaryView,_21);
}
})]);
p;13;CPTextField.ji;11;CPControl.ji;17;CPStringDrawing.jc;29290;
CGPointMake= function(x, y) { return { x:x, y:y }; }
CGPointMakeZero= function() { return { x:0.0, y:0.0 }; }
CGPointMakeCopy= function(aPoint) { return { x:aPoint.x, y:aPoint.y }; }
CGPointCreateCopy= function(aPoint) { return { x:aPoint.x, y:aPoint.y }; }
CGPointEqualToPoint= function(lhsPoint, rhsPoint) { return (lhsPoint.x == rhsPoint.x && lhsPoint.y == rhsPoint.y); }
CGStringFromPoint= function(aPoint) { return ("{" + aPoint.x + ", " + aPoint.y + "}"); }
CGSizeMake= function(width, height) { return { width:width, height:height }; }
CGSizeMakeZero= function() { return { width:0.0, height:0.0 }; }
CGSizeMakeCopy= function(aSize) { return { width:aSize.width, height:aSize.height }; }
CGSizeCreateCopy= function(aSize) { return { width:aSize.width, height:aSize.height }; }
CGSizeEqualToSize= function(lhsSize, rhsSize) { return (lhsSize.width == rhsSize.width && lhsSize.height == rhsSize.height); }
CGStringFromSize= function(aSize) { return ("{" + aSize.width + ", " + aSize.height + "}"); }
CGRectMake= function(x, y, width, height) { return { origin: { x:x, y:y }, size: { width:width, height:height } }; }
CGRectMakeZero= function() { return { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } }; }
CGRectMakeCopy= function(aRect) { return { origin: { x:aRect.origin.x, y:aRect.origin.y }, size: { width:aRect.size.width, height:aRect.size.height } }; }
CGRectCreateCopy= function(aRect) { return { origin: { x:aRect.origin.x, y:aRect.origin.y }, size: { width:aRect.size.width, height:aRect.size.height } }; }
CGRectEqualToRect= function(lhsRect, rhsRect) { return ((lhsRect.origin.x == rhsRect.origin.x && lhsRect.origin.y == rhsRect.origin.y) && (lhsRect.size.width == rhsRect.size.width && lhsRect.size.height == rhsRect.size.height)); }
CGStringFromRect= function(aRect) { return ("{" + ("{" + aRect.origin.x + ", " + aRect.origin.y + "}") + ", " + ("{" + aRect.size.width + ", " + aRect.size.height + "}") + "}"); }
CGRectOffset= function(aRect, dX, dY) { return { origin: { x:aRect.origin.x + dX, y:aRect.origin.y + dY }, size: { width:aRect.size.width, height:aRect.size.height } }; }
CGRectInset= function(aRect, dX, dY) { return { origin: { x:aRect.origin.x + dX, y:aRect.origin.y + dY }, size: { width:aRect.size.width - 2 * dX, height:aRect.size.height - 2 * dY } }; }
CGRectGetHeight= function(aRect) { return (aRect.size.height); }
CGRectGetMaxX= function(aRect) { return (aRect.origin.x + aRect.size.width); }
CGRectGetMaxY= function(aRect) { return (aRect.origin.y + aRect.size.height); }
CGRectGetMidX= function(aRect) { return (aRect.origin.x + (aRect.size.width) / 2.0); }
CGRectGetMidY= function(aRect) { return (aRect.origin.y + (aRect.size.height) / 2.0); }
CGRectGetMinX= function(aRect) { return (aRect.origin.x); }
CGRectGetMinY= function(aRect) { return (aRect.origin.y); }
CGRectGetWidth= function(aRect) { return (aRect.size.width); }
CGRectIsEmpty= function(aRect) { return (aRect.size.width <= 0.0 || aRect.size.height <= 0.0); }
CGRectIsNull= function(aRect) { return (aRect.size.width <= 0.0 || aRect.size.height <= 0.0); }
CGRectContainsPoint= function(aRect, aPoint) { return (aPoint.x >= (aRect.origin.x) && aPoint.y >= (aRect.origin.y) && aPoint.x < (aRect.origin.x + aRect.size.width) && aPoint.y < (aRect.origin.y + aRect.size.height)); }
CGInsetMake= function(top, left, bottom, right) { return { top:(top), left:(left), bottom:(bottom), right:(right) }; }
CGInsetMakeZero= function() { return { top:(0), left:(0), bottom:(0), right:(0) }; }
CGInsetMakeCopy= function(anInset) { return { top:(anInset.top), left:(anInset.left), bottom:(anInset.bottom), right:(anInset.right) }; }
CGInsetIsEmpty= function(anInset) { return ((anInset).left === 0 && (anInset).top === 0 && (anInset).right === 0 && (anInset).bottom === 0); }
CGRectContainsRect= function(lhsRect, rhsRect)
{
    var union = CGRectUnion(lhsRect, rhsRect);
    return ((union.origin.x == lhsRect.origin.x && union.origin.y == lhsRect.origin.y) && (union.size.width == lhsRect.size.width && union.size.height == lhsRect.size.height));
}
CGRectIntersectsRect= function(lhsRect, rhsRect)
{
    var intersection = CGRectIntersection(lhsRect, rhsRect);
    return !(intersection.size.width <= 0.0 || intersection.size.height <= 0.0);
}
CGRectIntegral= function(aRect)
{
    aRect = CGRectStandardize(aRect);
    var x = FLOOR((aRect.origin.x)),
        y = FLOOR((aRect.origin.y));
    aRect.size.width = CEIL((aRect.origin.x + aRect.size.width)) - x;
    aRect.size.height = CEIL((aRect.origin.y + aRect.size.height)) - y;
    aRect.origin.x = x;
    aRect.origin.y = y;
    return aRect;
}
CGRectIntersection= function(lhsRect, rhsRect)
{
    var intersection = { origin: { x:MAX((lhsRect.origin.x), (rhsRect.origin.x)), y:MAX((lhsRect.origin.y), (rhsRect.origin.y)) }, size: { width:0, height:0 } };
    intersection.size.width = MIN((lhsRect.origin.x + lhsRect.size.width), (rhsRect.origin.x + rhsRect.size.width)) - (intersection.origin.x);
    intersection.size.height = MIN((lhsRect.origin.y + lhsRect.size.height), (rhsRect.origin.y + rhsRect.size.height)) - (intersection.origin.y);
    return (intersection.size.width <= 0.0 || intersection.size.height <= 0.0) ? { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } } : intersection;
}
CGRectStandardize= function(aRect)
{
    var width = (aRect.size.width),
        height = (aRect.size.height),
        standardized = aRect;
    if (width < 0.0)
    {
        if (standardized == aRect)
            standardized = { origin: { x:aRect.origin.x, y:aRect.origin.y }, size: { width:aRect.size.width, height:aRect.size.height } };
        standardized.origin.x += width;
        standardized.size.width = -width;
    }
    if (height < 0.0)
    {
        if (standardized == aRect)
            standardized = { origin: { x:aRect.origin.x, y:aRect.origin.y }, size: { width:aRect.size.width, height:aRect.size.height } };
        standardized.origin.y += height;
        standardized.size.height = -height;
    }
    return standardized;
}
CGRectUnion= function(lhsRect, rhsRect)
{
    var minX = MIN((lhsRect.origin.x), (rhsRect.origin.x)),
        minY = MIN((lhsRect.origin.y), (rhsRect.origin.y)),
        maxX = MAX((lhsRect.origin.x + lhsRect.size.width), (rhsRect.origin.x + rhsRect.size.width)),
        maxY = MAX((lhsRect.origin.y + lhsRect.size.height), (rhsRect.origin.y + rhsRect.size.height));
    return { origin: { x:minX, y:minY }, size: { width:maxX - minX, height:maxY - minY } };
}
CGPointFromString= function(aString)
{
    var comma = aString.indexOf(',');
    return { x:parseInt(aString.substr(1, comma - 1)), y:parseInt(aString.substring(comma + 1, aString.length)) };
}
CGSizeFromString= function(aString)
{
    var comma = aString.indexOf(',');
    return { width:parseInt(aString.substr(1, comma - 1)), height:parseInt(aString.substring(comma + 1, aString.length)) };
}
CGRectFromString= function(aString)
{
    var comma = aString.indexOf(',', aString.indexOf(',') + 1);
    return { origin:CGPointFromString(aString.substr(1, comma - 1)), size:CGSizeFromString(aString.substring(comma + 2, aString.length)) };
}
CGPointFromEvent= function(anEvent)
{
    return { x:anEvent.clientX, y:anEvent.clientY };
}
CPLineBreakByWordWrapping = 0;
CPLineBreakByCharWrapping = 1;
CPLineBreakByClipping = 2;
CPLineBreakByTruncatingHead = 3;
CPLineBreakByTruncatingTail = 4;
CPLineBreakByTruncatingMiddle = 5;
CPTextFieldSquareBezel = 0;
CPTextFieldRoundedBezel = 1;
var CPTextFieldDOMInputElement = nil;
{
var the_class = objj_getClass("CPString")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPString\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("string"), function $CPString__string(self, _cmd)
{ with(self)
{
    return self;
}
})]);
}
CPTextFieldStateRounded = 1 << 12;
CPTextFieldStatePlaceholder = 1 << 13;
{var the_class = objj_allocateClassPair(CPControl, "CPTextField"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isEditable"), new objj_ivar("_isSelectable"), new objj_ivar("_drawsBackground"), new objj_ivar("_textFieldBackgroundColor"), new objj_ivar("_placeholderString"), new objj_ivar("_delegate"), new objj_ivar("_textDidChangeValue"), new objj_ivar("_bezelStyle"), new objj_ivar("_isBordered"), new objj_ivar("_controlSize")]);
objj_registerClassPair(the_class);
objj_addClassForBundle(the_class, objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $CPTextField__initWithFrame_(self, _cmd, aFrame)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "initWithFrame:", aFrame);
    if (self)
    {
        objj_msgSend(self, "setStringValue:", "");
        objj_msgSend(self, "setPlaceholderString:", "");
        _sendActionOn = CPKeyUpMask | CPKeyDownMask;
        objj_msgSend(self, "setValue:forThemedAttributeName:", CPLeftTextAlignment, "alignment");
    }
    return self;
}
}), new objj_method(sel_getUid("setEditable:"), function $CPTextField__setEditable_(self, _cmd, shouldBeEditable)
{ with(self)
{
    _isEditable = shouldBeEditable;
}
}), new objj_method(sel_getUid("isEditable"), function $CPTextField__isEditable(self, _cmd)
{ with(self)
{
    return _isEditable;
}
}), new objj_method(sel_getUid("setSelectable:"), function $CPTextField__setSelectable_(self, _cmd, aFlag)
{ with(self)
{
    _isSelectable = aFlag;
}
}), new objj_method(sel_getUid("isSelectable"), function $CPTextField__isSelectable(self, _cmd)
{ with(self)
{
    return _isSelectable;
}
}), new objj_method(sel_getUid("setBezeled:"), function $CPTextField__setBezeled_(self, _cmd, shouldBeBezeled)
{ with(self)
{
    if ((!!(_controlState & CPControlStateBezeled)) === shouldBeBezeled)
        return;

    if (shouldBeBezeled)
        _controlState |= CPControlStateBezeled;
    else
        _controlState &= ~CPControlStateBezeled;

    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("isBezeled"), function $CPTextField__isBezeled(self, _cmd)
{ with(self)
{
    return !!(_controlState & CPControlStateBezeled);
}
}), new objj_method(sel_getUid("setBezelStyle:"), function $CPTextField__setBezelStyle_(self, _cmd, aBezelStyle)
{ with(self)
{
    var shouldBeRounded = aBezelStyle === CPTextFieldRoundedBezel;

    if ((!!(_controlState & CPTextFieldStateRounded)) === shouldBeRounded)
        return;

    if (shouldBeRounded)
        _controlState |= CPTextFieldStateRounded;
    else
        _controlState &= ~CPTextFieldStateRounded;

    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("bezelStyle"), function $CPTextField__bezelStyle(self, _cmd)
{ with(self)
{
    if (_controlState & CPTextFieldStateRounded)
        return CPTextFieldRoundedBezel;

    return CPTextFieldSquareBezel;
}
}), new objj_method(sel_getUid("setBordered:"), function $CPTextField__setBordered_(self, _cmd, shouldBeBordered)
{ with(self)
{
    if ((!!(_controlState & CPControlStateBordered)) === shouldBeBordered)
        return;

    if (shouldBeBordered)
        _controlState |= CPControlStateBordered;
    else
        _controlState &= ~CPControlStateBordered;

    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("isBordered"), function $CPTextField__isBordered(self, _cmd)
{ with(self)
{
    return !!(_controlState & CPControlStateBordered);
}
}), new objj_method(sel_getUid("setDrawsBackground:"), function $CPTextField__setDrawsBackground_(self, _cmd, shouldDrawBackground)
{ with(self)
{
    if (_drawsBackground == shouldDrawBackground)
        return;

    _drawsBackground = shouldDrawBackground;

    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("drawsBackground"), function $CPTextField__drawsBackground(self, _cmd)
{ with(self)
{
    return _drawsBackground;
}
}), new objj_method(sel_getUid("setTextFieldBackgroundColor:"), function $CPTextField__setTextFieldBackgroundColor_(self, _cmd, aColor)
{ with(self)
{
    if (_textFieldBackgroundColor == aColor)
        return;

    _textFieldBackgroundColor = aColor;

    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
}), new objj_method(sel_getUid("textFieldBackgroundColor"), function $CPTextField__textFieldBackgroundColor(self, _cmd)
{ with(self)
{
    return _textFieldBackgroundColor;
}
}), new objj_method(sel_getUid("acceptsFirstResponder"), function $CPTextField__acceptsFirstResponder(self, _cmd)
{ with(self)
{
    return _isEditable && _isEnabled;
}
}), new objj_method(sel_getUid("becomeFirstResponder"), function $CPTextField__becomeFirstResponder(self, _cmd)
{ with(self)
{
    objj_msgSend(_contentView, "setHidden:", YES);
    var string = objj_msgSend(self, "stringValue");

    objj_msgSend(self, "setStringValue:", "");


    var element = objj_msgSend(objj_msgSend(self, "class"), "_inputElement");

    element.value = "hey there hot shot";
    element.style.color = _DOMElement.style.color;
    element.style.font = _DOMElement.style.font;
    element.style.zIndex = 1000;
    element.style.marginTop = "0px";
    if (_isBezeled && _bezelStyle == CPTextFieldRoundedBezel)
    {





        element.style.top = "0px" ;
        element.style.left = ROUNDEDBEZEL_HORIZONTAL_PADDING + 1.0 + "px" ;
        element.style.width = CGRectGetWidth(objj_msgSend(self, "bounds")) - (2 * ROUNDEDBEZEL_HORIZONTAL_PADDING) - 2.0 + "px";
    }
    else
    {
        element.style.width = CGRectGetWidth(objj_msgSend(self, "bounds")) - 3.0 + "px";
    }

    _DOMElement.appendChild(element);

    var evt = document.createEvent("MouseEvents");
  evt.initMouseEvent("mousedown", true, true, window,
    0, 0, 0, 0, 0, false, false, false, false, 0, null);
  var canceled = !element.dispatchEvent(evt);
    element.onblur = function ()
    {
        objj_msgSend(self, "setObjectValue:", element.value);
        objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", nil);
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    };
    element.onkeydown = function(aDOMEvent)
    {
        _textDidChangeValue = objj_msgSend(self, "stringValue");
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        return true;
    }
    element.onkeypress = function(aDOMEvent)
    {
        aDOMEvent = aDOMEvent || window.event;
        if (aDOMEvent.keyCode == 13)
        {
            if (aDOMEvent.preventDefault)
                aDOMEvent.preventDefault();
            if (aDOMEvent.stopPropagation)
                aDOMEvent.stopPropagation();
            aDOMEvent.cancelBubble = true;
            element.blur();
        }
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    };
    element.onkeyup = function(aDOMEvent)
    {
        if (objj_msgSend(self, "stringValue") != _textDidChangeValue)
        {
            _textDidChangeValue = objj_msgSend(self, "stringValue");
            objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
        }
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    };
    if (objj_msgSend(string, "lowercaseString") == objj_msgSend(objj_msgSend(self, "placeholderString"), "lowercaseString"))
        element.value = "";
    objj_msgSend(self, "textDidBeginEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
    objj_msgSend(objj_msgSend(CPDOMWindowBridge, "sharedDOMWindowBridge"), "_propagateCurrentDOMEvent:", YES);
    return YES;
}
}), new objj_method(sel_getUid("resignFirstResponder"), function $CPTextField__resignFirstResponder(self, _cmd)
{ with(self)
{
    var element = objj_msgSend(objj_msgSend(self, "class"), "_inputElement");
    element.onkeyup = nil;
    element.onkeydown = nil;
    element.onkeypress = nil;
    _DOMElement.removeChild(element);
    objj_msgSend(self, "setStringValue:", element.value);
    if (!_value)
        objj_msgSend(self, "setStringValue:", objj_msgSend(self, "placeholderString"));
    objj_msgSend(self, "textDidEndEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
    return YES;
}
}), new objj_method(sel_getUid("mouseDown:"), function $CPTextField__mouseDown_(self, _cmd, anEvent)
{ with(self)
{
    if (!objj_msgSend(self, "isEditable"))
        return objj_msgSend(objj_msgSend(self, "nextResponder"), "mouseDown:", anEvent);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "mouseDown:", anEvent);
}
}), new objj_method(sel_getUid("objectValue"), function $CPTextField__objectValue(self, _cmd)
{ with(self)
{
    if (objj_msgSend(objj_msgSend(self, "window"), "firstResponder") == self)
        return objj_msgSend(objj_msgSend(self, "class"), "_inputElement").value;
    if (objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "objectValue") == objj_msgSend(self, "placeholderString"))
        return "";
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "objectValue");
}
}), new objj_method(sel_getUid("setObjectValue:"), function $CPTextField__setObjectValue_(self, _cmd, aValue)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "setObjectValue:", aValue);
    var string = objj_msgSend(self, "stringValue");
    if (!string || objj_msgSend(string, "length") === 0)
        _controlState |= CPTextFieldStatePlaceholder;
    else
        _controlState &= ~CPTextFieldStatePlaceholder;
}
}), new objj_method(sel_getUid("setPlaceholderString:"), function $CPTextField__setPlaceholderString_(self, _cmd, aStringValue)
{ with(self)
{
    if (_placeholderString === aStringValue)
        return;
    _placeholderString = aStringValue;
    if (_controlState & CPTextFieldStatePlaceholder)
    {
        objj_msgSend(self, "setNeedsLayout");
        objj_msgSend(self, "setNeedsDisplay:", YES);
    }
}
}), new objj_method(sel_getUid("placeholderString"), function $CPTextField__placeholderString(self, _cmd)
{ with(self)
{
    return _placeholderString;
}
}), new objj_method(sel_getUid("sizeToFit"), function $CPTextField__sizeToFit(self, _cmd)
{ with(self)
{
    var size = objj_msgSend((_value || " "), "sizeWithFont:", objj_msgSend(self, "font")),
        contentInset = objj_msgSend(self, "currentValueForThemedAttributeName:", "content-inset");
    objj_msgSend(self, "setFrameSize:", CGSizeMake(size.width + contentInset.left + contentInset.right, size.height + contentInset.top + contentInset.bottom));
}
}), new objj_method(sel_getUid("selectText:"), function $CPTextField__selectText_(self, _cmd, sender)
{ with(self)
{
    var element = objj_msgSend(objj_msgSend(self, "class"), "_inputElement");
    if (element.parentNode == _DOMElement && (objj_msgSend(self, "isEditable") || objj_msgSend(self, "isSelectable")))
        element.select();
}
}), new objj_method(sel_getUid("setDelegate:"), function $CPTextField__setDelegate_(self, _cmd, aDelegate)
{ with(self)
{
    var defaultCenter = objj_msgSend(CPNotificationCenter, "defaultCenter");
    if (_delegate)
    {
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPControlTextDidBeginEditingNotification, self);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPControlTextDidChangeNotification, self);
        objj_msgSend(defaultCenter, "removeObserver:name:object:", _delegate, CPControlTextDidEndEditingNotification, self);
    }
    _delegate = aDelegate;
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidBeginEditing:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidBeginEditing:"), CPControlTextDidBeginEditingNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidChange:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidChange:"), CPControlTextDidChangeNotification, self);
    if (objj_msgSend(_delegate, "respondsToSelector:", sel_getUid("controlTextDidEndEditing:")))
        objj_msgSend(defaultCenter, "addObserver:selector:name:object:", _delegate, sel_getUid("controlTextDidEndEditing:"), CPControlTextDidEndEditingNotification, self);
}
}), new objj_method(sel_getUid("delegate"), function $CPTextField__delegate(self, _cmd)
{ with(self)
{
    return _delegate;
}
}), new objj_method(sel_getUid("contentRectForBounds:"), function $CPTextField__contentRectForBounds_(self, _cmd, bounds)
{ with(self)
{
    var contentInset = objj_msgSend(self, "currentValueForThemedAttributeName:", "content-inset");
    if (!contentInset)
        return bounds;
    bounds.origin.x += contentInset.left;
    bounds.origin.y += contentInset.top;
    bounds.size.width -= contentInset.left + contentInset.right;
    bounds.size.height -= contentInset.top + contentInset.bottom;
    return bounds;
}
}), new objj_method(sel_getUid("bezelRectForBounds:"), function $CPTextField__bezelRectForBounds_(self, _cmd, bounds)
{ with(self)
{
    var bezelInset = objj_msgSend(self, "currentValueForThemedAttributeName:", "bezel-inset");
    if (!((bezelInset).left === 0 && (bezelInset).top === 0 && (bezelInset).right === 0 && (bezelInset).bottom === 0))
        return bounds;
    bounds.origin.x += bezelInset.left;
    bounds.origin.y += bezelInset.top;
    bounds.size.width -= bezelInset.left + bezelInset.right;
    bounds.size.height -= bezelInset.top + bezelInset.bottom;
    return bounds;
}
}), new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"), function $CPTextField__rectForEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "bezel-view")
        return objj_msgSend(self, "bezelRectForBounds:", objj_msgSend(self, "bounds"));
    else if (aName === "content-view")
        return objj_msgSend(self, "contentRectForBounds:", objj_msgSend(self, "bounds"));
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "rectForEphemeralSubviewNamed:", aName);
}
}), new objj_method(sel_getUid("createEphemeralSubviewNamed:"), function $CPTextField__createEphemeralSubviewNamed_(self, _cmd, aName)
{ with(self)
{
    if (aName === "bezel-view")
    {
        var view = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
        objj_msgSend(view, "setHitTests:", NO);
        return view;
    }
    else
    {
        var view = objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", { origin: { x:0.0, y:0.0 }, size: { width:0.0, height:0.0 } });
        return view;
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "createEphemeralSubviewNamed:", aName);
}
}), new objj_method(sel_getUid("layoutSubviews"), function $CPTextField__layoutSubviews(self, _cmd)
{ with(self)
{
    var bezelView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "bezel-view", CPWindowBelow, "content-view");
    if (bezelView)
        objj_msgSend(bezelView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemedAttributeName:", "bezel-color"));
    var contentView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "content-view", CPWindowAbove, "bezel-view");
    if (contentView)
    {
        if (_controlState & CPTextFieldStatePlaceholder)
            objj_msgSend(contentView, "setText:", objj_msgSend(self, "placeholderString"));
        else
            objj_msgSend(contentView, "setText:", objj_msgSend(self, "stringValue"));
        objj_msgSend(contentView, "setTextColor:", objj_msgSend(self, "currentValueForThemedAttributeName:", "text-color"));
        objj_msgSend(contentView, "setFont:", objj_msgSend(self, "currentValueForThemedAttributeName:", "font"));
        objj_msgSend(contentView, "setAlignment:", objj_msgSend(self, "currentValueForThemedAttributeName:", "alignment"));
        objj_msgSend(contentView, "setVerticalAlignment:", objj_msgSend(self, "currentValueForThemedAttributeName:", "vertical-alignment"));
        objj_msgSend(contentView, "setLineBreakMode:", objj_msgSend(self, "currentValueForThemedAttributeName:", "line-break-mode"));
        objj_msgSend(contentView, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemedAttributeName:", "text-shadow-color"));
        objj_msgSend(contentView, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemedAttributeName:", "text-shadow-offset"));
    }
}
})]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themedAttributes"), function $CPTextField__themedAttributes(self, _cmd)
{ with(self)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [{ top:(0), left:(0), bottom:(0), right:(0) }, { top:(2.0), left:(2.0), bottom:(2.0), right:(2.0) }, { top:(2.0), left:(2.0), bottom:(2.0), right:(2.0) }, nil], ["bezel-inset", "content-inset", "bezeled-content-inset", "bezel-color"]);
}
}), new objj_method(sel_getUid("_inputElement"), function $CPTextField___inputElement(self, _cmd)
{ with(self)
{
    if (!CPTextFieldDOMInputElement)
    {
         CPTextFieldDOMInputElement = document.createElement("input");
         CPTextFieldDOMInputElement.style.position = "absolute";
         CPTextFieldDOMInputElement.style.top = "0px";
         CPTextFieldDOMInputElement.style.left = "0px";
         CPTextFieldDOMInputElement.style.width = "100%"
         CPTextFieldDOMInputElement.style.height = "100%";
         CPTextFieldDOMInputElement.style.border = "0px";
         CPTextFieldDOMInputElement.style.padding = "0px";
         CPTextFieldDOMInputElement.style.whiteSpace = "pre";
         CPTextFieldDOMInputElement.style.background = "transparent";
         CPTextFieldDOMInputElement.style.outline = "none";
         CPTextFieldDOMInputElement.style.paddingLeft = HORIZONTAL_PADDING - 1.0 + "px";
         CPTextFieldDOMInputElement.style.paddingTop = TOP_PADDING - 2.0 + "px";
    }
    return CPTextFieldDOMInputElement;
}
})]);
}
var CPTextFieldIsEditableKey = "CPTextFieldIsEditableKey",
    CPTextFieldIsSelectableKey = "CPTextFieldIsSelectableKey",
    CPTextFieldIsBorderedKey = "CPTextFieldIsBorderedKey",
    CPTextFieldIsBezeledKey = "CPTextFieldIsBezeledKey",
    CPTextFieldBezelStyleKey = "CPTextFieldBezelStyleKey",
    CPTextFieldDrawsBackgroundKey = "CPTextFieldDrawsBackgroundKey",
    CPTextFieldLineBreakModeKey = "CPTextFieldLineBreakModeKey",
    CPTextFieldBackgroundColorKey = "CPTextFieldBackgroundColorKey",
    CPTextFieldPlaceholderStringKey = "CPTextFieldPlaceholderStringKey";
{
var the_class = objj_getClass("CPTextField")
if(!the_class) objj_exception_throw(new objj_exception(OBJJClassNotFoundException, "*** Could not find definition for class \"CPTextField\""));
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $CPTextField__initWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "initWithCoder:", aCoder);
    if (self)
    {
        objj_msgSend(self, "setEditable:", objj_msgSend(aCoder, "decodeBoolForKey:", CPTextFieldIsEditableKey));
        objj_msgSend(self, "setSelectable:", objj_msgSend(aCoder, "decodeBoolForKey:", CPTextFieldIsSelectableKey));
        objj_msgSend(self, "setDrawsBackground:", objj_msgSend(aCoder, "decodeBoolForKey:", CPTextFieldDrawsBackgroundKey));
        objj_msgSend(self, "setTextFieldBackgroundColor:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTextFieldBackgroundColorKey));
        objj_msgSend(self, "setPlaceholderString:", objj_msgSend(aCoder, "decodeObjectForKey:", CPTextFieldPlaceholderStringKey));
    }
    return self;
}
}), new objj_method(sel_getUid("encodeWithCoder:"), function $CPTextField__encodeWithCoder_(self, _cmd, aCoder)
{ with(self)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("CPControl") }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isEditable, CPTextFieldIsEditableKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _isSelectable, CPTextFieldIsSelectableKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", _drawsBackground, CPTextFieldDrawsBackgroundKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _textFieldBackgroundColor, CPTextFieldBackgroundColorKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", _placeholderString, CPTextFieldPlaceholderStringKey);
}
})]);
}

p;9;CPTheme.jI;21;Foundation/CPObject.jI;29;AppKit/_CPCibCustomResource.jI;30;AppKit/_CPCibKeyedUnarchiver.ji;19;CPThemedAttribute.jc;6148;
var _1=nil,_2=nil,_3=Nil,_4=Nil;
var _5=objj_allocateClassPair(CPObject,"CPTheme"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_name"),new objj_ivar("_activeClass"),new objj_ivar("_classTable")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithName:"),function(_7,_8,_9){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPObject")},"init");
if(_7){
_name=_9;
_classTable={};
_classTable[objj_msgSend(objj_msgSend(_7,"class"),"className")]={};
_1[_name]=_9;
}
return _7;
}
}),new objj_method(sel_getUid("name"),function(_a,_b){
with(_a){
return _name;
}
}),new objj_method(sel_getUid("setActiveClass:"),function(_c,_d,_e){
with(_c){
_activeClass=_e;
}
}),new objj_method(sel_getUid("activeClass"),function(_f,_10){
with(_f){
return _activeClass;
}
}),new objj_method(sel_getUid("valueForAttributeName:inClass:"),function(_11,_12,_13,_14){
with(_11){
if(!_14){
return nil;
}
var _15=objj_msgSend(_14,"className"),_16=_classTable[_15];
if(!_16){
return nil;
}
var _17=_16[_13];
if(!_17){
return nil;
}
return _17;
}
}),new objj_method(sel_getUid("takeThemeFromObject:"),function(_18,_19,_1a){
with(_18){
var _1b=objj_msgSend(_1a,"_themedAttributes"),_1c=nil,_1d=objj_msgSend(_1b,"keyEnumerator"),_1e=objj_msgSend(_1a,"class");
while(_1c=objj_msgSend(_1d,"nextObject")){
objj_msgSend(_18,"addValue:forAttributeName:inClass:",objj_msgSend(_1b,"objectForKey:",_1c),_1c,_1e);
}
}
}),new objj_method(sel_getUid("setDefaultValue:forAttributeName:"),function(_1f,_20,_21,_22){
with(_1f){
objj_msgSend(_1f,"addValue:forAttributeName:inClass:",_21,_22,objj_msgSend(_1f,"class"));
}
}),new objj_method(sel_getUid("addValue:forAttributeName:inClass:"),function(_23,_24,_25,_26,_27){
with(_23){
if(!_25){
return;
}
var _28=objj_msgSend(_27,"className"),_29=_classTable[_28];
if(!_29){
var _2a=[];
while(!_29&&(_27!==_3)&&(_27!==_4)){
_2a.push(_28);
_27=objj_msgSend(_27,"superclass");
_28=objj_msgSend(_27,"className");
_29=_classTable[_28];
}
if(!_29){
_29=_classTable[objj_msgSend(objj_msgSend(_23,"class"),"className")];
}
var _2b=objj_msgSend(_2a,"count");
while(_2b--){
_28=_2a[_2b];
_classTable[_28]={};
_classTable[_28].prototype=_29;
_29=_classTable[_28];
}
}
var _2c=_29[_26];
if(_2c){
_29[_26]=objj_msgSend(_2c,"themedAttributeMergedWithThemedAttribute:",_25);
}else{
_29[_26]=_25;
}
}
})]);
class_addMethods(_6,[new objj_method(sel_getUid("initialize"),function(_2d,_2e){
with(_2d){
if(_2d!==objj_msgSend(CPTheme,"class")){
return;
}
_1={};
_3=objj_msgSend(CPView,"class");
_4=objj_msgSend(CPWindow,"class");
var _2f=objj_msgSend(CPBundle,"bundleForClass:",_2d);
defaultThemePath=objj_msgSend(_2f,"objectForInfoDictionaryKey:","Default Themes Path"),defaultThemeName=objj_msgSend(_2f,"objectForInfoDictionaryKey:","Default Theme Name");
if(!defaultThemePath){
return;
}
defaultThemePath=objj_msgSend(_2f,"pathForResource:",defaultThemePath);
var _30=objj_files[defaultThemePath+"/Info.plist"];
if(!_30){
return;
}
var _31=CPPropertyListCreateFromData(objj_msgSend(CPData,"dataWithString:",objj_files[defaultThemePath+"/Info.plist"].contents));
themes=objj_msgSend(_31,"objectForKey:","CPBundleReplacedFiles"),themeIndex=0,themeCount=objj_msgSend(themes,"count");
for(;themeIndex<themeCount;++themeIndex){
var _32=objj_msgSend(objj_msgSend(_CPThemeKeyedUnarchiver,"alloc"),"initForReadingWithData:bundle:",objj_msgSend(CPData,"dataWithString:",objj_files[defaultThemePath+"/"+themes[themeIndex]].contents),_30.bundle);
objj_msgSend(_32,"decodeObjectForKey:","root");
objj_msgSend(_32,"finishDecoding");
}
objj_msgSend(_2d,"setDefaultTheme:",objj_msgSend(CPTheme,"themeNamed:",defaultThemeName));
}
}),new objj_method(sel_getUid("setDefaultTheme:"),function(_33,_34,_35){
with(_33){
_2=_35;
}
}),new objj_method(sel_getUid("defaultTheme"),function(_36,_37){
with(_36){
return _2;
}
}),new objj_method(sel_getUid("themeNamed:"),function(_38,_39,_3a){
with(_38){
return _1[_3a];
}
}),new objj_method(sel_getUid("loadThemesAtURL:delegate:"),function(_3b,_3c,_3d,_3e){
with(_3b){
}
})]);
var _3f="CPThemeNameKey",_40="CPThemeClassNamesArrayKey";
var _5=objj_getClass("CPTheme");
if(!_5){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPTheme\""));
}
var _6=_5.isa;
class_addMethods(_5,[new objj_method(sel_getUid("initWithCoder:"),function(_41,_42,_43){
with(_41){
_41=objj_msgSendSuper({receiver:_41,super_class:objj_getClass("CPObject")},"init");
_name=objj_msgSend(_43,"decodeObjectForKey:",_3f);
_classTable={};
_1[_name]=_41;
if(_41){
var _44=objj_msgSend(_43,"decodeObjectForKey:",_40),_45=_44.length;
while(_45--){
var _46=_44[_45],_47=objj_getClass(_46),_48=objj_msgSend(_43,"decodeObjectForKey:",_46),_49=objj_msgSend(_48,"allKeys"),_4a=_49.length;
while(_4a--){
var key=_49[_4a];
objj_msgSend(_41,"addValue:forAttributeName:inClass:",objj_msgSend(_48,"objectForKey:",key),key,_47);
}
}
}
return _41;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_4c,_4d,_4e){
with(_4c){
var _4f=[];
for(var _50 in _classTable){
if(_classTable.hasOwnProperty(_50)){
var _51=_classTable[_50],_52=objj_msgSend(CPDictionary,"dictionary");
for(var key in _51){
if(key!=="prototype"&&_51.hasOwnProperty(key)){
objj_msgSend(_52,"setObject:forKey:",_51[key],key);
}
}
objj_msgSend(_4e,"encodeObject:forKey:",_52,_50);
_4f.push(_50);
}
}
objj_msgSend(_4e,"encodeObject:forKey:",_name,_3f);
objj_msgSend(_4e,"encodeObject:forKey:",_4f,_40);
}
})]);
var _5=objj_allocateClassPair(CPKeyedUnarchiver,"_CPThemeKeyedUnarchiver"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_bundle")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initForReadingWithData:bundle:"),function(_54,_55,_56,_57){
with(_54){
_54=objj_msgSendSuper({receiver:_54,super_class:objj_getClass("CPKeyedUnarchiver")},"initForReadingWithData:",_56);
if(_54){
_bundle=_57;
}
return _54;
}
}),new objj_method(sel_getUid("bundle"),function(_58,_59){
with(_58){
return _bundle;
}
})]);
p;19;CPThemedAttribute.jI;21;Foundation/CPObject.jc;5913;
CPControlStateNormal=0,CPControlStateHighlighted=1<<0,CPControlStateDisabled=1<<1,CPControlStateSelected=1<<2,CPControlStateDefault=1<<3,CPControlStateBordered=1<<4,CPControlStateBezeled=1<<5,CPControlStateVertical=1<<6;
var _1=[0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5],_2=function(_3){
var _4=0;
while(_3){
++_4;
_3&=(_3-1);
}
return _4;
};
var _5=objj_allocateClassPair(CPObject,"CPThemedAttribute"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_isSingularObject"),new objj_ivar("_cache"),new objj_ivar("_name"),new objj_ivar("_defaultValue"),new objj_ivar("_theme"),new objj_ivar("_themedClass"),new objj_ivar("_values"),new objj_ivar("_valueFromTheme")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithName:defaultValue:theme:class:"),function(_7,_8,_9,_a,_b,_c){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPObject")},"init");
if(_7){
_cache={};
_name=_9;
_defaultValue=_a;
_theme=_b;
_themedClass=_c;
_isSingularObject=YES;
_values=nil;
_valueFromTheme=objj_msgSend(_theme,"valueForAttributeName:inClass:",_name,_themedClass);
}
return _7;
}
}),new objj_method(sel_getUid("setName:"),function(_d,_e,_f){
with(_d){
_name=_f;
}
}),new objj_method(sel_getUid("name"),function(_10,_11){
with(_10){
return _name;
}
}),new objj_method(sel_getUid("setDefaultValue:"),function(_12,_13,_14){
with(_12){
_cache={};
_defaultValue=_14;
}
}),new objj_method(sel_getUid("setTheme:"),function(_15,_16,_17){
with(_15){
if(_theme===_17){
return;
}
_cache={};
_theme=_17;
_valueFromTheme=objj_msgSend(_theme,"valueForAttributeName:inClass:",_name,_themedClass);
}
}),new objj_method(sel_getUid("setThemedClass:"),function(_18,_19,_1a){
with(_18){
if(_themedClass===_1a){
return;
}
_themedClass=_1a;
_valueFromTheme=objj_msgSend(_theme,"valueForAttributeName:inClass:",_name,_themedClass);
}
}),new objj_method(sel_getUid("setValue:"),function(_1b,_1c,_1d){
with(_1b){
_cache={};
_isSingularObject=YES;
_values=_1d;
}
}),new objj_method(sel_getUid("value"),function(_1e,_1f){
with(_1e){
return objj_msgSend(_1e,"valueForControlState:",CPControlStateNormal);
}
}),new objj_method(sel_getUid("setValue:forControlState:"),function(_20,_21,_22,_23){
with(_20){
_cache={};
if(_23!==CPControlStateNormal){
if(_isSingularObject){
var _24=_values;
_isSingularObject=NO;
_values={};
if(_24){
_values[CPControlStateNormal]=_24;
}
}
_values[_23]=_22;
}else{
if(_isSingularObject){
_values=_22;
}else{
_values[CPControlStateNormal]=_22;
}
}
}
}),new objj_method(sel_getUid("valueForControlState:"),function(_25,_26,_27){
with(_25){
var _28=_cache[_27];
if(_28!==undefined&&_28!==nil){
return _28;
}
if(_isSingularObject){
var _28=_values;
}else{
var _28=_values[_27];
if((_28===undefined||_28===nil)&&_27>0){
if(_27&(_27-1)){
var _29=0;
for(state in _values){
if(!_values.hasOwnProperty(state)){
continue;
}
state=Number(state);
if((state&_27)===state){
var _2a=(state<_1.length)?_1[state]:_2(state);
if(_2a>_29){
_29=_2a;
_28=_values[state];
}
}
}
}
if(_28===undefined||_28===nil){
_28=_values[CPControlStateNormal];
}
}
}
if(_28===undefined||_28===nil){
_28=objj_msgSend(_valueFromTheme,"valueForControlState:",_27);
}
if(_28===undefined||_28===nil){
_28=_defaultValue;
}
_cache[_27]=_28;
return _28;
}
}),new objj_method(sel_getUid("themedAttributeMergedWithThemedAttribute:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=CPThemedAttributeMake(_name,_defaultValue,_theme,_themedClass);
_2e._isSingularObject=NO;
_2e._values={};
if(_isSingularObject){
_2e._values[CPControlStateNormal]=_values;
}else{
var _2f=_values;
for(state in _values){
if(_values.hasOwnProperty(state)){
_2e._values[state]=_values[state];
}
}
}
if(_2d._isSingularObject){
_2e._values[CPControlStateNormal]=_2d._values;
}else{
var _2f=_2d._values;
for(state in _2f){
if(_2f.hasOwnProperty(state)){
_2e._values[state]=_2f[state];
}
}
}
return _2e;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_30,_31,_32){
with(_30){
_30=objj_msgSendSuper({receiver:_30,super_class:objj_getClass("CPObject")},"init");
if(_30){
_cache={};
_isSingularObject=objj_msgSend(_32,"containsValueForKey:","value");
if(_isSingularObject){
_values=objj_msgSend(_32,"decodeObjectForKey:","value");
}else{
_values={};
var _33=objj_msgSend(_32,"decodeObjectForKey:","statesAndValues");
count=objj_msgSend(_33,"count");
while(count--){
var _34=_33[count--],_35=_33[count];
_values[_35]=_34;
}
}
}
return _30;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_36,_37,_38){
with(_36){
if(_isSingularObject){
objj_msgSend(_38,"encodeObject:forKey:",_values,"value");
return;
}
var _39=[];
for(state in _values){
if(!_values.hasOwnProperty(state)){
continue;
}
_39.push(state);
_39.push(_values[state]);
}
objj_msgSend(_38,"encodeObject:forKey:",_39,"statesAndValues");
}
})]);
CPThemedAttributeMake=function(_3a,_3b,_3c,_3d){
return objj_msgSend(objj_msgSend(CPThemedAttribute,"alloc"),"initWithName:defaultValue:theme:class:",_3a,_3b,_3c,_3d);
};
CPThemedAttributeEncode=function(_3e,_3f){
if(_3f._isSingularObject){
var _40=_3f._values;
if(_3f._values){
objj_msgSend(_3e,"encodeObject:forKey:",_40,"$a"+objj_msgSend(_3f,"name"));
}
}else{
objj_msgSend(_3e,"encodeObject:forKey:",_3f,"$a"+objj_msgSend(_3f,"name"));
}
};
CPThemedAttributeDecode=function(_41,_42,_43,_44,_45){
var key="$a"+_42;
if(!objj_msgSend(_41,"containsValueForKey:",key)){
return CPThemedAttributeMake(_42,_43,_44,_45);
}
var _47=objj_msgSend(_41,"decodeObjectForKey:",key);
if(!_47.isa||!objj_msgSend(_47,"isKindOfClass:",objj_msgSend(CPThemedAttribute,"class"))){
var _48=CPThemedAttributeMake(_42,_43,_44,_45);
objj_msgSend(_48,"setValue:",_47);
_47=_48;
}else{
objj_msgSend(_47,"setName:",_42);
objj_msgSend(_47,"setDefaultValue:",_43);
objj_msgSend(_47,"setTheme:",_44);
objj_msgSend(_47,"setThemedClass:",_45);
}
return _47;
};
p;15;CPThemedValue.jI;21;Foundation/CPObject.jc;5838;
CPControlStateNormal=0,CPControlStateHighlighted=1<<0,CPControlStateDisabled=1<<1,CPControlStateSelected=1<<2,CPControlStateDefault=1<<3,CPControlStateBordered=1<<4,CPControlStateBezeled=1<<5;
var _1=[0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,1,2,2,3,2,3,3,4,2,3,3,4,3,4,4,5],_2=function(_3){
var _4=0;
while(_3){
++_4;
_3&=(_3-1);
}
return _4;
};
var _5=objj_allocateClassPair(CPObject,"CPThemedAttribute"),_6=_5.isa;
class_addIvars(_5,[new objj_ivar("_isSingularObject"),new objj_ivar("_name"),new objj_ivar("_defaultValue"),new objj_ivar("_theme"),new objj_ivar("_themedClass"),new objj_ivar("_values"),new objj_ivar("_valueFromTheme")]);
objj_registerClassPair(_5);
objj_addClassForBundle(_5,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_5,[new objj_method(sel_getUid("initWithName:defaultValue:theme:class:"),function(_7,_8,_9,_a,_b,_c){
with(_7){
_7=objj_msgSendSuper({receiver:_7,super_class:objj_getClass("CPObject")},"init");
if(_7){
_name=_9;
_defaultValue=_a;
_theme=_b;
_themedClass=_c;
_isSingularObject=YES;
_values=nil;
_valueFromTheme=objj_msgSend(_theme,"valueForAttributeName:inClass:",_name,_themedClass);
}
return _7;
}
}),new objj_method(sel_getUid("setName:"),function(_d,_e,_f){
with(_d){
_name=_f;
}
}),new objj_method(sel_getUid("name"),function(_10,_11){
with(_10){
return _name;
}
}),new objj_method(sel_getUid("setDefaultValue:"),function(_12,_13,_14){
with(_12){
_defaultValue=_14;
}
}),new objj_method(sel_getUid("setTheme:"),function(_15,_16,_17){
with(_15){
if(_theme===_17){
return;
}
_theme=_17;
_valueFromTheme=objj_msgSend(_theme,"valueForName:inClass:",_name,_themedClass);
}
}),new objj_method(sel_getUid("setThemedClass:"),function(_18,_19,_1a){
with(_18){
if(_themedClass===_1a){
return;
}
_themedClass=_1a;
_valueFromTheme=objj_msgSend(_theme,"valueForName:inClass:",_name,_themedClass);
}
}),new objj_method(sel_getUid("setValue:"),function(_1b,_1c,_1d){
with(_1b){
_isSingularObject=YES;
_values=_1d;
}
}),new objj_method(sel_getUid("value"),function(_1e,_1f){
with(_1e){
return objj_msgSend(_1e,"valueForControlState:",CPControlStateNormal);
}
}),new objj_method(sel_getUid("setValue:forControlState:"),function(_20,_21,_22,_23){
with(_20){
if(_23!==CPControlStateNormal){
if(_isSingularObject){
var _24=_values;
_isSingularObject=NO;
_values={};
if(_24){
_values[CPControlStateNormal]=_24;
}
}
_values[_23]=_22;
}else{
if(_isSingularObject){
_values=_22;
}else{
_values[CPControlStateNormal]=_22;
}
}
}
}),new objj_method(sel_getUid("valueForControlState:"),function(_25,_26,_27){
with(_25){
if(_isSingularObject){
var _28=_values;
if(_28===undefined||_28===nil){
_28=objj_msgSend(_valueFromTheme,"valueForControlState:",_27);
}
if(_28===undefined||_28===nil){
_28=_defaultValue;
}
return _28;
}
var _28=_values[_27];
if((_28===undefined||_28===nil)&&_27>0){
if(_27&(_27-1)){
var _29=0;
for(state in _values){
if(!_values.hasOwnProperty(state)){
continue;
}
state=Number(state);
if((state&_27)===state){
var _2a=(state<_1.length)?_1[state]:_2(state);
if(_2a>_29){
_29=_2a;
_28=_values[state];
}
}
}
}
if(_28===undefined||_28===nil){
_28=_values[CPControlStateNormal];
}
}
if(_28===undefined||_28===nil){
_28=objj_msgSend(_valueFromTheme,"valueForControlState:",_27);
}
if(_28===undefined||_28===nil){
_28=_defaultValue;
}
return _28;
}
}),new objj_method(sel_getUid("themedAttributeMergedWithThemedAttribute:"),function(_2b,_2c,_2d){
with(_2b){
var _2e=CPThemedAttributeMake(_name,_defaultValue,_theme,_themedClass);
_2e._isSingularObject=NO;
_2e._values={};
if(_isSingularObject){
_2e._values[CPControlStateNormal]=_values;
}else{
var _2f=_values;
for(state in _values){
if(_values.hasOwnProperty(state)){
_2e._values[state]=_values[state];
}
}
}
if(_2d._isSingularObject){
_2e._values[CPControlStateNormal]=_2d._values;
}else{
var _2f=_2d._values;
for(state in _2f){
if(_2f.hasOwnProperty(state)){
_2e._values[state]=_2f[state];
}
}
}
return _2e;
}
}),new objj_method(sel_getUid("initWithCoder:"),function(_30,_31,_32){
with(_30){
_30=objj_msgSendSuper({receiver:_30,super_class:objj_getClass("CPObject")},"init");
if(_30){
_isSingularObject=objj_msgSend(_32,"containsValueForKey:","value");
if(_isSingularObject){
_values=objj_msgSend(_32,"decodeObjectForKey:","value");
}else{
_values={};
var _33=objj_msgSend(_32,"decodeObjectForKey:","statesAndValues");
count=objj_msgSend(_33,"count");
while(count--){
var _34=_33[count--],_35=_33[count];
_values[_35]=_34;
}
}
}
return _30;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_36,_37,_38){
with(_36){
if(_isSingularObject){
objj_msgSend(_38,"encodeObject:forKey:",_values,"value");
return;
}
var _39=[];
for(state in _values){
if(!_values.hasOwnProperty(state)){
continue;
}
_39.push(state);
_39.push(_values[state]);
}
objj_msgSend(_38,"encodeObject:forKey:",_39,"statesAndValues");
}
})]);
CPThemedAttributeMake=function(_3a,_3b,_3c,_3d){
return objj_msgSend(objj_msgSend(CPThemedAttribute,"alloc"),"initWithName:defaultValue:theme:class:",_3a,_3b,_3c,_3d);
};
CPThemedAttributeEncode=function(_3e,_3f){
if(_3f._isSingularObject){
var _40=_3f._values;
if(_3f._values){
objj_msgSend(_3e,"encodeObject:forKey:",_40,"$a"+objj_msgSend(_3f,"name"));
}
}else{
objj_msgSend(_3e,"encodeObject:forKey:",_3f,"$a"+objj_msgSend(_3f,"name"));
}
};
CPThemedAttributeDecode=function(_41,_42,_43,_44,_45){
var key="$a"+_42;
if(!objj_msgSend(_41,"containsValueForKey:",key)){
return CPThemedAttributeMake(_42,_43,_44,_45);
}
var _47=objj_msgSend(_41,"decodeObjectForKey:",key);
if(!objj_msgSend(_47,"isKindOfClass:",objj_msgSend(CPThemedAttribute,"class"))){
var _48=CPThemedAttributeMake(_42,_43,_44,_45);
objj_msgSend(_48,"setValue:",_47);
_47=_48;
}else{
objj_msgSend(_47,"setName:",_42);
objj_msgSend(_47,"setDefaultValue:",_43);
objj_msgSend(_47,"setTheme:",_44);
objj_msgSend(_47,"setThemedClass:",_45);
}
return _47;
};
p;11;CPToolbar.jI;21;Foundation/CPObject.ji;15;CPPopUpButton.ji;15;CPToolbarItem.jc;16678;
CPToolbarDisplayModeDefault=0;
CPToolbarDisplayModeIconAndLabel=1;
CPToolbarDisplayModeIconOnly=2;
CPToolbarDisplayModeLabelOnly=3;
var _1=nil;
var _2=nil;
var _3=objj_allocateClassPair(CPObject,"CPToolbar"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_identifier"),new objj_ivar("_displayMode"),new objj_ivar("_showsBaselineSeparator"),new objj_ivar("_allowsUserCustomization"),new objj_ivar("_isVisible"),new objj_ivar("_delegate"),new objj_ivar("_itemIdentifiers"),new objj_ivar("_identifiedItems"),new objj_ivar("_defaultItems"),new objj_ivar("_allowedItems"),new objj_ivar("_selectableItems"),new objj_ivar("_items"),new objj_ivar("_itemsSortedByVisibilityPriority"),new objj_ivar("_toolbarView"),new objj_ivar("_window")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithIdentifier:"),function(_5,_6,_7){
with(_5){
_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("CPObject")},"init");
if(_5){
_items=[];
_identifier=_7;
_isVisible=YES;
objj_msgSend(CPToolbar,"_addToolbar:forIdentifier:",_5,_identifier);
}
return _5;
}
}),new objj_method(sel_getUid("setDisplayMode:"),function(_8,_9,_a){
with(_8){
}
}),new objj_method(sel_getUid("identifier"),function(_b,_c){
with(_b){
return _identifier;
}
}),new objj_method(sel_getUid("delegate"),function(_d,_e){
with(_d){
return _delegate;
}
}),new objj_method(sel_getUid("isVisible"),function(_f,_10){
with(_f){
return _isVisible;
}
}),new objj_method(sel_getUid("setVisible:"),function(_11,_12,_13){
with(_11){
if(_isVisible===_13){
return;
}
_isVisible=_13;
objj_msgSend(_window,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("_window"),function(_14,_15){
with(_14){
return _window;
}
}),new objj_method(sel_getUid("_setWindow:"),function(_16,_17,_18){
with(_16){
_window=_18;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_19,_1a,_1b){
with(_19){
if(_delegate==_1b){
return;
}
_delegate=_1b;
objj_msgSend(_19,"_reloadToolbarItems");
}
}),new objj_method(sel_getUid("_loadConfiguration"),function(_1c,_1d){
with(_1c){
}
}),new objj_method(sel_getUid("_toolbarView"),function(_1e,_1f){
with(_1e){
if(!_toolbarView){
_toolbarView=objj_msgSend(objj_msgSend(_CPToolbarView,"alloc"),"initWithFrame:",CPRectMake(0,0,1200,59));
objj_msgSend(_toolbarView,"setToolbar:",_1e);
objj_msgSend(_toolbarView,"setAutoresizingMask:",CPViewWidthSizable);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
return _toolbarView;
}
}),new objj_method(sel_getUid("_reloadToolbarItems"),function(_20,_21){
with(_20){
if(!_delegate){
return;
}
var _22=objj_msgSend(_itemIdentifiers,"count");
if(!_22){
_itemIdentifiers=objj_msgSend(objj_msgSend(_delegate,"toolbarDefaultItemIdentifiers:",_20),"mutableCopy");
_22=objj_msgSend(_itemIdentifiers,"count");
}
_items=[];
var _23=0;
for(;_23<_22;++_23){
var _24=_itemIdentifiers[_23],_25=objj_msgSend(CPToolbarItem,"_standardItemWithItemIdentifier:",_24);
if(!_25){
_25=objj_msgSend(_delegate,"toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:",_20,_24,YES);
}
_25=objj_msgSend(_25,"copy");
if(_25==nil){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,sprintf("_delegate %s returned nil toolbar item returned for identifier %s",_delegate,_24));
}
objj_msgSend(_items,"addObject:",_25);
}
_itemsSortedByVisibilityPriority=objj_msgSend(_items,"sortedArrayUsingFunction:context:",_26,NULL);
objj_msgSend(_toolbarView,"reloadToolbarItems");
}
}),new objj_method(sel_getUid("items"),function(_27,_28){
with(_27){
return _items;
}
}),new objj_method(sel_getUid("visibleItems"),function(_29,_2a){
with(_29){
return objj_msgSend(_toolbarView,"visibleItems");
}
}),new objj_method(sel_getUid("itemsSortedByVisibilityPriority"),function(_2b,_2c){
with(_2b){
return _itemsSortedByVisibilityPriority;
}
}),new objj_method(sel_getUid("_itemForItemIdentifier:willBeInsertedIntoToolbar:"),function(_2d,_2e,_2f,_30){
with(_2d){
var _31=objj_msgSend(_identifiedItems,"objectForKey:",_2f);
if(!_31){
_31=objj_msgSend(CPToolbarItem,"_standardItemWithItemIdentifier:",_2f);
if(_delegate&&!_31){
_31=objj_msgSend(objj_msgSend(_delegate,"toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:",_2d,_2f,_30),"copy");
if(!_31){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,sprintf("_delegate %s returned nil toolbar item returned for identifier %s",_delegate,_2f));
}
}
objj_msgSend(_identifiedItems,"setObject:forKey:",_31,_2f);
}
return _31;
}
}),new objj_method(sel_getUid("_itemsWithIdentifiers:"),function(_32,_33,_34){
with(_32){
var _35=[];
for(var i=0;i<_34.length;i++){
objj_msgSend(_35,"addObject:",objj_msgSend(_32,"_itemForItemIdentifier:willBeInsertedIntoToolbar:",_34[i],NO));
}
return _35;
}
}),new objj_method(sel_getUid("_defaultToolbarItems"),function(_37,_38){
with(_37){
if(!_defaultItems){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("toolbarDefaultItemIdentifiers:"))){
_defaultItems=objj_msgSend(_37,"_itemsWithIdentifiers:",objj_msgSend(_delegate,"toolbarDefaultItemIdentifiers:",_37));
}
}
return _defaultItems;
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_39,_3a){
with(_39){
if(_39!=objj_msgSend(CPToolbar,"class")){
return;
}
_1=objj_msgSend(CPDictionary,"dictionary");
_2=objj_msgSend(CPDictionary,"dictionary");
}
}),new objj_method(sel_getUid("_addToolbar:forIdentifier:"),function(_3b,_3c,_3d,_3e){
with(_3b){
var _3f=objj_msgSend(_1,"objectForKey:",_3e);
if(!_3f){
_3f=[];
objj_msgSend(_1,"setObject:forKey:",_3f,_3e);
}
objj_msgSend(_3f,"addObject:",_3d);
}
})]);
var _40="CPToolbarIdentifierKey",_41="CPToolbarDisplayModeKey",_42="CPToolbarShowsBaselineSeparatorKey",_43="CPToolbarAllowsUserCustomizationKey",_44="CPToolbarIsVisibleKey",_45="CPToolbarDelegateKey",_46="CPToolbarIdentifiedItemsKey",_47="CPToolbarDefaultItemsKey",_48="CPToolbarAllowedItemsKey",_49="CPToolbarSelectableItemsKey";
var _3=objj_getClass("CPToolbar");
if(!_3){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPToolbar\""));
}
var _4=_3.isa;
class_addMethods(_3,[new objj_method(sel_getUid("initWithCoder:"),function(_4a,_4b,_4c){
with(_4a){
_4a=objj_msgSendSuper({receiver:_4a,super_class:objj_getClass("CPObject")},"init");
if(_4a){
_identifier=objj_msgSend(_4c,"decodeObjectForKey:",_40);
_displayMode=objj_msgSend(_4c,"decodeIntForKey:",_41);
_showsBaselineSeparator=objj_msgSend(_4c,"decodeBoolForKey:",_42);
_allowsUserCustomization=objj_msgSend(_4c,"decodeBoolForKey:",_43);
_isVisible=objj_msgSend(_4c,"decodeBoolForKey:",_44);
_identifiedItems=objj_msgSend(_4c,"decodeObjectForKey:",_46);
_defaultItems=objj_msgSend(_4c,"decodeObjectForKey:",_47);
_allowedItems=objj_msgSend(_4c,"decodeObjectForKey:",_48);
_selectableItems=objj_msgSend(_4c,"decodeObjectForKey:",_49);
_items=[];
objj_msgSend(CPToolbar,"_addToolbar:forIdentifier:",_4a,_identifier);
objj_msgSend(_4a,"setDelegate:",objj_msgSend(_4c,"decodeObjectForKey:",_45));
}
return _4a;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_4d,_4e,_4f){
with(_4d){
objj_msgSend(_4f,"encodeObject:forKey:",_identifier,_40);
objj_msgSend(_4f,"encodeInt:forKey:",_displayMode,_41);
objj_msgSend(_4f,"encodeBool:forKey:",_showsBaselineSeparator,_42);
objj_msgSend(_4f,"encodeBool:forKey:",_allowsUserCustomization,_43);
objj_msgSend(_4f,"encodeBool:forKey:",_isVisible,_44);
objj_msgSend(_4f,"encodeObject:forKey:",_identifiedItems,_46);
objj_msgSend(_4f,"encodeObject:forKey:",_defaultItems,_47);
objj_msgSend(_4f,"encodeObject:forKey:",_allowedItems,_48);
objj_msgSend(_4f,"encodeObject:forKey:",_selectableItems,_49);
objj_msgSend(_4f,"encodeConditionalObject:forKey:",_delegate,_45);
}
})]);
var _50=nil,_51=nil,_52=nil;
var _53=5,_54=10,_55=20;
var _56=function(_57,_58,_59,_5a){
return {index:_57,view:_58,label:_59,minWidth:_5a};
};
var _3=objj_allocateClassPair(CPView,"_CPToolbarView"),_4=_3.isa;
class_addIvars(_3,[new objj_ivar("_toolbar"),new objj_ivar("_flexibleWidthIndexes"),new objj_ivar("_visibleFlexibleWidthIndexes"),new objj_ivar("_itemInfos"),new objj_ivar("_visibleItems"),new objj_ivar("_invisibleItems"),new objj_ivar("_additionalItemsButton"),new objj_ivar("_labelColor"),new objj_ivar("_minWidth")]);
objj_registerClassPair(_3);
objj_addClassForBundle(_3,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_3,[new objj_method(sel_getUid("initWithFrame:"),function(_5b,_5c,_5d){
with(_5b){
_5b=objj_msgSendSuper({receiver:_5b,super_class:objj_getClass("CPView")},"initWithFrame:",_5d);
if(_5b){
_minWidth=0;
_labelColor=objj_msgSend(CPColor,"blackColor");
_additionalItemsButton=objj_msgSend(objj_msgSend(CPPopUpButton,"alloc"),"initWithFrame:pullsDown:",CGRectMake(0,0,10,15),YES);
objj_msgSend(_additionalItemsButton,"setBordered:",NO);
objj_msgSend(_additionalItemsButton,"setImagePosition:",CPImageOnly);
objj_msgSend(objj_msgSend(_additionalItemsButton,"menu"),"setShowsStateColumn:",NO);
objj_msgSend(_additionalItemsButton,"setAlternateImage:",_52);
}
return _5b;
}
}),new objj_method(sel_getUid("setToolbar:"),function(_5e,_5f,_60){
with(_5e){
_toolbar=_60;
}
}),new objj_method(sel_getUid("toolbar"),function(_61,_62){
with(_61){
return _toolbar;
}
}),new objj_method(sel_getUid("setLabelColor:"),function(_63,_64,_65){
with(_63){
if(_labelColor===_65){
return;
}
_labelColor=_65;
var _66=objj_msgSend(_toolbar,"items"),_67=objj_msgSend(_66,"count");
while(_67--){
objj_msgSend(objj_msgSend(_63,"labelForItem:",_66[_67]),"setTextColor:",_labelColor);
}
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_68,_69,_6a){
with(_68){
objj_msgSend(_68,"layoutSubviews");
}
}),new objj_method(sel_getUid("layoutSubviews"),function(_6b,_6c){
with(_6b){
var _6d=objj_msgSend(_toolbar,"items"),_6e=CGRectGetWidth(objj_msgSend(_6b,"bounds")),_6f=_minWidth,_70=objj_msgSend(CPIndexSet,"indexSet"),_71=[];
_visibleItems=_6d;
if(_6e<_6f){
_6e-=_55;
_visibleItems=objj_msgSend(_visibleItems,"copy");
var _72=objj_msgSend(_toolbar,"itemsSortedByVisibilityPriority"),_73=_72.length;
while(_6f>_6e){
var _74=_72[_73--];
_6f-=objj_msgSend(_6b,"minWidthForItem:",_74)+_54;
objj_msgSend(_visibleItems,"removeObjectIdenticalTo:",_74);
objj_msgSend(_71,"addObject:",_74);
objj_msgSend(objj_msgSend(_6b,"viewForItem:",_74),"setHidden:",YES);
objj_msgSend(objj_msgSend(_6b,"labelForItem:",_74),"setHidden:",YES);
}
}
var _75=_visibleItems.length,_76=0;
while(_75--){
var _74=_visibleItems[_75],_77=objj_msgSend(_74,"minSize"),_78=objj_msgSend(_6b,"viewForItem:",_74);
if(_77.width!=objj_msgSend(_74,"maxSize").width){
objj_msgSend(_70,"addIndex:",_75);
}else{
objj_msgSend(_78,"setFrameSize:",CGSizeMake(objj_msgSend(_74,"minSize").width,CGRectGetHeight(objj_msgSend(_78,"frame"))));
}
objj_msgSend(_78,"setHidden:",NO);
objj_msgSend(objj_msgSend(_6b,"labelForItem:",_74),"setHidden:",NO);
if(_76<_77.height){
_76=_77.height;
}
}
var _79=_6e-_6f,_7a=0;
while(_79&&objj_msgSend(_70,"count")){
_7a+=_79/objj_msgSend(_70,"count");
_79=0;
var _75=CPNotFound;
while((_75=objj_msgSend(_70,"indexGreaterThanIndex:",_75))!=CPNotFound){
var _74=_visibleItems[_75];
_78=objj_msgSend(_6b,"viewForItem:",_74),_7b=objj_msgSend(_78,"frame"),proposedWidth=objj_msgSend(_74,"minSize").width+_7a,constrainedWidth=MIN(proposedWidth,objj_msgSend(_74,"maxSize").width);
if(constrainedWidth<proposedWidth){
objj_msgSend(_70,"removeIndex:",_75);
_79+=proposedWidth-constrainedWidth;
}
objj_msgSend(_78,"setFrameSize:",CGSizeMake(constrainedWidth,CGRectGetHeight(_7b)));
}
}
var _73=_visibleItems.length,x=_54,_7d=[];
for(_75=0;_75<_73;++_75){
var _74=_visibleItems[_75],_78=objj_msgSend(_6b,"viewForItem:",_74),_7b=objj_msgSend(_78,"frame"),_7e=CGRectGetWidth(_7b),_7f=objj_msgSend(_6b,"labelForItem:",_74),_80=objj_msgSend(_7f,"frame"),_81=CGRectGetWidth(_80),_82=MAX(objj_msgSend(_6b,"minWidthForItem:",_74),_7e),_83=CGRectGetHeight(_7b);
objj_msgSend(_78,"setFrame:",CGRectMake(x+(_82-_7e)/2,_53+(_76-_83)/2,_7e,_83));
objj_msgSend(_7f,"setFrameOrigin:",CGPointMake(x+(_82-_81)/2,_53+_76+2));
x+=_82+_54;
if(objj_msgSend(_74,"itemIdentifier")==CPToolbarSeparatorItemIdentifier){
_7d.push(_74);
}
}
for(_75=0,_73=_7d.length;_75<_73;++_75){
var _78=objj_msgSend(_6b,"viewForItem:",_7d[_75]),_83=53;
objj_msgSend(_78,"setFrame:",CGRectMake(CGRectGetMinX(objj_msgSend(_78,"frame")),(59-_83)/2,CGRectGetWidth(objj_msgSend(_78,"frame")),_83));
}
if(objj_msgSend(_71,"count")){
var _75=0,_73=objj_msgSend(_6d,"count");
_invisibleItems=[];
for(;_75<_73;++_75){
var _74=_6d[_75];
if(objj_msgSend(_71,"indexOfObjectIdenticalTo:",_74)!=CPNotFound){
objj_msgSend(_invisibleItems,"addObject:",_74);
}
}
objj_msgSend(_additionalItemsButton,"setFrameOrigin:",CGPointMake(_6e+5,(CGRectGetHeight(objj_msgSend(_6b,"bounds"))-CGRectGetHeight(objj_msgSend(_additionalItemsButton,"frame")))/2));
objj_msgSend(_6b,"addSubview:",_additionalItemsButton);
objj_msgSend(_additionalItemsButton,"removeAllItems");
var _75=0,_73=objj_msgSend(_invisibleItems,"count");
objj_msgSend(_additionalItemsButton,"addItemWithTitle:","Additional Items");
objj_msgSend(objj_msgSend(_additionalItemsButton,"itemArray")[0],"setImage:",_51);
for(;_75<_73;++_75){
var _74=_invisibleItems[_75];
objj_msgSend(_additionalItemsButton,"addItemWithTitle:",objj_msgSend(_74,"label"));
var _84=objj_msgSend(_additionalItemsButton,"itemArray")[_75+1];
objj_msgSend(_84,"setImage:",objj_msgSend(_74,"image"));
objj_msgSend(_84,"setTarget:",objj_msgSend(_74,"target"));
objj_msgSend(_84,"setAction:",objj_msgSend(_74,"action"));
}
}else{
objj_msgSend(_additionalItemsButton,"removeFromSuperview");
}
}
}),new objj_method(sel_getUid("viewForItem:"),function(_85,_86,_87){
with(_85){
var _88=objj_msgSend(_itemInfos,"objectForKey:",objj_msgSend(_87,"hash"));
if(!_88){
return nil;
}
return _88.view;
}
}),new objj_method(sel_getUid("labelForItem:"),function(_89,_8a,_8b){
with(_89){
var _8c=objj_msgSend(_itemInfos,"objectForKey:",objj_msgSend(_8b,"hash"));
if(!_8c){
return nil;
}
return _8c.label;
}
}),new objj_method(sel_getUid("minWidthForItem:"),function(_8d,_8e,_8f){
with(_8d){
var _90=objj_msgSend(_itemInfos,"objectForKey:",objj_msgSend(_8f,"hash"));
if(!_90){
return 0;
}
return _90.minWidth;
}
}),new objj_method(sel_getUid("reloadToolbarItems"),function(_91,_92){
with(_91){
var _93=objj_msgSend(_91,"subviews"),_94=_93.length;
while(_94--){
objj_msgSend(_93[_94],"removeFromSuperview");
}
var _95=objj_msgSend(_toolbar,"items"),_96=0;
_94=_95.length;
_itemInfos=objj_msgSend(CPDictionary,"dictionary");
_minWidth=_54;
for(;_96<_94;++_96){
var _97=_95[_96],_98=objj_msgSend(_97,"view");
if(!_98){
_98=objj_msgSend(objj_msgSend(CPButton,"alloc"),"initWithFrame:",CGRectMake(0,0,32,32));
objj_msgSend(_98,"setBordered:",NO);
objj_msgSend(_98,"setImage:",objj_msgSend(_97,"image"));
objj_msgSend(_98,"setAlternateImage:",objj_msgSend(_97,"alternateImage"));
objj_msgSend(_98,"setTarget:",objj_msgSend(_97,"target"));
objj_msgSend(_98,"setAction:",objj_msgSend(_97,"action"));
objj_msgSend(_98,"setTag:",objj_msgSend(_97,"tag"));
objj_msgSend(_98,"setImagePosition:",CPImageOnly);
}
objj_msgSend(_91,"addSubview:",_98);
var _99=objj_msgSend(objj_msgSend(CPTextField,"alloc"),"initWithFrame:",CGRectMakeZero());
objj_msgSend(_99,"setStringValue:",objj_msgSend(_97,"label"));
objj_msgSend(_99,"setFont:",objj_msgSend(CPFont,"systemFontOfSize:",11));
objj_msgSend(_99,"setTextColor:",_labelColor);
objj_msgSend(_99,"sizeToFit");
objj_msgSend(_99,"setTarget:",objj_msgSend(_97,"target"));
objj_msgSend(_99,"setAction:",objj_msgSend(_97,"action"));
objj_msgSend(_91,"addSubview:",_99);
var _9a=objj_msgSend(_97,"minSize"),_9b=MAX(_9a.width,CGRectGetWidth(objj_msgSend(_99,"frame")));
objj_msgSend(_itemInfos,"setObject:forKey:",_56(_96,_98,_99,_9b),objj_msgSend(_97,"hash"));
_minWidth+=_9b+_54;
}
objj_msgSend(_91,"layoutSubviews");
}
})]);
class_addMethods(_4,[new objj_method(sel_getUid("initialize"),function(_9c,_9d){
with(_9c){
if(_9c!=objj_msgSend(_CPToolbarView,"class")){
return;
}
var _9e=objj_msgSend(CPBundle,"bundleForClass:",_9c);
_51=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_9e,"pathForResource:","_CPToolbarView/_CPToolbarViewExtraItemsImage.png"),CPSizeMake(10,15));
_52=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_9e,"pathForResource:","_CPToolbarView/_CPToolbarViewExtraItemsAlternateImage.png"),CGSizeMake(10,15));
}
})]);
var _26=function(lhs,rhs){
var _a1=objj_msgSend(lhs,"visibilityPriority"),_a2=objj_msgSend(rhs,"visibilityPriority");
if(_a1==_a2){
return CPOrderedSame;
}
if(_a1>_a2){
return CPOrderedAscending;
}
return CPOrderedDescending;
};
p;15;CPToolbarItem.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.jI;16;AppKit/CPImage.jI;15;AppKit/CPView.jc;9667;
CPToolbarItemVisibilityPriorityStandard=0;
CPToolbarItemVisibilityPriorityLow=-1000;
CPToolbarItemVisibilityPriorityHigh=1000;
CPToolbarItemVisibilityPriorityUser=2000;
CPToolbarSeparatorItemIdentifier="CPToolbarSeparatorItemIdentifier";
CPToolbarSpaceItemIdentifier="CPToolbarSpaceItemIdentifier";
CPToolbarFlexibleSpaceItemIdentifier="CPToolbarFlexibleSpaceItemIdentifier";
CPToolbarShowColorsItemIdentifier="CPToolbarShowColorsItemIdentifier";
CPToolbarShowFontsItemIdentifier="CPToolbarShowFontsItemIdentifier";
CPToolbarCustomizeToolbarItemIdentifier="CPToolbarCustomizeToolbarItemIdentifier";
CPToolbarPrintItemIdentifier="CPToolbarPrintItemIdentifier";
var _1=objj_allocateClassPair(CPObject,"CPToolbarItem"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_itemIdentifier"),new objj_ivar("_toolbar"),new objj_ivar("_label"),new objj_ivar("_paletteLabel"),new objj_ivar("_toolTip"),new objj_ivar("_tag"),new objj_ivar("_target"),new objj_ivar("_action"),new objj_ivar("_isEnabled"),new objj_ivar("_image"),new objj_ivar("_alternateImage"),new objj_ivar("_view"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_visibilityPriority")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithItemIdentifier:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPObject")},"init");
if(_3){
_itemIdentifier=_5;
_tag=0;
_isEnabled=YES;
_minSize=CGSizeMakeZero();
_maxSize=CGSizeMakeZero();
_visibilityPriority=CPToolbarItemVisibilityPriorityStandard;
}
return _3;
}
}),new objj_method(sel_getUid("itemIdentifier"),function(_6,_7){
with(_6){
return _itemIdentifier;
}
}),new objj_method(sel_getUid("toolbar"),function(_8,_9){
with(_8){
return _toolbar;
}
}),new objj_method(sel_getUid("label"),function(_a,_b){
with(_a){
return _label;
}
}),new objj_method(sel_getUid("setLabel:"),function(_c,_d,_e){
with(_c){
_label=_e;
}
}),new objj_method(sel_getUid("paletteLabel"),function(_f,_10){
with(_f){
return _paletteLabel;
}
}),new objj_method(sel_getUid("setPaletteLabel:"),function(_11,_12,_13){
with(_11){
_paletteLabel=_13;
}
}),new objj_method(sel_getUid("toolTip"),function(_14,_15){
with(_14){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("toolTip"))){
return objj_msgSend(_view,"toolTip");
}
return _toolTip;
}
}),new objj_method(sel_getUid("setToolTip:"),function(_16,_17,_18){
with(_16){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setToolTip:"))){
objj_msgSend(view,"setToolTip:",_18);
}
_toolTip=_18;
}
}),new objj_method(sel_getUid("tag"),function(_19,_1a){
with(_19){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("tag"))){
return objj_msgSend(_view,"tag");
}
return _tag;
}
}),new objj_method(sel_getUid("setTag:"),function(_1b,_1c,_1d){
with(_1b){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setTag:"))){
objj_msgSend(_view,"setTag:",_1d);
}
_tag=_1d;
}
}),new objj_method(sel_getUid("target"),function(_1e,_1f){
with(_1e){
if(_view){
return objj_msgSend(_view,"respondsToSelector:",sel_getUid("target"))?objj_msgSend(_view,"target"):nil;
}
return _target;
}
}),new objj_method(sel_getUid("setTarget:"),function(_20,_21,_22){
with(_20){
if(!_view){
_target=_22;
}else{
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setTarget:"))){
objj_msgSend(_view,"setTarget:",_22);
}
}
}
}),new objj_method(sel_getUid("action"),function(_23,_24){
with(_23){
if(_view){
return objj_msgSend(_view,"respondsToSelector:",sel_getUid("action"))?objj_msgSend(_view,"action"):nil;
}
return _action;
}
}),new objj_method(sel_getUid("setAction:"),function(_25,_26,_27){
with(_25){
if(!_view){
_action=_27;
}else{
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setAction:"))){
objj_msgSend(_view,"setAction:",_27);
}
}
}
}),new objj_method(sel_getUid("isEnabled"),function(_28,_29){
with(_28){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("isEnabled"))){
return objj_msgSend(_view,"isEnabled");
}
return _isEnabled;
}
}),new objj_method(sel_getUid("setEnabled:"),function(_2a,_2b,_2c){
with(_2a){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setEnabled:"))){
objj_msgSend(_view,"setEnabled:",_2c);
}
_isEnabled=_2c;
}
}),new objj_method(sel_getUid("image"),function(_2d,_2e){
with(_2d){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("image"))){
return objj_msgSend(_view,"image");
}
return _image;
}
}),new objj_method(sel_getUid("setImage:"),function(_2f,_30,_31){
with(_2f){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setImage:"))){
objj_msgSend(_view,"setImage:",_31);
}
_image=_31;
if(!_image){
return;
}
if(_minSize.width==0&&_minSize.height==0&&_maxSize.width==0&&_maxSize.height==0){
var _32=objj_msgSend(_image,"size");
if(_32.width>0||_32.height>0){
objj_msgSend(_2f,"setMinSize:",_32);
objj_msgSend(_2f,"setMaxSize:",_32);
}
}
}
}),new objj_method(sel_getUid("setAlternateImage:"),function(_33,_34,_35){
with(_33){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("setAlternateImage:"))){
objj_msgSend(_view,"setAlternateImage:",_35);
}
_alternateImage=_35;
}
}),new objj_method(sel_getUid("alternateImage"),function(_36,_37){
with(_36){
if(objj_msgSend(_view,"respondsToSelector:",sel_getUid("alternateIamge"))){
return objj_msgSend(_view,"alternateImage");
}
return _alternateImage;
}
}),new objj_method(sel_getUid("view"),function(_38,_39){
with(_38){
return _view;
}
}),new objj_method(sel_getUid("setView:"),function(_3a,_3b,_3c){
with(_3a){
if(_view==_3c){
return;
}
_view=_3c;
if(_view){
if(_tag!==0&&objj_msgSend(_view,"respondsToSelector:",sel_getUid("setTag:"))){
objj_msgSend(_view,"setTag:",_tag);
}
_target=nil;
_action=nil;
}
}
}),new objj_method(sel_getUid("minSize"),function(_3d,_3e){
with(_3d){
return _minSize;
}
}),new objj_method(sel_getUid("setMinSize:"),function(_3f,_40,_41){
with(_3f){
_minSize=CGSizeMakeCopy(_41);
_maxSize=CGSizeMake(MAX(_minSize.width,_maxSize.width),MAX(_minSize.height,_maxSize.height));
}
}),new objj_method(sel_getUid("maxSize"),function(_42,_43){
with(_42){
return _maxSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_44,_45,_46){
with(_44){
_maxSize=CGSizeMakeCopy(_46);
_minSize=CGSizeMake(MIN(_minSize.width,_maxSize.width),MIN(_minSize.height,_maxSize.height));
}
}),new objj_method(sel_getUid("visibilityPriority"),function(_47,_48){
with(_47){
return _visibilityPriority;
}
}),new objj_method(sel_getUid("setVisibilityPriority:"),function(_49,_4a,_4b){
with(_49){
_visibilityPriority=_4b;
}
})]);
var _1=objj_getClass("CPToolbarItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPToolbarItem\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("copy"),function(_4c,_4d){
with(_4c){
var _4e=objj_msgSend(objj_msgSend(objj_msgSend(_4c,"class"),"alloc"),"initWithItemIdentifier:",_itemIdentifier);
if(_view){
objj_msgSend(_4e,"setView:",objj_msgSend(CPKeyedUnarchiver,"unarchiveObjectWithData:",objj_msgSend(CPKeyedArchiver,"archivedDataWithRootObject:",_view)));
}
objj_msgSend(_4e,"setLabel:",_label);
objj_msgSend(_4e,"setPaletteLabel:",_paletteLabel);
objj_msgSend(_4e,"setToolTip:",objj_msgSend(_4c,"toolTip"));
objj_msgSend(_4e,"setTag:",objj_msgSend(_4c,"tag"));
objj_msgSend(_4e,"setTarget:",objj_msgSend(_4c,"target"));
objj_msgSend(_4e,"setAction:",objj_msgSend(_4c,"action"));
objj_msgSend(_4e,"setEnabled:",objj_msgSend(_4c,"isEnabled"));
objj_msgSend(_4e,"setImage:",_image);
objj_msgSend(_4e,"setAlternateImage:",_alternateImage);
objj_msgSend(_4e,"setMinSize:",_minSize);
objj_msgSend(_4e,"setMaxSize:",_maxSize);
objj_msgSend(_4e,"setVisibilityPriority:",_visibilityPriority);
return _4e;
}
})]);
var _4f=nil,_50=nil;
var _1=objj_getClass("CPToolbarItem");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPToolbarItem\""));
}
var _2=_1.isa;
class_addMethods(_2,[new objj_method(sel_getUid("_separatorItemView"),function(_51,_52){
with(_51){
if(!_4f){
_4f=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(0,0,2,32));
sizes={};
sizes["CPToolbarItemSeparator"]=[CGSizeMake(2,26),CGSizeMake(2,1),CGSizeMake(2,26)];
objj_msgSend(_4f,"setBackgroundColor:",_CPControlThreePartImagePattern(YES,sizes,"CPToolbarItem","Separator"));
}
return _4f;
}
}),new objj_method(sel_getUid("_spaceItemView"),function(_53,_54){
with(_53){
if(!_50){
_50=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero());
}
return _50;
}
}),new objj_method(sel_getUid("_standardItemWithItemIdentifier:"),function(_55,_56,_57){
with(_55){
var _58=objj_msgSend(objj_msgSend(CPToolbarItem,"alloc"),"initWithItemIdentifier:",_57);
switch(_57){
case CPToolbarSeparatorItemIdentifier:
objj_msgSend(_58,"setView:",objj_msgSend(_55,"_separatorItemView"));
objj_msgSend(_58,"setMinSize:",CGSizeMake(2,0));
objj_msgSend(_58,"setMaxSize:",CGSizeMake(2,100000));
return _58;
case CPToolbarSpaceItemIdentifier:
objj_msgSend(_58,"setView:",objj_msgSend(_55,"_spaceItemView"));
objj_msgSend(_58,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_58,"setMaxSize:",CGSizeMake(32,32));
return _58;
case CPToolbarFlexibleSpaceItemIdentifier:
objj_msgSend(_58,"setView:",objj_msgSend(_55,"_spaceItemView"));
objj_msgSend(_58,"setMinSize:",CGSizeMake(32,32));
objj_msgSend(_58,"setMaxSize:",CGSizeMake(10000,32));
return _58;
case CPToolbarShowColorsItemIdentifier:
return nil;
case CPToolbarShowFontsItemIdentifier:
return nil;
case CPToolbarCustomizeToolbarItemIdentifier:
return nil;
case CPToolbarPrintItemIdentifier:
return nil;
}
return nil;
}
})]);
p;8;CPView.jI;20;Foundation/CPArray.jI;26;Foundation/CPObjJRuntime.ji;19;CGAffineTransform.ji;12;CGGeometry.ji;9;CPColor.ji;20;CPDOMDisplayServer.ji;12;CPGeometry.ji;19;CPGraphicsContext.ji;13;CPResponder.ji;9;CPTheme.jc;58750;
CPViewNotSizable=0;
CPViewMinXMargin=1;
CPViewWidthSizable=2;
CPViewMaxXMargin=4;
CPViewMinYMargin=8;
CPViewHeightSizable=16;
CPViewMaxYMargin=32;
CPViewBoundsDidChangeNotification="CPViewBoundsDidChangeNotification";
CPViewFrameDidChangeNotification="CPViewFrameDidChangeNotification";
var _1=1<<0,_2=1<<1;
var _3=nil,_4=nil;
var _5=nil,_6=0,_7=1,_8=2,_9=3,_a={},_b={};
var _c=objj_allocateClassPair(CPResponder,"CPView"),_d=_c.isa;
class_addIvars(_c,[new objj_ivar("_window"),new objj_ivar("_superview"),new objj_ivar("_subviews"),new objj_ivar("_graphicsContext"),new objj_ivar("_tag"),new objj_ivar("_frame"),new objj_ivar("_bounds"),new objj_ivar("_boundsTransform"),new objj_ivar("_inverseBoundsTransform"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_isHidden"),new objj_ivar("_hitTests"),new objj_ivar("_postsFrameChangedNotifications"),new objj_ivar("_postsBoundsChangedNotifications"),new objj_ivar("_inhibitFrameAndBoundsChangedNotifications"),new objj_ivar("_displayHash"),new objj_ivar("_DOMElement"),new objj_ivar("_DOMContentsElement"),new objj_ivar("_DOMImageParts"),new objj_ivar("_DOMImageSizes"),new objj_ivar("_backgroundType"),new objj_ivar("_dirtyRect"),new objj_ivar("_opacity"),new objj_ivar("_backgroundColor"),new objj_ivar("_autoresizesSubviews"),new objj_ivar("_autoresizingMask"),new objj_ivar("_layer"),new objj_ivar("_wantsLayer"),new objj_ivar("_isInFullScreenMode"),new objj_ivar("_fullScreenModeState"),new objj_ivar("_needsLayout"),new objj_ivar("_ephemeralSubviews"),new objj_ivar("_theme"),new objj_ivar("_themedAttributes")]);
objj_registerClassPair(_c);
objj_addClassForBundle(_c,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_c,[new objj_method(sel_getUid("init"),function(_e,_f){
with(_e){
return objj_msgSend(_e,"initWithFrame:",CGRectMakeZero());
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_10,_11,_12){
with(_10){
_10=objj_msgSendSuper({receiver:_10,super_class:objj_getClass("CPResponder")},"init");
if(_10){
var _13=(_12.size.width),_14=(_12.size.height);
_subviews=[];
_tag=-1;
_frame={origin:{x:_12.origin.x,y:_12.origin.y},size:{width:_12.size.width,height:_12.size.height}};
_bounds={origin:{x:0,y:0},size:{width:_13,height:_14}};
_registeredDraggedTypes=[];
_autoresizingMask=CPViewNotSizable;
_autoresizesSubviews=YES;
_opacity=1;
_isHidden=NO;
_hitTests=YES;
_displayHash=objj_msgSend(_10,"hash");
_DOMElement=_5.cloneNode(false);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _15=_DOMElement.CPDOMDisplayContext[0];
if(!(_15>=0)){
_15=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_15]=0;
CPDOMDisplayServerInstructions[_15+1]=_DOMElement;
CPDOMDisplayServerInstructions[_15+2]=NULL;
CPDOMDisplayServerInstructions[_15+3]=(_12.origin.x);
CPDOMDisplayServerInstructions[_15+4]=(_12.origin.y);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _15=_DOMElement.CPDOMDisplayContext[4];
if(!(_15>=0)){
_15=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_15]=4;
CPDOMDisplayServerInstructions[_15+1]=_DOMElement;
CPDOMDisplayServerInstructions[_15+2]=_13;
CPDOMDisplayServerInstructions[_15+3]=_14;
_DOMImageParts=[];
_DOMImageSizes=[];
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themedAttributes={};
objj_msgSend(_10,"_loadThemedAttributes");
}
return _10;
}
}),new objj_method(sel_getUid("superview"),function(_16,_17){
with(_16){
return _superview;
}
}),new objj_method(sel_getUid("subviews"),function(_18,_19){
with(_18){
return _subviews;
}
}),new objj_method(sel_getUid("window"),function(_1a,_1b){
with(_1a){
return _window;
}
}),new objj_method(sel_getUid("addSubview:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"_insertSubview:atIndex:",_1e,CPNotFound);
}
}),new objj_method(sel_getUid("addSubview:positioned:relativeTo:"),function(_1f,_20,_21,_22,_23){
with(_1f){
var _24=_23?objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_23):CPNotFound;
if(_24===CPNotFound){
_24=(_22===CPWindowAbove)?objj_msgSend(_subviews,"count"):0;
}else{
if(_22===CPWindowAbove){
++_24;
}
}
objj_msgSend(_1f,"_insertSubview:atIndex:",_21,_24);
}
}),new objj_method(sel_getUid("_insertSubview:atIndex:"),function(_25,_26,_27,_28){
with(_25){
var _29=_subviews.length;
if(_27._superview==_25){
var _2a=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_27);
if(_2a===_28||_2a===_29-1&&_28===_29){
return;
}
objj_msgSend(_subviews,"removeObjectAtIndex:",_2a);
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_27._DOMElement;
if(_28>_2a){
--_28;
}
--_29;
}else{
objj_msgSend(_27,"removeFromSuperview");
objj_msgSend(_27,"_setWindow:",_window);
objj_msgSend(_27,"viewWillMoveToSuperview:",_25);
_27._superview=_25;
}
if(_28===CPNotFound||_28>=_29){
_subviews.push(_27);
if(_27._DOMElement.CPDOMDisplayContext){
_27._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_27._DOMElement;
}else{
_subviews.splice(_28,0,_27);
if(_27._DOMElement.CPDOMDisplayContext){
_27._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=7;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_27._DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_subviews[_28+1]._DOMElement;
}
objj_msgSend(_27,"setNextResponder:",_25);
objj_msgSend(_27,"viewDidMoveToSuperview");
objj_msgSend(_25,"didAddSubview:",_27);
}
}),new objj_method(sel_getUid("didAddSubview:"),function(_2b,_2c,_2d){
with(_2b){
}
}),new objj_method(sel_getUid("removeFromSuperview"),function(_2e,_2f){
with(_2e){
if(!_superview){
return;
}
objj_msgSend(_superview,"willRemoveSubview:",_2e);
objj_msgSend(objj_msgSend(_superview,"subviews"),"removeObject:",_2e);
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_superview._DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
_superview=nil;
objj_msgSend(_2e,"_setWindow:",nil);
}
}),new objj_method(sel_getUid("replaceSubview:with:"),function(_30,_31,_32,_33){
with(_30){
if(_32._superview!=_30){
return;
}
var _34=objj_msgSend(_subviews,"indexOfObjectIdenticalTo:",_32);
objj_msgSend(_32,"removeFromSuperview");
objj_msgSend(_30,"_insertSubview:atIndex:",_33,_34);
}
}),new objj_method(sel_getUid("_setWindow:"),function(_35,_36,_37){
with(_35){
if(_window===_37){
return;
}
if(objj_msgSend(_window,"firstResponder")===_35){
objj_msgSend(_window,"makeFirstResponder:",nil);
}
objj_msgSend(_35,"viewWillMoveToWindow:",_37);
_window=_37;
var _38=objj_msgSend(_subviews,"count");
while(_38--){
objj_msgSend(_subviews[_38],"_setWindow:",_37);
}
objj_msgSend(_35,"viewDidMoveToWindow");
}
}),new objj_method(sel_getUid("isDescendantOf:"),function(_39,_3a,_3b){
with(_39){
var _3c=_39;
do{
if(_3c==_3b){
return YES;
}
}while(_3c=objj_msgSend(_3c,"superview"));
return NO;
}
}),new objj_method(sel_getUid("viewDidMoveToSuperview"),function(_3d,_3e){
with(_3d){
objj_msgSend(_3d,"setNeedsDisplay:",YES);
}
}),new objj_method(sel_getUid("viewDidMoveToWindow"),function(_3f,_40){
with(_3f){
}
}),new objj_method(sel_getUid("viewWillMoveToSuperview:"),function(_41,_42,_43){
with(_41){
}
}),new objj_method(sel_getUid("viewWillMoveToWindow:"),function(_44,_45,_46){
with(_44){
}
}),new objj_method(sel_getUid("willRemoveSubview:"),function(_47,_48,_49){
with(_47){
}
}),new objj_method(sel_getUid("enclosingMenuItem"),function(_4a,_4b){
with(_4a){
var _4c=_4a;
while(!objj_msgSend(_4c,"isKindOfClass:",objj_msgSend(_CPMenuItemView,"class"))){
_4c=objj_msgSend(_4c,"superview");
}
if(_4c){
return _4c._menuItem;
}
return nil;
}
}),new objj_method(sel_getUid("tag"),function(_4d,_4e){
with(_4d){
return _tag;
}
}),new objj_method(sel_getUid("isFlipped"),function(_4f,_50){
with(_4f){
return YES;
}
}),new objj_method(sel_getUid("setFrame:"),function(_51,_52,_53){
with(_51){
if(((_frame.origin.x==_53.origin.x&&_frame.origin.y==_53.origin.y)&&(_frame.size.width==_53.size.width&&_frame.size.height==_53.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_51,"setFrameOrigin:",_53.origin);
objj_msgSend(_51,"setFrameSize:",_53.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsFrameChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewFrameDidChangeNotification,_51);
}
}
}),new objj_method(sel_getUid("frame"),function(_54,_55){
with(_54){
return {origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}};
}
}),new objj_method(sel_getUid("setCenter:"),function(_56,_57,_58){
with(_56){
objj_msgSend(_56,"setFrameOrigin:",CGPointMake(_58.x-_frame.size.width/2,_58.y-_frame.size.height/2));
}
}),new objj_method(sel_getUid("center"),function(_59,_5a){
with(_59){
return CGPointMake(_frame.size.width/2+_frame.origin.x,_frame.size.height/2+_frame.origin.y);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_5b,_5c,_5d){
with(_5b){
var _5e=_frame.origin;
if(!_5d||(_5e.x==_5d.x&&_5e.y==_5d.y)){
return;
}
_5e.x=_5d.x;
_5e.y=_5d.y;
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewFrameDidChangeNotification,_5b);
}
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _5f=_DOMElement.CPDOMDisplayContext[0];
if(!(_5f>=0)){
_5f=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_5f]=0;
CPDOMDisplayServerInstructions[_5f+1]=_DOMElement;
CPDOMDisplayServerInstructions[_5f+2]=_superview?_superview._boundsTransform:NULL;
CPDOMDisplayServerInstructions[_5f+3]=_5e.x;
CPDOMDisplayServerInstructions[_5f+4]=_5e.y;
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_60,_61,_62){
with(_60){
var _63=_frame.size;
if(!_62||(_63.width==_62.width&&_63.height==_62.height)){
return;
}
var _64={width:_63.width,height:_63.height};
_63.width=_62.width;
_63.height=_62.height;
if(YES){
_bounds.size.width=_62.width;
_bounds.size.height=_62.height;
}
if(_layer){
objj_msgSend(_layer,"_owningViewBoundsChanged");
}
if(_autoresizesSubviews){
objj_msgSend(_60,"resizeSubviewsWithOldSize:",_64);
}
objj_msgSend(_60,"setNeedsLayout");
objj_msgSend(_60,"setNeedsDisplay:",YES);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _65=_DOMElement.CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMElement;
CPDOMDisplayServerInstructions[_65+2]=_63.width;
CPDOMDisplayServerInstructions[_65+3]=_63.height;
if(_DOMContentsElement){
if(!_DOMContentsElement.CPDOMDisplayContext){
_DOMContentsElement.CPDOMDisplayContext=[];
}
var _65=_DOMContentsElement.CPDOMDisplayContext[5];
if(!(_65>=0)){
_65=_DOMContentsElement.CPDOMDisplayContext[5]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=5;
CPDOMDisplayServerInstructions[_65+1]=_DOMContentsElement;
CPDOMDisplayServerInstructions[_65+2]=_63.width;
CPDOMDisplayServerInstructions[_65+3]=_63.height;
if(!_DOMContentsElement.CPDOMDisplayContext){
_DOMContentsElement.CPDOMDisplayContext=[];
}
var _65=_DOMContentsElement.CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMContentsElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMContentsElement;
CPDOMDisplayServerInstructions[_65+2]=_63.width;
CPDOMDisplayServerInstructions[_65+3]=_63.height;
}
if(_backgroundType!==_6){
var _66=objj_msgSend(objj_msgSend(_backgroundColor,"patternImage"),"imageSlices");
if(_backgroundType===_7){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_65+2]=_63.width;
CPDOMDisplayServerInstructions[_65+3]=_63.height-_DOMImageSizes[0].height-_DOMImageSizes[2].height;
}else{
if(_backgroundType===_8){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_65+2]=_63.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width;
CPDOMDisplayServerInstructions[_65+3]=_63.height;
}else{
if(_backgroundType===_9){
var _67=_63.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width,_68=_63.height-_DOMImageSizes[0].height-_DOMImageSizes[6].height;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_65+2]=_67;
CPDOMDisplayServerInstructions[_65+3]=_DOMImageSizes[0].height;
if(!_DOMImageParts[3].CPDOMDisplayContext){
_DOMImageParts[3].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[3].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[3].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[3];
CPDOMDisplayServerInstructions[_65+2]=_DOMImageSizes[3].width;
CPDOMDisplayServerInstructions[_65+3]=_68;
if(!_DOMImageParts[4].CPDOMDisplayContext){
_DOMImageParts[4].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[4].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[4].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[4];
CPDOMDisplayServerInstructions[_65+2]=_67;
CPDOMDisplayServerInstructions[_65+3]=_68;
if(!_DOMImageParts[5].CPDOMDisplayContext){
_DOMImageParts[5].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[5].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[5].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[5];
CPDOMDisplayServerInstructions[_65+2]=_DOMImageSizes[5].width;
CPDOMDisplayServerInstructions[_65+3]=_68;
if(!_DOMImageParts[7].CPDOMDisplayContext){
_DOMImageParts[7].CPDOMDisplayContext=[];
}
var _65=_DOMImageParts[7].CPDOMDisplayContext[4];
if(!(_65>=0)){
_65=_DOMImageParts[7].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_65]=4;
CPDOMDisplayServerInstructions[_65+1]=_DOMImageParts[7];
CPDOMDisplayServerInstructions[_65+2]=_67;
CPDOMDisplayServerInstructions[_65+3]=_DOMImageSizes[7].height;
}
}
}
}
if(_postsFrameChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewFrameDidChangeNotification,_60);
}
}
}),new objj_method(sel_getUid("setBounds:"),function(_69,_6a,_6b){
with(_69){
if(((_bounds.origin.x==_6b.origin.x&&_bounds.origin.y==_6b.origin.y)&&(_bounds.size.width==_6b.size.width&&_bounds.size.height==_6b.size.height))){
return;
}
_inhibitFrameAndBoundsChangedNotifications=YES;
objj_msgSend(_69,"setBoundsOrigin:",_6b.origin);
objj_msgSend(_69,"setBoundsSize:",_6b.size);
_inhibitFrameAndBoundsChangedNotifications=NO;
if(_postsBoundsChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_69);
}
}
}),new objj_method(sel_getUid("bounds"),function(_6c,_6d){
with(_6c){
return {origin:{x:_bounds.origin.x,y:_bounds.origin.y},size:{width:_bounds.size.width,height:_bounds.size.height}};
}
}),new objj_method(sel_getUid("setBoundsOrigin:"),function(_6e,_6f,_70){
with(_6e){
var _71=_bounds.origin;
if((_71.x==_70.x&&_71.y==_70.y)){
return;
}
_71.x=_70.x;
_71.y=_70.y;
if(_71.x!=0||_71.y!=0){
_boundsTransform={a:1,b:0,c:0,d:1,tx:-_71.x,ty:-_71.y};
_inverseBoundsTransform=CGAffineTransformInvert(_boundsTransform);
}else{
_boundsTransform=nil;
_inverseBoundsTransform=nil;
}
var _72=_subviews.length;
while(_72--){
var _73=_subviews[_72],_71=_73._frame.origin;
if(!_73._DOMElement.CPDOMDisplayContext){
_73._DOMElement.CPDOMDisplayContext=[];
}
var _74=_73._DOMElement.CPDOMDisplayContext[0];
if(!(_74>=0)){
_74=_73._DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_74]=0;
CPDOMDisplayServerInstructions[_74+1]=_73._DOMElement;
CPDOMDisplayServerInstructions[_74+2]=_boundsTransform;
CPDOMDisplayServerInstructions[_74+3]=_71.x;
CPDOMDisplayServerInstructions[_74+4]=_71.y;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_6e);
}
}
}),new objj_method(sel_getUid("setBoundsSize:"),function(_75,_76,_77){
with(_75){
var _78=_bounds.size;
if((_78.width==_77.width&&_78.height==_77.height)){
return;
}
var _79=_frame.size;
if(!(_78.width==_79.width&&_78.height==_79.height)){
var _7a=_bounds.origin;
_7a.x/=_78.width/_79.width;
_7a.y/=_78.height/_79.height;
}
_78.width=_77.width;
_78.height=_77.height;
if(!(_78.width==_79.width&&_78.height==_79.height)){
var _7a=_bounds.origin;
_7a.x*=_78.width/_79.width;
_7a.y*=_78.height/_79.height;
}
if(_postsBoundsChangedNotifications&&!_inhibitFrameAndBoundsChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_75);
}
}
}),new objj_method(sel_getUid("resizeWithOldSuperviewSize:"),function(_7b,_7c,_7d){
with(_7b){
var _7e=objj_msgSend(_7b,"autoresizingMask");
if(_7e==CPViewNotSizable){
return;
}
var _7f=_superview._frame,_80={origin:{x:_frame.origin.x,y:_frame.origin.y},size:{width:_frame.size.width,height:_frame.size.height}},dX=((_7f.size.width)-_7d.width)/(((_7e&CPViewMinXMargin)?1:0)+(_7e&CPViewWidthSizable?1:0)+(_7e&CPViewMaxXMargin?1:0)),dY=((_7f.size.height)-_7d.height)/((_7e&CPViewMinYMargin?1:0)+(_7e&CPViewHeightSizable?1:0)+(_7e&CPViewMaxYMargin?1:0));
if(_7e&CPViewMinXMargin){
_80.origin.x+=dX;
}
if(_7e&CPViewWidthSizable){
_80.size.width+=dX;
}
if(_7e&CPViewMinYMargin){
_80.origin.y+=dY;
}
if(_7e&CPViewHeightSizable){
_80.size.height+=dY;
}
objj_msgSend(_7b,"setFrame:",_80);
}
}),new objj_method(sel_getUid("resizeSubviewsWithOldSize:"),function(_83,_84,_85){
with(_83){
var _86=_subviews.length;
while(_86--){
objj_msgSend(_subviews[_86],"resizeWithOldSuperviewSize:",_85);
}
}
}),new objj_method(sel_getUid("setAutoresizesSubviews:"),function(_87,_88,_89){
with(_87){
_autoresizesSubviews=_89;
}
}),new objj_method(sel_getUid("autoresizesSubviews"),function(_8a,_8b){
with(_8a){
return _autoresizesSubviews;
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(_8c,_8d,_8e){
with(_8c){
_autoresizingMask=_8e;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(_8f,_90){
with(_8f){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("enterFullScreenMode"),function(_91,_92){
with(_91){
return objj_msgSend(_91,"enterFullScreenMode:withOptions:",nil,nil);
}
}),new objj_method(sel_getUid("enterFullScreenMode:withOptions:"),function(_93,_94,_95,_96){
with(_93){
_fullScreenModeState=_97(_93);
var _98=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",objj_msgSend(objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"),"contentBounds"),CPBorderlessWindowMask);
objj_msgSend(_98,"setLevel:",CPScreenSaverWindowLevel);
objj_msgSend(_98,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
var _99=objj_msgSend(_98,"contentView");
objj_msgSend(_99,"setBackgroundColor:",objj_msgSend(CPColor,"blackColor"));
objj_msgSend(_99,"addSubview:",_93);
objj_msgSend(_93,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_93,"setFrame:",CGRectMakeCopy(objj_msgSend(_99,"bounds")));
objj_msgSend(_98,"makeKeyAndOrderFront:",_93);
objj_msgSend(_98,"makeFirstResponder:",_93);
_isInFullScreenMode=YES;
return YES;
}
}),new objj_method(sel_getUid("exitFullScreenMode"),function(_9a,_9b){
with(_9a){
objj_msgSend(_9a,"exitFullScreenModeWithOptions:",nil);
}
}),new objj_method(sel_getUid("exitFullScreenModeWithOptions:"),function(_9c,_9d,_9e){
with(_9c){
if(!_isInFullScreenMode){
return;
}
_isInFullScreenMode=NO;
objj_msgSend(_9c,"setFrame:",_fullScreenModeState.frame);
objj_msgSend(_9c,"setAutoresizingMask:",_fullScreenModeState.autoresizingMask);
objj_msgSend(_fullScreenModeState.superview,"_insertSubview:atIndex:",_9c,_fullScreenModeState.index);
objj_msgSend(objj_msgSend(_9c,"window"),"orderOut:",_9c);
}
}),new objj_method(sel_getUid("isInFullScreenMode"),function(_9f,_a0){
with(_9f){
return _isInFullScreenMode;
}
}),new objj_method(sel_getUid("setHidden:"),function(_a1,_a2,_a3){
with(_a1){
if(_isHidden==_a3){
return;
}
_isHidden=_a3;
_DOMElement.style.display=_isHidden?"none":"block";
}
}),new objj_method(sel_getUid("isHidden"),function(_a4,_a5){
with(_a4){
return _isHidden;
}
}),new objj_method(sel_getUid("setAlphaValue:"),function(_a6,_a7,_a8){
with(_a6){
if(_opacity==_a8){
return;
}
_opacity=_a8;
if(CPFeatureIsCompatible(CPOpacityRequiresFilterFeature)){
if(_a8==1){
try{
_DOMElement.style.removeAttribute("filter");
}
catch(anException){
}
}else{
_DOMElement.style.filter="alpha(opacity="+_a8*100+")";
}
}else{
_DOMElement.style.opacity=_a8;
}
}
}),new objj_method(sel_getUid("alphaValue"),function(_a9,_aa){
with(_a9){
return _opacity;
}
}),new objj_method(sel_getUid("isHiddenOrHasHiddenAncestor"),function(_ab,_ac){
with(_ab){
var _ad=_ab;
while(!objj_msgSend(_ad,"isHidden")){
_ad=objj_msgSend(_ad,"superview");
}
return _ad!=nil;
}
}),new objj_method(sel_getUid("acceptsFirstMouse:"),function(_ae,_af,_b0){
with(_ae){
return YES;
}
}),new objj_method(sel_getUid("hitTests"),function(_b1,_b2){
with(_b1){
return _hitTests;
}
}),new objj_method(sel_getUid("setHitTests:"),function(_b3,_b4,_b5){
with(_b3){
_hitTests=_b5;
}
}),new objj_method(sel_getUid("hitTest:"),function(_b6,_b7,_b8){
with(_b6){
if(_isHidden||!_hitTests||!CPRectContainsPoint(_frame,_b8)){
return nil;
}
var _b9=nil,i=_subviews.length,_bb={x:_b8.x-(_frame.origin.x),y:_b8.y-(_frame.origin.y)};
if(_inverseBoundsTransform){
_bb={x:_bb.x*_inverseBoundsTransform.a+_bb.y*_inverseBoundsTransform.c+_inverseBoundsTransform.tx,y:_bb.x*_inverseBoundsTransform.b+_bb.y*_inverseBoundsTransform.d+_inverseBoundsTransform.ty};
}
while(i--){
if(_b9=objj_msgSend(_subviews[i],"hitTest:",_bb)){
return _b9;
}
}
return _b6;
}
}),new objj_method(sel_getUid("mouseDownCanMoveWindow"),function(_bc,_bd){
with(_bc){
return !objj_msgSend(_bc,"isOpaque");
}
}),new objj_method(sel_getUid("mouseDown:"),function(_be,_bf,_c0){
with(_be){
if(objj_msgSend(_be,"mouseDownCanMoveWindow")){
objj_msgSendSuper({receiver:_be,super_class:objj_getClass("CPResponder")},"mouseDown:",_c0);
}
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_c1,_c2,_c3){
with(_c1){
if(_backgroundColor==_c3){
return;
}
_backgroundColor=_c3;
var _c4=objj_msgSend(_backgroundColor,"patternImage"),_c5=0;
if(objj_msgSend(_c4,"isThreePartImage")){
_backgroundType=objj_msgSend(_c4,"isVertical")?_7:_8;
_c5=3-_DOMImageParts.length;
}else{
if(objj_msgSend(_c4,"isNinePartImage")){
_backgroundType=_9;
_c5=9-_DOMImageParts.length;
}else{
_backgroundType=_6;
_c5=0-_DOMImageParts.length;
}
}
if(_c5>0){
while(_c5--){
var _c6=_5.cloneNode(false);
_c6.style.zIndex=-1000;
_DOMImageParts.push(_c6);
_DOMElement.appendChild(_c6);
}
}else{
_c5=-_c5;
while(_c5--){
_DOMElement.removeChild(_DOMImageParts.pop());
}
}
if(_backgroundType==_6){
_DOMElement.style.background=_backgroundColor?objj_msgSend(_backgroundColor,"cssString"):"";
}else{
var _c7=objj_msgSend(_c4,"imageSlices"),_c8=_c7.length,_c9=_frame.size;
while(_c8--){
var _ca=_c7[_c8],_cb=_DOMImageSizes[_c8]=_ca?objj_msgSend(_ca,"size"):{width:0,height:0};
if(!_DOMImageParts[_c8].CPDOMDisplayContext){
_DOMImageParts[_c8].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[_c8].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[_c8].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[_c8];
CPDOMDisplayServerInstructions[_cc+2]=_cb.width;
CPDOMDisplayServerInstructions[_cc+3]=_cb.height;
_DOMImageParts[_c8].style.background=_ca?"url(\""+objj_msgSend(_ca,"filename")+"\")":"";
}
if(_backgroundType==_9){
var _cd=_c9.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width,_ce=_c9.height-_DOMImageSizes[0].height-_DOMImageSizes[6].height;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_cc+2]=_cd;
CPDOMDisplayServerInstructions[_cc+3]=_DOMImageSizes[0].height;
if(!_DOMImageParts[3].CPDOMDisplayContext){
_DOMImageParts[3].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[3].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[3].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[3];
CPDOMDisplayServerInstructions[_cc+2]=_DOMImageSizes[3].width;
CPDOMDisplayServerInstructions[_cc+3]=_ce;
if(!_DOMImageParts[4].CPDOMDisplayContext){
_DOMImageParts[4].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[4].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[4].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[4];
CPDOMDisplayServerInstructions[_cc+2]=_cd;
CPDOMDisplayServerInstructions[_cc+3]=_ce;
if(!_DOMImageParts[5].CPDOMDisplayContext){
_DOMImageParts[5].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[5].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[5].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[5];
CPDOMDisplayServerInstructions[_cc+2]=_DOMImageSizes[5].width;
CPDOMDisplayServerInstructions[_cc+3]=_ce;
if(!_DOMImageParts[7].CPDOMDisplayContext){
_DOMImageParts[7].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[7].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[7].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[7];
CPDOMDisplayServerInstructions[_cc+2]=_cd;
CPDOMDisplayServerInstructions[_cc+3]=_DOMImageSizes[7].height;
if(!_DOMImageParts[0].CPDOMDisplayContext){
_DOMImageParts[0].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[0].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[0].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[0];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[1].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[1].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=_DOMImageSizes[0].width;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[2].CPDOMDisplayContext){
_DOMImageParts[2].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[2].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[2].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=1;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[2];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[3].CPDOMDisplayContext){
_DOMImageParts[3].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[3].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[3].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[3];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=_DOMImageSizes[1].height;
if(!_DOMImageParts[4].CPDOMDisplayContext){
_DOMImageParts[4].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[4].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[4].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[4];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=_DOMImageSizes[0].width;
CPDOMDisplayServerInstructions[_cc+4]=_DOMImageSizes[0].height;
if(!_DOMImageParts[5].CPDOMDisplayContext){
_DOMImageParts[5].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[5].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[5].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=1;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[5];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=_DOMImageSizes[1].height;
if(!_DOMImageParts[6].CPDOMDisplayContext){
_DOMImageParts[6].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[6].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[6].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=2;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[6];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[7].CPDOMDisplayContext){
_DOMImageParts[7].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[7].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[7].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=2;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[7];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=_DOMImageSizes[6].width;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[8].CPDOMDisplayContext){
_DOMImageParts[8].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[8].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[8].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=3;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[8];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
}else{
if(_backgroundType==_7){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_cc+2]=_c9.width;
CPDOMDisplayServerInstructions[_cc+3]=_c9.height-_DOMImageSizes[0].height-_DOMImageSizes[2].height;
if(!_DOMImageParts[0].CPDOMDisplayContext){
_DOMImageParts[0].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[0].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[0].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[0];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[1].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[1].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=_DOMImageSizes[0].height;
if(!_DOMImageParts[2].CPDOMDisplayContext){
_DOMImageParts[2].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[2].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[2].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=2;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[2];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
}else{
if(_backgroundType==_8){
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[1].CPDOMDisplayContext[4];
if(!(_cc>=0)){
_cc=_DOMImageParts[1].CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_cc]=4;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_cc+2]=_c9.width-_DOMImageSizes[0].width-_DOMImageSizes[2].width;
CPDOMDisplayServerInstructions[_cc+3]=_c9.height;
if(!_DOMImageParts[0].CPDOMDisplayContext){
_DOMImageParts[0].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[0].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[0].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[0];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[1].CPDOMDisplayContext){
_DOMImageParts[1].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[1].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[1].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=0;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[1];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=_DOMImageSizes[0].width;
CPDOMDisplayServerInstructions[_cc+4]=0;
if(!_DOMImageParts[2].CPDOMDisplayContext){
_DOMImageParts[2].CPDOMDisplayContext=[];
}
var _cc=_DOMImageParts[2].CPDOMDisplayContext[0];
if(!(_cc>=0)){
_cc=_DOMImageParts[2].CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_cc]=1;
CPDOMDisplayServerInstructions[_cc+1]=_DOMImageParts[2];
CPDOMDisplayServerInstructions[_cc+2]=NULL;
CPDOMDisplayServerInstructions[_cc+3]=0;
CPDOMDisplayServerInstructions[_cc+4]=0;
}
}
}
}
}
}),new objj_method(sel_getUid("backgroundColor"),function(_cf,_d0){
with(_cf){
return _backgroundColor;
}
}),new objj_method(sel_getUid("convertPoint:fromView:"),function(_d1,_d2,_d3,_d4){
with(_d1){
return CGPointApplyAffineTransform(_d3,_d5(_d4,_d1));
}
}),new objj_method(sel_getUid("convertPoint:toView:"),function(_d6,_d7,_d8,_d9){
with(_d6){
return CGPointApplyAffineTransform(_d8,_d5(_d6,_d9));
}
}),new objj_method(sel_getUid("convertSize:fromView:"),function(_da,_db,_dc,_dd){
with(_da){
return CGSizeApplyAffineTransform(_dc,_d5(_dd,_da));
}
}),new objj_method(sel_getUid("convertSize:toView:"),function(_de,_df,_e0,_e1){
with(_de){
return CGSizeApplyAffineTransform(_e0,_d5(_de,_e1));
}
}),new objj_method(sel_getUid("convertRect:fromView:"),function(_e2,_e3,_e4,_e5){
with(_e2){
return CGRectApplyAffineTransform(_e4,_d5(_e5,_e2));
}
}),new objj_method(sel_getUid("convertRect:toView:"),function(_e6,_e7,_e8,_e9){
with(_e6){
return CGRectApplyAffineTransform(_e8,_d5(_e6,_e9));
}
}),new objj_method(sel_getUid("setPostsFrameChangedNotifications:"),function(_ea,_eb,_ec){
with(_ea){
if(_postsFrameChangedNotifications==_ec){
return;
}
_postsFrameChangedNotifications=_ec;
if(_postsFrameChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewFrameDidChangeNotification,_ea);
}
}
}),new objj_method(sel_getUid("postsFrameChangedNotifications"),function(_ed,_ee){
with(_ed){
return _postsFrameChangedNotifications;
}
}),new objj_method(sel_getUid("setPostsBoundsChangedNotifications:"),function(_ef,_f0,_f1){
with(_ef){
if(_postsBoundsChangedNotifications==_f1){
return;
}
_postsBoundsChangedNotifications=_f1;
if(_postsBoundsChangedNotifications){
objj_msgSend(_3,"postNotificationName:object:",CPViewBoundsDidChangeNotification,_ef);
}
}
}),new objj_method(sel_getUid("postsBoundsChangedNotifications"),function(_f2,_f3){
with(_f2){
return _postsBoundsChangedNotifications;
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_f4,_f5,_f6,_f7,_f8,_f9,_fa,_fb,_fc){
with(_f4){
objj_msgSend(_window,"dragImage:at:offset:event:pasteboard:source:slideBack:",_f6,objj_msgSend(_f4,"convertPoint:toView:",_f7,nil),_f8,_f9,_fa,_fb,_fc);
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(_fd,_fe,_ff,_100,_101,_102,_103,_104,_105){
with(_fd){
objj_msgSend(_window,"dragView:at:offset:event:pasteboard:source:slideBack:",_ff,objj_msgSend(_fd,"convertPoint:toView:",_100,nil),_101,_102,_103,_104,_105);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(self,_cmd,_108){
with(self){
_registeredDraggedTypes=objj_msgSend(_108,"copy");
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(self,_cmd){
with(self){
return _registeredDraggedTypes;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(self,_cmd){
with(self){
_registeredDraggedTypes=nil;
}
}),new objj_method(sel_getUid("drawRect:"),function(self,_cmd,_10f){
with(self){
}
}),new objj_method(sel_getUid("setNeedsDisplay:"),function(self,_cmd,_112){
with(self){
if(_112){
objj_msgSend(self,"setNeedsDisplayInRect:",objj_msgSend(self,"bounds"));
}else{
var _113=CPDOMDisplayServerViewsContext[objj_msgSend(self,"hash")];
if(typeof _113!="undefined"){
CPDOMDisplayServerViewsContext[objj_msgSend(self,"hash")];
CPDOMDisplayServerViews[_113]=NULL;
}
}
}
}),new objj_method(sel_getUid("setNeedsDisplayInRect:"),function(self,_cmd,_116){
with(self){
var hash=objj_msgSend(objj_msgSend(self,"class"),"hash"),_118=_a[hash];
if(!_118&&typeof _118==="undefined"){
_118=objj_msgSend(self,"methodForSelector:",sel_getUid("drawRect:"))!=objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("drawRect:"));
_a[hash]=_118;
}
if(!_118){
return;
}
if((_116.size.width<=0||_116.size.height<=0)){
return;
}
if(_dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0)){
_dirtyRect=CGRectUnion(_116,_dirtyRect);
}else{
_dirtyRect={origin:{x:_116.origin.x,y:_116.origin.y},size:{width:_116.size.width,height:_116.size.height}};
}
var _119=objj_msgSend(self,"hash");
if(typeof (CPDOMDisplayServerViewsContext[_119])=="undefined"){
CPDOMDisplayServerViews[CPDOMDisplayServerViewsCount++]=self;
CPDOMDisplayServerViewsContext[_119]=self;
}
}
}),new objj_method(sel_getUid("needsDisplay"),function(self,_cmd){
with(self){
return _dirtyRect&&!(_dirtyRect.size.width<=0||_dirtyRect.size.height<=0);
}
}),new objj_method(sel_getUid("displayIfNeeded"),function(self,_cmd){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_dirtyRect);
}
}
}),new objj_method(sel_getUid("display"),function(self,_cmd){
with(self){
objj_msgSend(self,"displayRect:",objj_msgSend(self,"visibleRect"));
}
}),new objj_method(sel_getUid("displayIfNeededInRect:"),function(self,_cmd,_122){
with(self){
if(objj_msgSend(self,"needsDisplay")){
objj_msgSend(self,"displayRect:",_122);
}
}
}),new objj_method(sel_getUid("displayRect:"),function(self,_cmd,_125){
with(self){
objj_msgSend(self,"viewWillDraw");
objj_msgSend(self,"displayRectIgnoringOpacity:inContext:",_125,nil);
_dirtyRect=NULL;
}
}),new objj_method(sel_getUid("displayRectIgnoringOpacity:inContext:"),function(self,_cmd,_128,_129){
with(self){
objj_msgSend(self,"lockFocus");
CGContextClearRect(objj_msgSend(objj_msgSend(CPGraphicsContext,"currentContext"),"graphicsPort"),_128);
objj_msgSend(self,"drawRect:",_128);
objj_msgSend(self,"unlockFocus");
}
}),new objj_method(sel_getUid("viewWillDraw"),function(self,_cmd){
with(self){
}
}),new objj_method(sel_getUid("lockFocus"),function(self,_cmd){
with(self){
if(!_graphicsContext){
var _12e=CGBitmapGraphicsContextCreate();
_DOMContentsElement=_12e.DOMElement;
_DOMContentsElement.style.zIndex=-100;
_DOMContentsElement.style.overflow="hidden";
_DOMContentsElement.style.position="absolute";
_DOMContentsElement.style.visibility="visible";
_DOMContentsElement.width=ROUND((_frame.size.width));
_DOMContentsElement.height=ROUND((_frame.size.height));
_DOMContentsElement.style.top="0px";
_DOMContentsElement.style.left="0px";
_DOMContentsElement.style.width=ROUND((_frame.size.width))+"px";
_DOMContentsElement.style.height=ROUND((_frame.size.height))+"px";
if(_DOMContentsElement.CPDOMDisplayContext){
_DOMContentsElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMContentsElement;
_graphicsContext=objj_msgSend(CPGraphicsContext,"graphicsContextWithGraphicsPort:flipped:",_12e,YES);
}
objj_msgSend(CPGraphicsContext,"setCurrentContext:",_graphicsContext);
CGContextSaveGState(objj_msgSend(_graphicsContext,"graphicsPort"));
}
}),new objj_method(sel_getUid("unlockFocus"),function(self,_cmd){
with(self){
CGContextRestoreGState(objj_msgSend(_graphicsContext,"graphicsPort"));
objj_msgSend(CPGraphicsContext,"setCurrentContext:",nil);
}
}),new objj_method(sel_getUid("setNeedsLayout"),function(self,_cmd){
with(self){
_needsLayout=YES;
var hash=objj_msgSend(objj_msgSend(self,"class"),"hash"),_134=_b[hash];
if(_134===undefined){
_134=objj_msgSend(self,"methodForSelector:",sel_getUid("layoutSubviews"))!=objj_msgSend(CPView,"instanceMethodForSelector:",sel_getUid("layoutSubviews"));
_b[hash]=_134;
}
if(!_134){
return;
}
if(_needsLayout){
var _135=objj_msgSend(self,"hash");
if(typeof (CPDOMDisplayServerViewsContext[_135])=="undefined"){
CPDOMDisplayServerViews[CPDOMDisplayServerViewsCount++]=self;
CPDOMDisplayServerViewsContext[_135]=self;
}
}
}
}),new objj_method(sel_getUid("layoutIfNeeded"),function(self,_cmd){
with(self){
if(_needsLayout){
_needsLayout=NO;
objj_msgSend(self,"layoutSubviews");
}
}
}),new objj_method(sel_getUid("layoutSubviews"),function(self,_cmd){
with(self){
}
}),new objj_method(sel_getUid("isOpaque"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("visibleRect"),function(self,_cmd){
with(self){
if(!_superview){
return _bounds;
}
return CGRectIntersection(objj_msgSend(self,"convertRect:fromView:",objj_msgSend(_superview,"visibleRect"),_superview),_bounds);
}
}),new objj_method(sel_getUid("_enclosingClipView"),function(self,_cmd){
with(self){
var _140=_superview,_141=objj_msgSend(CPClipView,"class");
while(_140&&!objj_msgSend(_140,"isKindOfClass:",_141)){
_140=_140._superview;
}
return _140;
}
}),new objj_method(sel_getUid("scrollPoint:"),function(self,_cmd,_144){
with(self){
var _145=objj_msgSend(self,"_enclosingClipView");
if(!_145){
return;
}
objj_msgSend(_145,"scrollToPoint:",objj_msgSend(self,"convertPoint:toView:",_144,_145));
}
}),new objj_method(sel_getUid("scrollRectToVisible:"),function(self,_cmd,_148){
with(self){
var _149=objj_msgSend(self,"visibleRect");
_148=CGRectIntersection(_148,_bounds);
if((_148.size.width<=0||_148.size.height<=0)||CGRectContainsRect(_149,_148)){
return NO;
}
var _14a=objj_msgSend(self,"_enclosingClipView");
if(!_14a){
return NO;
}
var _14b={x:_149.origin.x,y:_149.origin.y};
if((_148.origin.x)<=(_149.origin.x)){
_14b.x=(_148.origin.x);
}else{
if((_148.origin.x+_148.size.width)>(_149.origin.x+_149.size.width)){
_14b.x+=(_148.origin.x+_148.size.width)-(_149.origin.x+_149.size.width);
}
}
if((_148.origin.y)<=(_149.origin.y)){
_14b.y=CGRectGetMinY(_148);
}else{
if((_148.origin.y+_148.size.height)>(_149.origin.y+_149.size.height)){
_14b.y+=(_148.origin.y+_148.size.height)-(_149.origin.y+_149.size.height);
}
}
objj_msgSend(_14a,"scrollToPoint:",CGPointMake(_14b.x,_14b.y));
return YES;
}
}),new objj_method(sel_getUid("autoscroll:"),function(self,_cmd,_14e){
with(self){
return NO;
}
}),new objj_method(sel_getUid("adjustScroll:"),function(self,_cmd,_151){
with(self){
return _151;
}
}),new objj_method(sel_getUid("scrollRect:by:"),function(self,_cmd,_154,_155){
with(self){
}
}),new objj_method(sel_getUid("enclosingScrollView"),function(self,_cmd){
with(self){
var _158=_superview,_159=objj_msgSend(CPScrollView,"class");
while(_158&&!objj_msgSend(_158,"isKindOfClass:",_159)){
_158=_158._superview;
}
return _158;
}
}),new objj_method(sel_getUid("scrollClipView:toPoint:"),function(self,_cmd,_15c,_15d){
with(self){
objj_msgSend(_15c,"scrollToPoint:",_15d);
}
}),new objj_method(sel_getUid("reflectScrolledClipView:"),function(self,_cmd,_160){
with(self){
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(CPView,"class")){
return;
}
_5=document.createElement("div");
var _163=_5.style;
_163.overflow="hidden";
_163.position="absolute";
_163.visibility="visible";
_163.zIndex=0;
_3=objj_msgSend(CPNotificationCenter,"defaultCenter");
}
})]);
var _c=objj_getClass("CPView");
if(!_c){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("setLayer:"),function(self,_cmd,_166){
with(self){
if(_layer==_166){
return;
}
if(_layer){
_layer._owningView=nil;
_DOMElement.removeChild(_layer._DOMElement);
}
_layer=_166;
if(_layer){
var _167=CGRectMakeCopy(objj_msgSend(self,"bounds"));
objj_msgSend(_layer,"_setOwningView:",self);
_layer._DOMElement.style.zIndex=100;
_DOMElement.appendChild(_layer._DOMElement);
}
}
}),new objj_method(sel_getUid("layer"),function(self,_cmd){
with(self){
return _layer;
}
}),new objj_method(sel_getUid("setWantsLayer:"),function(self,_cmd,_16c){
with(self){
_wantsLayer=_16c;
}
}),new objj_method(sel_getUid("wantsLayer"),function(self,_cmd){
with(self){
return _wantsLayer;
}
})]);
var _c=objj_getClass("CPView");
if(!_c){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("_loadThemedAttributes"),function(self,_cmd){
with(self){
var _171=objj_msgSend(self,"theme"),_172=objj_msgSend(self,"class"),_173=objj_msgSend(_172,"_themedAttributes");
count=_173.length;
while(count--){
var _174=_173[count--];
_themedAttributes[_174]=CPThemedAttributeMake(_174,_173[count],_171,_172);
}
}
}),new objj_method(sel_getUid("setTheme:"),function(self,_cmd,_177){
with(self){
if(_theme===_177){
return;
}
_theme=_177;
objj_msgSend(self,"viewDidChangeTheme");
}
}),new objj_method(sel_getUid("theme"),function(self,_cmd){
with(self){
return _theme;
}
}),new objj_method(sel_getUid("viewDidChangeTheme"),function(self,_cmd){
with(self){
var _17c=objj_msgSend(self,"theme");
for(var _17d in _themedAttributes){
if(_themedAttributes.hasOwnProperty(_17d)){
objj_msgSend(_themedAttributes[_17d],"setTheme:",_17c);
}
}
}
}),new objj_method(sel_getUid("_themedAttributes"),function(self,_cmd){
with(self){
var _180=objj_msgSend(CPDictionary,"dictionary");
for(var _181 in _themedAttributes){
if(_themedAttributes.hasOwnProperty(_181)){
objj_msgSend(_180,"setObject:forKey:",_themedAttributes[_181],_181);
}
}
return _180;
}
}),new objj_method(sel_getUid("setValue:forThemedAttributeName:inControlState:"),function(self,_cmd,_184,_185,_186){
with(self){
var _187=_themedAttributes[_185];
if(!_187){
return;
}
var _188=objj_msgSend(self,"currentValueForThemedAttributeName:",_185);
objj_msgSend(_187,"setValue:forControlState:",_184,_186);
if(objj_msgSend(self,"currentValueForThemedAttributeName:",_185)===_188){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("setValue:forThemedAttributeName:"),function(self,_cmd,_18b,_18c){
with(self){
var _18d=_themedAttributes[_18c];
if(!_18d){
return;
}
var _18e=objj_msgSend(self,"currentValueForThemedAttributeName:",_18c);
objj_msgSend(_18d,"setValue:",_18b);
if(objj_msgSend(self,"currentValueForThemedAttributeName:",_18c)===_18e){
return;
}
objj_msgSend(self,"setNeedsDisplay:",YES);
objj_msgSend(self,"setNeedsLayout");
}
}),new objj_method(sel_getUid("valueForThemedAttributeName:inControlState:"),function(self,_cmd,_191,_192){
with(self){
return objj_msgSend(_themedAttributes[_191],"valueForControlState:",_192);
}
}),new objj_method(sel_getUid("valueForThemedAttributeName:"),function(self,_cmd,_195){
with(self){
return objj_msgSend(_themedAttributes[_195],"value");
}
}),new objj_method(sel_getUid("currentValueForThemedAttributeName:"),function(self,_cmd,_198){
with(self){
return objj_msgSend(_themedAttributes[_198],"valueForControlState:",_controlState);
}
})]);
class_addMethods(_d,[new objj_method(sel_getUid("themedAttributes"),function(self,_cmd){
with(self){
return nil;
}
}),new objj_method(sel_getUid("_themedAttributes"),function(self,_cmd){
with(self){
if(!_4){
_4={};
}
var _19d=objj_msgSend(self,"class"),_19e=objj_msgSend(CPView,"class"),_19f=[];
while(_19d&&_19d!==_19e){
var _1a0=_4[class_getName(_19d)];
if(_1a0){
_19f=_19f.length?_19f.concat(_1a0):_19f;
_4[objj_msgSend(self,"className")]=_19f;
break;
}
var _1a1=objj_msgSend(_19d,"themedAttributes");
if(_1a1){
var _1a2=objj_msgSend(_1a1,"allKeys"),_1a3=_1a2.length;
while(_1a3--){
var _1a4=_1a2[_1a3];
_19f.push(objj_msgSend(_1a1,"objectForKey:",_1a4));
_19f.push(_1a4);
}
}
_19d=objj_msgSend(_19d,"superclass");
}
return _19f;
}
})]);
var _1a5="CPViewAutoresizingMask",_1a6="CPViewAutoresizesSubviews",_1a7="CPViewBackgroundColor",_1a8="CPViewBoundsKey",_1a9="CPViewFrameKey",_1aa="CPViewHitTestsKey",_1ab="CPViewIsHiddenKey",_1ac="CPViewOpacityKey",_1ad="CPViewSubviewsKey",_1ae="CPViewSuperviewKey",_1af="CPViewTagKey",_1b0="CPViewWindowKey";
var _c=objj_getClass("CPView");
if(!_c){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPView\""));
}
var _d=_c.isa;
class_addMethods(_c,[new objj_method(sel_getUid("initWithCoder:"),function(self,_cmd,_1b3){
with(self){
_DOMElement=_5.cloneNode(false);
_frame=objj_msgSend(_1b3,"decodeRectForKey:",_1a9);
_bounds=objj_msgSend(_1b3,"decodeRectForKey:",_1a8);
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPResponder")},"initWithCoder:",_1b3);
if(self){
_tag=-1;
if(objj_msgSend(_1b3,"containsValueForKey:",_1af)){
_tag=objj_msgSend(_1b3,"decodeIntForKey:",_1af);
}
_window=objj_msgSend(_1b3,"decodeObjectForKey:",_1b0);
_subviews=objj_msgSend(_1b3,"decodeObjectForKey:",_1ad);
_superview=objj_msgSend(_1b3,"decodeObjectForKey:",_1ae);
_autoresizingMask=objj_msgSend(_1b3,"decodeIntForKey:",_1a5)||0;
_autoresizesSubviews=objj_msgSend(_1b3,"decodeBoolForKey:",_1a6);
_hitTests=objj_msgSend(_1b3,"decodeObjectForKey:",_1aa);
_isHidden=objj_msgSend(_1b3,"decodeObjectForKey:",_1ab);
_opacity=objj_msgSend(_1b3,"decodeIntForKey:",_1ac);
_DOMImageParts=[];
_DOMImageSizes=[];
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _1b4=_DOMElement.CPDOMDisplayContext[0];
if(!(_1b4>=0)){
_1b4=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_1b4]=0;
CPDOMDisplayServerInstructions[_1b4+1]=_DOMElement;
CPDOMDisplayServerInstructions[_1b4+2]=NULL;
CPDOMDisplayServerInstructions[_1b4+3]=(_frame.origin.x);
CPDOMDisplayServerInstructions[_1b4+4]=(_frame.origin.y);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _1b4=_DOMElement.CPDOMDisplayContext[4];
if(!(_1b4>=0)){
_1b4=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_1b4]=4;
CPDOMDisplayServerInstructions[_1b4+1]=_DOMElement;
CPDOMDisplayServerInstructions[_1b4+2]=(_frame.size.width);
CPDOMDisplayServerInstructions[_1b4+3]=(_frame.size.height);
var _1b5=0,_1b6=_subviews.length;
for(;_1b5<_1b6;++_1b5){
if(_subviews[_1b5]._DOMElement.CPDOMDisplayContext){
_subviews[_1b5]._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_subviews[_1b5]._DOMElement;
}
_displayHash=objj_msgSend(self,"hash");
objj_msgSend(self,"setBackgroundColor:",objj_msgSend(_1b3,"decodeObjectForKey:",_1a7));
_theme=objj_msgSend(CPTheme,"defaultTheme");
_themedAttributes={};
var _1b7=objj_msgSend(self,"class"),_1b8=objj_msgSend(_1b7,"_themedAttributes"),_1b6=_1b8.length;
while(_1b6--){
var _1b9=_1b8[_1b6--];
_themedAttributes[_1b9]=CPThemedAttributeDecode(_1b3,_1b9,_1b8[_1b6],_theme,_1b7);
}
objj_msgSend(self,"setNeedsDisplay:",YES);
}
return self;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(self,_cmd,_1bc){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPResponder")},"encodeWithCoder:",_1bc);
if(_tag!=-1){
objj_msgSend(_1bc,"encodeInt:forKey:",_tag,_1af);
}
objj_msgSend(_1bc,"encodeRect:forKey:",_frame,_1a9);
objj_msgSend(_1bc,"encodeRect:forKey:",_bounds,_1a8);
objj_msgSend(_1bc,"encodeConditionalObject:forKey:",_window,_1b0);
objj_msgSend(_1bc,"encodeObject:forKey:",_subviews,_1ad);
objj_msgSend(_1bc,"encodeConditionalObject:forKey:",_superview,_1ae);
objj_msgSend(_1bc,"encodeInt:forKey:",_autoresizingMask,_1a5);
objj_msgSend(_1bc,"encodeBool:forKey:",_autoresizesSubviews,_1a6);
objj_msgSend(_1bc,"encodeObject:forKey:",_backgroundColor,_1a7);
objj_msgSend(_1bc,"encodeBool:forKey:",_hitTests,_1aa);
objj_msgSend(_1bc,"encodeBool:forKey:",_isHidden,_1ab);
objj_msgSend(_1bc,"encodeFloat:forKey:",_opacity,_1ac);
for(var _1bd in _themedAttributes){
if(_themedAttributes.hasOwnProperty(_1bd)){
CPThemedAttributeEncode(_1bc,_themedAttributes[_1bd]);
}
}
}
})]);
var _97=function(_1be){
var _1bf=_1be._superview;
return {autoresizingMask:_1be._autoresizingMask,frame:CGRectMakeCopy(_1be._frame),index:(_1bf?objj_msgSend(_1bf._subviews,"indexOfObjectIdenticalTo:",_1be):0),superview:_1bf};
};
var _d5=function(_1c0,_1c1){
var _1c2=CGAffineTransformMakeIdentity(),_1c3=YES,_1c4=nil,_1c5=nil;
if(_1c0){
var view=_1c0;
while(view&&view!=_1c1){
var _1c7=view._frame;
_1c2.tx+=(_1c7.origin.x);
_1c2.ty+=(_1c7.origin.y);
if(view._boundsTransform){
var tx=_1c2.tx*view._boundsTransform.a+_1c2.ty*view._boundsTransform.c+view._boundsTransform.tx;
_1c2.ty=_1c2.tx*view._boundsTransform.b+_1c2.ty*view._boundsTransform.d+view._boundsTransform.ty;
_1c2.tx=tx;
var a=_1c2.a*view._boundsTransform.a+_1c2.b*view._boundsTransform.c,b=_1c2.a*view._boundsTransform.b+_1c2.b*view._boundsTransform.d,c=_1c2.c*view._boundsTransform.a+_1c2.d*view._boundsTransform.c;
_1c2.d=_1c2.c*view._boundsTransform.b+_1c2.d*view._boundsTransform.d;
_1c2.a=a;
_1c2.b=b;
_1c2.c=c;
}
view=view._superview;
}
if(view===_1c1){
return _1c2;
}else{
if(_1c0&&_1c1){
_1c4=objj_msgSend(_1c0,"window");
_1c5=objj_msgSend(_1c1,"window");
if(_1c4&&_1c5&&_1c4!==_1c5){
_1c3=NO;
var _1c7=objj_msgSend(_1c4,"frame");
_1c2.tx+=(_1c7.origin.x);
_1c2.ty+=(_1c7.origin.y);
}
}
}
}
var view=_1c1;
while(view){
var _1c7=view._frame;
_1c2.tx-=(_1c7.origin.x);
_1c2.ty-=(_1c7.origin.y);
if(view._boundsTransform){
var tx=_1c2.tx*view._inverseBoundsTransform.a+_1c2.ty*view._inverseBoundsTransform.c+view._inverseBoundsTransform.tx;
_1c2.ty=_1c2.tx*view._inverseBoundsTransform.b+_1c2.ty*view._inverseBoundsTransform.d+view._inverseBoundsTransform.ty;
_1c2.tx=tx;
var a=_1c2.a*view._inverseBoundsTransform.a+_1c2.b*view._inverseBoundsTransform.c,b=_1c2.a*view._inverseBoundsTransform.b+_1c2.b*view._inverseBoundsTransform.d,c=_1c2.c*view._inverseBoundsTransform.a+_1c2.d*view._inverseBoundsTransform.c;
_1c2.d=_1c2.c*view._inverseBoundsTransform.b+_1c2.d*view._inverseBoundsTransform.d;
_1c2.a=a;
_1c2.b=b;
_1c2.c=c;
}
view=view._superview;
}
if(!_1c3){
var _1c7=objj_msgSend(_1c5,"frame");
_1c2.tx-=(_1c7.origin.x);
_1c2.ty-=(_1c7.origin.y);
}
return _1c2;
};
p;11;CPWebView.jI;15;AppKit/CPView.jc;13111;
CPWebViewProgressStartedNotification="CPWebViewProgressStartedNotification";
CPWebViewProgressFinishedNotification="CPWebViewProgressFinishedNotification";
CPWebViewScrollAppKit=1;
CPWebViewScrollNative=2;
var _1=objj_allocateClassPair(CPView,"CPWebView"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_scrollView"),new objj_ivar("_frameView"),new objj_ivar("_iframe"),new objj_ivar("_mainFrameURL"),new objj_ivar("_backwardStack"),new objj_ivar("_forwardStack"),new objj_ivar("_ignoreLoadStart"),new objj_ivar("_ignoreLoadEnd"),new objj_ivar("_downloadDelegate"),new objj_ivar("_frameLoadDelegate"),new objj_ivar("_policyDelegate"),new objj_ivar("_resourceLoadDelegate"),new objj_ivar("_UIDelegate"),new objj_ivar("_wso"),new objj_ivar("_url"),new objj_ivar("_html"),new objj_ivar("_loadCallback"),new objj_ivar("_scrollMode"),new objj_ivar("_scrollSize")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithFrame:frameName:groupName:"),function(_3,_4,_5,_6,_7){
with(_3){
if(_3=objj_msgSend(_3,"initWithFrame:",_5)){
_iframe.name=_6;
}
return _3;
}
}),new objj_method(sel_getUid("initWithFrame:"),function(_8,_9,_a){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("CPView")},"initWithFrame:",_a)){
_mainFrameURL=nil;
_backwardStack=[];
_forwardStack=[];
_scrollMode=CPWebViewScrollNative;
objj_msgSend(_8,"_initDOMWithFrame:",_a);
}
return _8;
}
}),new objj_method(sel_getUid("_initDOMWithFrame:"),function(_b,_c,_d){
with(_b){
_ignoreLoadStart=YES;
_ignoreLoadEnd=YES;
_iframe=document.createElement("iframe");
_iframe.name="iframe_"+Math.floor(Math.random()*10000);
_iframe.style.width="100%";
_iframe.style.height="100%";
_iframe.style.borderWidth="0px";
objj_msgSend(_b,"setDrawsBackground:",YES);
_loadCallback=function(){
if(!_ignoreLoadStart){
objj_msgSend(_b,"_startedLoading");
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=_iframe.src;
_mainFrameURL=_iframe.src;
objj_msgSend(_forwardStack,"removeAllObjects");
}else{
_ignoreLoadStart=NO;
}
if(!_ignoreLoadEnd){
objj_msgSend(_b,"_finishedLoading");
}else{
_ignoreLoadEnd=NO;
}
objj_msgSend(objj_msgSend(CPRunLoop,"currentRunLoop"),"limitDateForMode:",CPDefaultRunLoopMode);
};
if(_iframe.addEventListener){
_iframe.addEventListener("load",_loadCallback,false);
}else{
if(_iframe.attachEvent){
_iframe.attachEvent("onload",_loadCallback);
}
}
_frameView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",objj_msgSend(_b,"bounds"));
_scrollView=objj_msgSend(objj_msgSend(CPScrollView,"alloc"),"initWithFrame:",objj_msgSend(_b,"bounds"));
objj_msgSend(_scrollView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_scrollView,"setDocumentView:",_frameView);
_frameView._DOMElement.appendChild(_iframe);
objj_msgSend(_b,"_setScrollMode:",_scrollMode);
objj_msgSend(_b,"addSubview:",_scrollView);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_e,_f,_10){
with(_e){
objj_msgSendSuper({receiver:_e,super_class:objj_getClass("CPView")},"setFrameSize:",_10);
objj_msgSend(_e,"_resizeWebFrame");
}
}),new objj_method(sel_getUid("_resizeWebFrame"),function(_11,_12){
with(_11){
if(_scrollMode===CPWebViewScrollAppKit){
if(_scrollSize){
objj_msgSend(_frameView,"setFrameSize:",_scrollSize);
}else{
objj_msgSend(_frameView,"setFrameSize:",objj_msgSend(_scrollView,"bounds").size);
var win=null;
try{
win=objj_msgSend(_11,"window");
}
catch(e){
}
if(win&&win.document){
var _14=win.document.body.scrollWidth,_15=win.document.body.scrollHeight;
_iframe.setAttribute("width",_14);
_iframe.setAttribute("height",_15);
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(_14,_15));
}else{
CPLog.warn("using default size 800*1600");
objj_msgSend(_frameView,"setFrameSize:",CGSizeMake(800,1600));
}
}
}
}
}),new objj_method(sel_getUid("setScrollMode:"),function(_16,_17,_18){
with(_16){
if(_scrollMode==_18){
return;
}
objj_msgSend(_16,"_setScrollMode:",_18);
}
}),new objj_method(sel_getUid("_setScrollMode:"),function(_19,_1a,_1b){
with(_19){
_scrollMode=_1b;
_ignoreLoadStart=YES;
_ignoreLoadEnd=YES;
var _1c=_iframe.parentNode;
_1c.removeChild(_iframe);
if(_scrollMode===CPWebViewScrollAppKit){
objj_msgSend(_scrollView,"setHasHorizontalScroller:",YES);
objj_msgSend(_scrollView,"setHasVerticalScroller:",YES);
_iframe.setAttribute("scrolling","no");
}else{
objj_msgSend(_scrollView,"setHasHorizontalScroller:",NO);
objj_msgSend(_scrollView,"setHasVerticalScroller:",NO);
_iframe.setAttribute("scrolling","auto");
objj_msgSend(_frameView,"setFrameSize:",objj_msgSend(_scrollView,"bounds").size);
}
_1c.appendChild(_iframe);
}
}),new objj_method(sel_getUid("loadHTMLString:"),function(_1d,_1e,_1f){
with(_1d){
objj_msgSend(_1d,"loadHTMLString:baseURL:",_1f,nil);
}
}),new objj_method(sel_getUid("loadHTMLString:baseURL:"),function(_20,_21,_22,URL){
with(_20){
objj_msgSend(_20,"_setScrollMode:",CPWebViewScrollAppKit);
objj_msgSend(_20,"_startedLoading");
_ignoreLoadStart=YES;
_ignoreLoadEnd=NO;
_url=null;
_html=_22;
objj_msgSend(_20,"_load");
}
}),new objj_method(sel_getUid("_loadMainFrameURL"),function(_24,_25){
with(_24){
objj_msgSend(_24,"_setScrollMode:",CPWebViewScrollNative);
objj_msgSend(_24,"_startedLoading");
_ignoreLoadStart=YES;
_ignoreLoadEnd=NO;
_url=_mainFrameURL;
_html=null;
objj_msgSend(_24,"_load");
}
}),new objj_method(sel_getUid("_load"),function(_26,_27){
with(_26){
if(_url){
_iframe.src=_url;
}else{
if(_html){
_iframe.src="";
window.setTimeout(function(){
var win=objj_msgSend(_26,"window");
win.document.write(_html);
window.setTimeout(_loadCallback,1);
},0);
}
}
}
}),new objj_method(sel_getUid("_startedLoading"),function(_29,_2a){
with(_29){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWebViewProgressStartedNotification,_29);
if(objj_msgSend(_frameLoadDelegate,"respondsToSelector:",sel_getUid("webView:didStartProvisionalLoadForFrame:"))){
objj_msgSend(_frameLoadDelegate,"webView:didStartProvisionalLoadForFrame:",_29,nil);
}
}
}),new objj_method(sel_getUid("_finishedLoading"),function(_2b,_2c){
with(_2b){
objj_msgSend(_2b,"_resizeWebFrame");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWebViewProgressFinishedNotification,_2b);
if(objj_msgSend(_frameLoadDelegate,"respondsToSelector:",sel_getUid("webView:didFinishLoadForFrame:"))){
objj_msgSend(_frameLoadDelegate,"webView:didFinishLoadForFrame:",_2b,nil);
}
}
}),new objj_method(sel_getUid("mainFrameURL"),function(_2d,_2e){
with(_2d){
return _mainFrameURL;
}
}),new objj_method(sel_getUid("setMainFrameURL:"),function(_2f,_30,_31){
with(_2f){
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=_31;
objj_msgSend(_forwardStack,"removeAllObjects");
objj_msgSend(_2f,"_loadMainFrameURL");
}
}),new objj_method(sel_getUid("goBack"),function(_32,_33){
with(_32){
if(_backwardStack.length>0){
if(_mainFrameURL){
objj_msgSend(_forwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=objj_msgSend(_backwardStack,"lastObject");
objj_msgSend(_backwardStack,"removeLastObject");
objj_msgSend(_32,"_loadMainFrameURL");
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("goForward"),function(_34,_35){
with(_34){
if(_forwardStack.length>0){
if(_mainFrameURL){
objj_msgSend(_backwardStack,"addObject:",_mainFrameURL);
}
_mainFrameURL=objj_msgSend(_forwardStack,"lastObject");
objj_msgSend(_forwardStack,"removeLastObject");
objj_msgSend(_34,"_loadMainFrameURL");
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("canGoBack"),function(_36,_37){
with(_36){
return (_backwardStack.length>0);
}
}),new objj_method(sel_getUid("canGoForward"),function(_38,_39){
with(_38){
return (_forwardStack.length>0);
}
}),new objj_method(sel_getUid("backForwardList"),function(_3a,_3b){
with(_3a){
return {back:_backwardStack,forward:_forwardStack};
}
}),new objj_method(sel_getUid("close"),function(_3c,_3d){
with(_3c){
_iframe.parentNode.removeChild(_iframe);
}
}),new objj_method(sel_getUid("window"),function(_3e,_3f){
with(_3e){
return (_iframe.contentDocument&&_iframe.contentDocument.defaultView)||_iframe.contentWindow;
}
}),new objj_method(sel_getUid("windowScriptObject"),function(_40,_41){
with(_40){
var win=objj_msgSend(_40,"window");
if(!_wso||win!=objj_msgSend(_wso,"window")){
if(win){
_wso=objj_msgSend(objj_msgSend(CPWebScriptObject,"alloc"),"initWithWindow:",win);
}else{
_wso=nil;
}
}
return _wso;
}
}),new objj_method(sel_getUid("stringByEvaluatingJavaScriptFromString:"),function(_43,_44,_45){
with(_43){
var _46=objj_msgSend(_43,"objectByEvaluatingJavaScriptFromString:",_45);
return _46?String(_46):nil;
}
}),new objj_method(sel_getUid("objectByEvaluatingJavaScriptFromString:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(objj_msgSend(_47,"windowScriptObject"),"evaluateWebScript:",_49);
}
}),new objj_method(sel_getUid("computedStyleForElement:pseudoElement:"),function(_4a,_4b,_4c,_4d){
with(_4a){
var win=objj_msgSend(objj_msgSend(_4a,"windowScriptObject"),"window");
if(win){
return win.document.defaultView.getComputedStyle(_4c,_4d);
}
return nil;
}
}),new objj_method(sel_getUid("drawsBackground"),function(_4f,_50){
with(_4f){
return _iframe.style.backgroundColor!="";
}
}),new objj_method(sel_getUid("setDrawsBackground:"),function(_51,_52,_53){
with(_51){
_iframe.style.backgroundColor=_53?"white":"";
}
}),new objj_method(sel_getUid("takeStringURLFrom:"),function(_54,_55,_56){
with(_54){
objj_msgSend(_54,"setMainFrameURL:",objj_msgSend(_56,"stringValue"));
}
}),new objj_method(sel_getUid("goBack:"),function(_57,_58,_59){
with(_57){
objj_msgSend(_57,"goBack");
}
}),new objj_method(sel_getUid("goForward:"),function(_5a,_5b,_5c){
with(_5a){
objj_msgSend(_5a,"goForward");
}
}),new objj_method(sel_getUid("stopLoading:"),function(_5d,_5e,_5f){
with(_5d){
}
}),new objj_method(sel_getUid("reload:"),function(_60,_61,_62){
with(_60){
objj_msgSend(_60,"_loadMainFrameURL");
}
}),new objj_method(sel_getUid("print:"),function(_63,_64,_65){
with(_63){
try{
objj_msgSend(_63,"window").print();
}
catch(e){
alert("Please click the webpage and select \"Print\" from the \"File\" menu");
}
}
}),new objj_method(sel_getUid("downloadDelegate"),function(_66,_67){
with(_66){
return _downloadDelegate;
}
}),new objj_method(sel_getUid("setDownloadDelegate:"),function(_68,_69,_6a){
with(_68){
_downloadDelegate=_6a;
}
}),new objj_method(sel_getUid("frameLoadDelegate"),function(_6b,_6c){
with(_6b){
return _frameLoadDelegate;
}
}),new objj_method(sel_getUid("setFrameLoadDelegate:"),function(_6d,_6e,_6f){
with(_6d){
_frameLoadDelegate=_6f;
}
}),new objj_method(sel_getUid("policyDelegate"),function(_70,_71){
with(_70){
return _policyDelegate;
}
}),new objj_method(sel_getUid("setPolicyDelegate:"),function(_72,_73,_74){
with(_72){
_policyDelegate=_74;
}
}),new objj_method(sel_getUid("resourceLoadDelegate"),function(_75,_76){
with(_75){
return _resourceLoadDelegate;
}
}),new objj_method(sel_getUid("setResourceLoadDelegate:"),function(_77,_78,_79){
with(_77){
_resourceLoadDelegate=_79;
}
}),new objj_method(sel_getUid("UIDelegate"),function(_7a,_7b){
with(_7a){
return _UIDelegate;
}
}),new objj_method(sel_getUid("setUIDelegate:"),function(_7c,_7d,_7e){
with(_7c){
_UIDelegate=_7e;
}
})]);
var _1=objj_allocateClassPair(CPObject,"CPWebScriptObject"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_window")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithWindow:"),function(_7f,_80,_81){
with(_7f){
if(_7f=objj_msgSendSuper({receiver:_7f,super_class:objj_getClass("CPObject")},"init")){
_window=_81;
}
return _7f;
}
}),new objj_method(sel_getUid("callWebScriptMethod:withArguments:"),function(_82,_83,_84,_85){
with(_82){
if(typeof _window[_84]=="function"){
try{
return _window[_84].apply(_85);
}
catch(e){
}
}
return undefined;
}
}),new objj_method(sel_getUid("evaluateWebScript:"),function(_86,_87,_88){
with(_86){
try{
return _window.eval(_88);
}
catch(e){
}
return undefined;
}
}),new objj_method(sel_getUid("window"),function(_89,_8a){
with(_89){
return _window;
}
})]);
var _1=objj_getClass("CPWebView");
if(!_1){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWebView\""));
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_8b,_8c,_8d){
with(_8b){
_8b=objj_msgSendSuper({receiver:_8b,super_class:objj_getClass("CPView")},"initWithCoder:",_8d);
if(_8b){
_mainFrameURL=nil;
_backwardStack=[];
_forwardStack=[];
_scrollMode=CPWebViewScrollNative;
objj_msgSend(_8b,"_initDOMWithFrame:",objj_msgSend(_8b,"frame"));
objj_msgSend(_8b,"setBackgroundColor:",objj_msgSend(CPColor,"whiteColor"));
}
return _8b;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_8e,_8f,_90){
with(_8e){
var _91=_subviews;
_subviews=[];
objj_msgSendSuper({receiver:_8e,super_class:objj_getClass("CPView")},"encodeWithCoder:",_90);
_subviews=_91;
}
})]);
p;10;CPWindow.jI;33;Foundation/CPNotificationCenter.jI;26;Foundation/CPUndoManager.ji;12;CGGeometry.ji;13;CPAnimation.ji;13;CPResponder.jc;37377;
CPBorderlessWindowMask=0;
CPTitledWindowMask=1<<0;
CPClosableWindowMask=1<<1;
CPMiniaturizableWindowMask=1<<2;
CPResizableWindowMask=1<<3;
CPTexturedBackgroundWindowMask=1<<8;
CPBorderlessBridgeWindowMask=1<<20;
CPHUDBackgroundWindowMask=1<<21;
CPWindowNotSizable=0;
CPWindowMinXMargin=1;
CPWindowWidthSizable=2;
CPWindowMaxXMargin=4;
CPWindowMinYMargin=8;
CPWindowHeightSizable=16;
CPWindowMaxYMargin=32;
CPBackgroundWindowLevel=-1;
CPNormalWindowLevel=4;
CPFloatingWindowLevel=5;
CPSubmenuWindowLevel=6;
CPTornOffMenuWindowLevel=6;
CPMainMenuWindowLevel=8;
CPStatusWindowLevel=9;
CPModalPanelWindowLevel=10;
CPPopUpMenuWindowLevel=11;
CPDraggingWindowLevel=12;
CPScreenSaverWindowLevel=13;
CPWindowOut=0;
CPWindowAbove=1;
CPWindowBelow=2;
CPWindowWillCloseNotification="CPWindowWillCloseNotification";
CPWindowDidBecomeMainNotification="CPWindowDidBecomeMainNotification";
CPWindowDidResignMainNotification="CPWindowDidResignMainNotification";
CPWindowDidMoveNotification="CPWindowDidMoveNotification";
var _1=20,_2=19,_3=10,_4=10,_5=5,_6=nil;
var _7=nil,_8=nil;
var _9=objj_allocateClassPair(CPResponder,"CPWindow"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_windowNumber"),new objj_ivar("_styleMask"),new objj_ivar("_frame"),new objj_ivar("_level"),new objj_ivar("_isVisible"),new objj_ivar("_isAnimating"),new objj_ivar("_hasShadow"),new objj_ivar("_isMovableByWindowBackground"),new objj_ivar("_isDocumentEdited"),new objj_ivar("_isDocumentSaving"),new objj_ivar("_shadowView"),new objj_ivar("_windowView"),new objj_ivar("_contentView"),new objj_ivar("_toolbarView"),new objj_ivar("_mouseOverView"),new objj_ivar("_leftMouseDownView"),new objj_ivar("_rightMouseDownView"),new objj_ivar("_toolbar"),new objj_ivar("_firstResponder"),new objj_ivar("_delegate"),new objj_ivar("_title"),new objj_ivar("_acceptsMouseMovedEvents"),new objj_ivar("_ignoresMouseEvents"),new objj_ivar("_windowController"),new objj_ivar("_minSize"),new objj_ivar("_maxSize"),new objj_ivar("_undoManager"),new objj_ivar("_representedURL"),new objj_ivar("_registeredDraggedTypes"),new objj_ivar("_DOMElement"),new objj_ivar("_bridge"),new objj_ivar("_autoresizingMask"),new objj_ivar("_delegateRespondsToWindowWillReturnUndoManagerSelector"),new objj_ivar("_isFullBridge"),new objj_ivar("_fullBridgeSession")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithContentRect:styleMask:"),function(_b,_c,_d,_e){
with(_b){
return objj_msgSend(_b,"initWithContentRect:styleMask:bridge:",_d,_e,objj_msgSend(CPDOMWindowBridge,"sharedDOMWindowBridge"));
}
}),new objj_method(sel_getUid("initWithContentRect:styleMask:bridge:"),function(_f,_10,_11,_12,_13){
with(_f){
_f=objj_msgSendSuper({receiver:_f,super_class:objj_getClass("CPResponder")},"init");
if(_f){
_isFullBridge=NO;
_windowNumber=objj_msgSend(CPApp._windows,"count");
CPApp._windows[_windowNumber]=_f;
_styleMask=_12;
_level=CPNormalWindowLevel;
_minSize=CGSizeMake(0,0);
_maxSize=CGSizeMake(1000000,1000000);
var _14=objj_msgSend(objj_msgSend(_f,"class"),"_windowViewClassForStyleMask:",_12);
_frame=objj_msgSend(_14,"frameRectForContentRect:",_11);
_windowView=objj_msgSend(objj_msgSend(_14,"alloc"),"initWithFrame:styleMask:",CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame)),_12);
objj_msgSend(_windowView,"_setWindow:",_f);
objj_msgSend(_windowView,"setNextResponder:",_f);
objj_msgSend(_f,"setMovableByWindowBackground:",_12&CPHUDBackgroundWindowMask);
objj_msgSend(_f,"setContentView:",objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMakeZero()));
_firstResponder=_f;
_DOMElement=document.createElement("div");
_DOMElement.style.position="absolute";
_DOMElement.style.visibility="visible";
_DOMElement.style.zIndex=0;
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _15=_DOMElement.CPDOMDisplayContext[0];
if(!(_15>=0)){
_15=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_15]=0;
CPDOMDisplayServerInstructions[_15+1]=_DOMElement;
CPDOMDisplayServerInstructions[_15+2]=NULL;
CPDOMDisplayServerInstructions[_15+3]=(_frame.origin.x);
CPDOMDisplayServerInstructions[_15+4]=(_frame.origin.y);
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _15=_DOMElement.CPDOMDisplayContext[4];
if(!(_15>=0)){
_15=_DOMElement.CPDOMDisplayContext[4]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=4;
}
CPDOMDisplayServerInstructions[_15]=4;
CPDOMDisplayServerInstructions[_15+1]=_DOMElement;
CPDOMDisplayServerInstructions[_15+2]=1;
CPDOMDisplayServerInstructions[_15+3]=1;
if(_windowView._DOMElement.CPDOMDisplayContext){
_windowView._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_windowView._DOMElement;
objj_msgSend(_f,"setBridge:",_13);
objj_msgSend(_f,"setNextResponder:",CPApp);
objj_msgSend(_f,"setHasShadow:",_12!==CPBorderlessWindowMask);
if(_12&CPBorderlessBridgeWindowMask){
objj_msgSend(_f,"setFullBridge:",YES);
}
}
return _f;
}
}),new objj_method(sel_getUid("_setWindowView:"),function(_16,_17,_18){
with(_16){
if(_windowView===_18){
return;
}
var _19=_windowView;
_windowView=_18;
if(_19){
objj_msgSend(_19,"_setWindow:",nil);
objj_msgSend(_19,"noteToolbarChanged");
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_19._DOMElement;
}
if(_windowView){
if(_windowView._DOMElement.CPDOMDisplayContext){
_windowView._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=6;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_windowView._DOMElement;
var _1a=objj_msgSend(_contentView,"convertRect:toView:",objj_msgSend(_contentView,"bounds"),nil);
_1a.origin=objj_msgSend(_16,"convertBaseToBridge:",_1a.origin);
objj_msgSend(_windowView,"_setWindow:",_16);
objj_msgSend(_windowView,"setNextResponder:",_16);
objj_msgSend(_windowView,"addSubview:",_contentView);
objj_msgSend(_windowView,"setTitle:",_title);
objj_msgSend(_windowView,"noteToolbarChanged");
objj_msgSend(_16,"setFrame:",objj_msgSend(_16,"frameRectForContentRect:",_1a));
}
}
}),new objj_method(sel_getUid("setFullBridge:"),function(_1b,_1c,_1d){
with(_1b){
_1d=!!_1d;
if(_isFullBridge===_1d){
return;
}
_isFullBridge=_1d;
if(_isFullBridge){
_fullBridgeSession=_CPWindowFullBridgeSessionMake(_windowView,objj_msgSend(_1b,"contentRectForFrameRect:",objj_msgSend(_1b,"frame")),objj_msgSend(_1b,"hasShadow"),objj_msgSend(_1b,"level"));
var _1e=objj_msgSend(objj_msgSend(_1b,"class"),"_windowViewClassForFullBridgeStyleMask:",_styleMask),_1f=objj_msgSend(objj_msgSend(_1e,"alloc"),"initWithFrame:styleMask:",CGRectMakeZero(),_styleMask);
objj_msgSend(_1b,"_setWindowView:",_1f);
objj_msgSend(_1b,"setLevel:",CPBackgroundWindowLevel);
objj_msgSend(_1b,"setHasShadow:",NO);
objj_msgSend(_1b,"setAutoresizingMask:",CPWindowWidthSizable|CPWindowHeightSizable);
objj_msgSend(_1b,"setFrame:",objj_msgSend(_bridge,"contentBounds"));
}else{
var _1f=_fullBridgeSession.windowView;
objj_msgSend(_1b,"_setWindowView:",_1f);
objj_msgSend(_1b,"setLevel:",_fullBridgeSession.level);
objj_msgSend(_1b,"setHasShadow:",_fullBridgeSession.hasShadow);
objj_msgSend(_1b,"setAutoresizingMask:",CPWindowNotSizable);
objj_msgSend(_1b,"setFrame:",objj_msgSend(_1f,"frameRectForContentRect:",_fullBridgeSession.contentRect));
}
}
}),new objj_method(sel_getUid("isFullBridge"),function(_20,_21){
with(_20){
return _isFullBridge;
}
}),new objj_method(sel_getUid("styleMask"),function(_22,_23){
with(_22){
return _styleMask;
}
}),new objj_method(sel_getUid("contentRectForFrameRect:"),function(_24,_25,_26){
with(_24){
return objj_msgSend(_windowView,"contentRectForFrameRect:",_26);
}
}),new objj_method(sel_getUid("frameRectForContentRect:"),function(_27,_28,_29){
with(_27){
return objj_msgSend(_windowView,"frameRectForContentRect:",_29);
}
}),new objj_method(sel_getUid("frame"),function(_2a,_2b){
with(_2a){
return _frame;
}
}),new objj_method(sel_getUid("setFrame:display:animate:"),function(_2c,_2d,_2e,_2f,_30){
with(_2c){
if(_30){
var _31=objj_msgSend(objj_msgSend(_CPWindowFrameAnimation,"alloc"),"initWithWindow:targetFrame:",_2c,_2e);
objj_msgSend(_31,"startAnimation");
}else{
objj_msgSend(_2c,"setFrameOrigin:",_2e.origin);
objj_msgSend(_2c,"setFrameSize:",_2e.size);
}
}
}),new objj_method(sel_getUid("setFrame:"),function(_32,_33,_34){
with(_32){
objj_msgSend(_32,"setFrame:display:animate:",_34,YES,NO);
}
}),new objj_method(sel_getUid("setFrameOrigin:"),function(_35,_36,_37){
with(_35){
var _38=_frame.origin;
if((_38.x==_37.x&&_38.y==_37.y)){
return;
}
_38.x=_37.x;
_38.y=_37.y;
if(!_DOMElement.CPDOMDisplayContext){
_DOMElement.CPDOMDisplayContext=[];
}
var _39=_DOMElement.CPDOMDisplayContext[0];
if(!(_39>=0)){
_39=_DOMElement.CPDOMDisplayContext[0]=CPDOMDisplayServerInstructionCount;
CPDOMDisplayServerInstructionCount+=5;
}
CPDOMDisplayServerInstructions[_39]=0;
CPDOMDisplayServerInstructions[_39+1]=_DOMElement;
CPDOMDisplayServerInstructions[_39+2]=NULL;
CPDOMDisplayServerInstructions[_39+3]=_38.x;
CPDOMDisplayServerInstructions[_39+4]=_38.y;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidMoveNotification,_35);
}
}),new objj_method(sel_getUid("setFrameSize:"),function(_3a,_3b,_3c){
with(_3a){
_3c={width:MIN(MAX(_3c.width,_minSize.width),_maxSize.width),height:MIN(MAX(_3c.height,_minSize.height),_maxSize.height)};
if((_frame.size.width==_3c.width&&_frame.size.height==_3c.height)){
return;
}
_frame.size=_3c;
objj_msgSend(_windowView,"setFrameSize:",_3c);
if(_hasShadow){
objj_msgSend(_shadowView,"setFrameSize:",{width:_1+_3c.width+_2,height:_4+_3c.height+_3+_5});
}
if(!_isAnimating&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResize:"))){
objj_msgSend(_delegate,"windowDidResize:",_3a);
}
}
}),new objj_method(sel_getUid("orderFront:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_bridge,"order:window:relativeTo:",CPWindowAbove,_3d,nil);
}
}),new objj_method(sel_getUid("orderBack:"),function(_40,_41,_42){
with(_40){
}
}),new objj_method(sel_getUid("orderOut:"),function(_43,_44,_45){
with(_43){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillClose:"))){
objj_msgSend(_delegate,"windowWillClose:",_43);
}
objj_msgSend(_bridge,"order:window:relativeTo:",CPWindowOut,_43,nil);
if(objj_msgSend(CPApp,"keyWindow")==_43){
objj_msgSend(_43,"resignKeyWindow");
CPApp._keyWindow=nil;
}
}
}),new objj_method(sel_getUid("orderWindow:relativeTo:"),function(_46,_47,_48,_49){
with(_46){
objj_msgSend(_bridge,"order:window:relativeTo:",_48,_46,CPApp._windows[_49]);
}
}),new objj_method(sel_getUid("setLevel:"),function(_4a,_4b,_4c){
with(_4a){
_level=_4c;
}
}),new objj_method(sel_getUid("level"),function(_4d,_4e){
with(_4d){
return _level;
}
}),new objj_method(sel_getUid("isVisible"),function(_4f,_50){
with(_4f){
return _isVisible;
}
}),new objj_method(sel_getUid("showsResizeIndicator"),function(_51,_52){
with(_51){
return objj_msgSend(_windowView,"showsResizeIndicator");
}
}),new objj_method(sel_getUid("setShowsResizeIndicator:"),function(_53,_54,_55){
with(_53){
objj_msgSend(_windowView,"setShowsResizeIndicator:",_55);
}
}),new objj_method(sel_getUid("resizeIndicatorOffset"),function(_56,_57){
with(_56){
return objj_msgSend(_windowView,"resizeIndicatorOffset");
}
}),new objj_method(sel_getUid("setResizeIndicatorOffset:"),function(_58,_59,_5a){
with(_58){
objj_msgSend(_windowView,"setResizeIndicatorOffset:",_5a);
}
}),new objj_method(sel_getUid("setContentView:"),function(_5b,_5c,_5d){
with(_5b){
if(_contentView){
objj_msgSend(_contentView,"removeFromSuperview");
}
var _5e=CGRectMake(0,0,CGRectGetWidth(_frame),CGRectGetHeight(_frame));
_contentView=_5d;
objj_msgSend(_contentView,"setFrame:",objj_msgSend(_5b,"contentRectForFrameRect:",_5e));
objj_msgSend(_contentView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
objj_msgSend(_windowView,"addSubview:",_contentView);
}
}),new objj_method(sel_getUid("contentView"),function(_5f,_60){
with(_5f){
return _contentView;
}
}),new objj_method(sel_getUid("setBackgroundColor:"),function(_61,_62,_63){
with(_61){
objj_msgSend(_windowView,"setBackgroundColor:",_63);
}
}),new objj_method(sel_getUid("backgroundColor"),function(_64,_65){
with(_64){
return objj_msgSend(_windowView,"backgroundColor");
}
}),new objj_method(sel_getUid("setMinSize:"),function(_66,_67,_68){
with(_66){
if(CGSizeEqualToSize(_minSize,_68)){
return;
}
_minSize=CGSizeCreateCopy(_68);
var _69=CGSizeMakeCopy(objj_msgSend(_66,"frame").size),_6a=NO;
if(_69.width<_minSize.width){
_69.width=_minSize.width;
_6a=YES;
}
if(_69.height<_minSize.height){
_69.height=_minSize.height;
_6a=YES;
}
if(_6a){
objj_msgSend(_66,"setFrameSize:",_69);
}
}
}),new objj_method(sel_getUid("minSize"),function(_6b,_6c){
with(_6b){
return _minSize;
}
}),new objj_method(sel_getUid("setMaxSize:"),function(_6d,_6e,_6f){
with(_6d){
if(CGSizeEqualToSize(_maxSize,_6f)){
return;
}
_maxSize=CGSizeCreateCopy(_6f);
var _70=CGSizeMakeCopy(objj_msgSend(_6d,"frame").size),_71=NO;
if(_70.width>_maxSize.width){
_70.width=_maxSize.width;
_71=YES;
}
if(_70.height>_maxSize.height){
_70.height=_maxSize.height;
_71=YES;
}
if(_71){
objj_msgSend(_6d,"setFrameSize:",_70);
}
}
}),new objj_method(sel_getUid("maxSize"),function(_72,_73){
with(_72){
return _maxSize;
}
}),new objj_method(sel_getUid("hasShadow"),function(_74,_75){
with(_74){
return _hasShadow;
}
}),new objj_method(sel_getUid("setHasShadow:"),function(_76,_77,_78){
with(_76){
if(_hasShadow===_78){
return;
}
_hasShadow=_78;
if(_hasShadow){
var _79=objj_msgSend(_windowView,"bounds");
_shadowView=objj_msgSend(objj_msgSend(CPView,"alloc"),"initWithFrame:",CGRectMake(-_1,-_3+_5,_1+CGRectGetWidth(_79)+_2,_3+CGRectGetHeight(_79)+_4));
if(!_6){
var _7a=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_6=objj_msgSend(CPColor,"colorWithPatternImage:",objj_msgSend(objj_msgSend(CPNinePartImage,"alloc"),"initWithImageSlices:",[objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow0.png"),CGSizeMake(20,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow1.png"),CGSizeMake(1,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow2.png"),CGSizeMake(19,19)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow3.png"),CGSizeMake(20,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow4.png"),CGSizeMake(1,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow5.png"),CGSizeMake(19,1)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow6.png"),CGSizeMake(20,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow7.png"),CGSizeMake(1,18)),objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_7a,"pathForResource:","CPWindow/CPWindowShadow8.png"),CGSizeMake(19,18))]));
}
objj_msgSend(_shadowView,"setBackgroundColor:",_6);
objj_msgSend(_shadowView,"setAutoresizingMask:",CPViewWidthSizable|CPViewHeightSizable);
if(_shadowView._DOMElement.CPDOMDisplayContext){
_shadowView._DOMElement.CPDOMDisplayContext[0]=-1;
}
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=7;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_shadowView._DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_windowView._DOMElement;
}else{
if(_shadowView){
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=8;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_DOMElement;
CPDOMDisplayServerInstructions[CPDOMDisplayServerInstructionCount++]=_shadowView._DOMElement;
_shadowView=nil;
}
}
}
}),new objj_method(sel_getUid("setDelegate:"),function(_7b,_7c,_7d){
with(_7b){
_delegate=_7d;
_delegateRespondsToWindowWillReturnUndoManagerSelector=objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowWillReturnUndoManager:"));
var _7e=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidBecomeMain:"))){
objj_msgSend(_7e,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidBecomeMain:"),CPWindowDidBecomeMainNotification,_7b);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignMain:"))){
objj_msgSend(_7e,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidResignMain:"),CPWindowDidResignMainNotification,_7b);
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidMove:"))){
objj_msgSend(_7e,"addObserver:selector:name:object:",_delegate,sel_getUid("windowDidMove:"),CPWindowDidMoveNotification,_7b);
}
}
}),new objj_method(sel_getUid("delegate"),function(_7f,_80){
with(_7f){
return _delegate;
}
}),new objj_method(sel_getUid("setWindowController:"),function(_81,_82,_83){
with(_81){
_windowController=_83;
}
}),new objj_method(sel_getUid("windowController"),function(_84,_85){
with(_84){
return _windowController;
}
}),new objj_method(sel_getUid("doCommandBySelector:"),function(_86,_87,_88){
with(_86){
if(objj_msgSend(_delegate,"respondsToSelector:",_88)){
objj_msgSend(_delegate,"performSelector:",_88);
}else{
objj_msgSendSuper({receiver:_86,super_class:objj_getClass("CPResponder")},"doCommandBySelector:",_88);
}
}
}),new objj_method(sel_getUid("acceptsFirstResponder"),function(_89,_8a){
with(_89){
return YES;
}
}),new objj_method(sel_getUid("makeFirstResponder:"),function(_8b,_8c,_8d){
with(_8b){
if(_firstResponder==_8d){
return YES;
}
if(!objj_msgSend(_firstResponder,"resignFirstResponder")){
return NO;
}
if(!_8d||!objj_msgSend(_8d,"acceptsFirstResponder")||!objj_msgSend(_8d,"becomeFirstResponder")){
_firstResponder=_8b;
return NO;
}
_firstResponder=_8d;
return YES;
}
}),new objj_method(sel_getUid("firstResponder"),function(_8e,_8f){
with(_8e){
return _firstResponder;
}
}),new objj_method(sel_getUid("acceptsMouseMovedEvents"),function(_90,_91){
with(_90){
return _acceptsMouseMovedEvents;
}
}),new objj_method(sel_getUid("setAcceptsMouseMovedEvents:"),function(_92,_93,_94){
with(_92){
_acceptsMouseMovedEvents=_94;
}
}),new objj_method(sel_getUid("ignoresMouseEvents"),function(_95,_96){
with(_95){
return _ignoresMouseEvents;
}
}),new objj_method(sel_getUid("setIgnoresMouseEvents:"),function(_97,_98,_99){
with(_97){
_ignoresMouseEvents=_99;
}
}),new objj_method(sel_getUid("title"),function(_9a,_9b){
with(_9a){
return _title;
}
}),new objj_method(sel_getUid("setTitle:"),function(_9c,_9d,_9e){
with(_9c){
_title=_9e;
objj_msgSend(_windowView,"setTitle:",_9e);
objj_msgSend(_9c,"_synchronizeMenuBarTitleWithWindowTitle");
}
}),new objj_method(sel_getUid("setTitleWithRepresentedFilename:"),function(_9f,_a0,_a1){
with(_9f){
objj_msgSend(_9f,"setRepresentedFilename:",_a1);
objj_msgSend(_9f,"setTitle:",objj_msgSend(_a1,"lastPathComponent"));
}
}),new objj_method(sel_getUid("setRepresentedFilename:"),function(_a2,_a3,_a4){
with(_a2){
objj_msgSend(_a2,"setRepresentedURL:",_a4);
}
}),new objj_method(sel_getUid("representedFilename"),function(_a5,_a6){
with(_a5){
return _representedURL;
}
}),new objj_method(sel_getUid("setRepresentedURL:"),function(_a7,_a8,_a9){
with(_a7){
_representedURL=_a9;
}
}),new objj_method(sel_getUid("representedURL"),function(_aa,_ab){
with(_aa){
return _representedURL;
}
}),new objj_method(sel_getUid("setMovableByWindowBackground:"),function(_ac,_ad,_ae){
with(_ac){
_isMovableByWindowBackground=_ae;
}
}),new objj_method(sel_getUid("isMovableByWindowBackground"),function(_af,_b0){
with(_af){
return _isMovableByWindowBackground;
}
}),new objj_method(sel_getUid("center"),function(_b1,_b2){
with(_b1){
var _b3=objj_msgSend(_b1,"frame").size,_b4=objj_msgSend(_bridge,"contentBounds").size;
objj_msgSend(_b1,"setFrameOrigin:",CGPointMake((_b4.width-_b3.width)/2,(_b4.height-_b3.height)/2));
}
}),new objj_method(sel_getUid("sendEvent:"),function(_b5,_b6,_b7){
with(_b5){
var _b8=objj_msgSend(_b7,"type"),_b9=objj_msgSend(_b7,"locationInWindow");
switch(_b8){
case CPKeyUp:
return objj_msgSend(objj_msgSend(_b5,"firstResponder"),"keyUp:",_b7);
case CPKeyDown:
return objj_msgSend(objj_msgSend(_b5,"firstResponder"),"keyDown:",_b7);
case CPScrollWheel:
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_b9),"scrollWheel:",_b7);
case CPLeftMouseUp:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_b9),"mouseUp:",_b7);
}
objj_msgSend(_leftMouseDownView,"mouseUp:",_b7);
_leftMouseDownView=nil;
return;
case CPLeftMouseDown:
_leftMouseDownView=objj_msgSend(_windowView,"hitTest:",_b9);
if(_leftMouseDownView!=_firstResponder&&objj_msgSend(_leftMouseDownView,"acceptsFirstResponder")){
objj_msgSend(_b5,"makeFirstResponder:",_leftMouseDownView);
}
var _ba=objj_msgSend(_b7,"window");
if(objj_msgSend(_ba,"isKeyWindow")||objj_msgSend(_ba,"becomesKeyOnlyIfNeeded")){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_b7);
}else{
objj_msgSend(_b5,"makeKeyAndOrderFront:",_b5);
if(objj_msgSend(_leftMouseDownView,"acceptsFirstMouse:",_b7)){
return objj_msgSend(_leftMouseDownView,"mouseDown:",_b7);
}
}
break;
case CPLeftMouseDragged:
if(!_leftMouseDownView){
return objj_msgSend(objj_msgSend(_windowView,"hitTest:",_b9),"mouseDragged:",_b7);
}
return objj_msgSend(_leftMouseDownView,"mouseDragged:",_b7);
case CPRightMouseUp:
return objj_msgSend(_rightMouseDownView,"mouseUp:",_b7);
case CPRightMouseDown:
_rightMouseDownView=objj_msgSend(_windowView,"hitTest:",_b9);
return objj_msgSend(_rightMouseDownView,"mouseDown:",_b7);
case CPRightMouseDragged:
return objj_msgSend(_rightMouseDownView,"mouseDragged:",_b7);
case CPMouseMoved:
if(!_acceptsMouseMovedEvents){
return;
}
var _bb=objj_msgSend(_windowView,"hitTest:",_b9);
if(_bb!=_mouseOverView){
if(_mouseOverView){
objj_msgSend(_mouseOverView,"mouseExited:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseExited,_b9,objj_msgSend(_b7,"modifierFlags"),objj_msgSend(_b7,"timestamp"),_windowNumber,nil,-1,1,0));
}
if(_bb){
objj_msgSend(_bb,"mouseEntered:",objj_msgSend(CPEvent,"mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:",CPMouseEntered,_b9,objj_msgSend(_b7,"modifierFlags"),objj_msgSend(_b7,"timestamp"),_windowNumber,nil,-1,1,0));
}
_mouseOverView=_bb;
}
objj_msgSend(_mouseOverView,"mouseMoved:",_b7);
}
}
}),new objj_method(sel_getUid("windowNumber"),function(_bc,_bd){
with(_bc){
return _windowNumber;
}
}),new objj_method(sel_getUid("becomeKeyWindow"),function(_be,_bf){
with(_be){
if(_firstResponder!=_be&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("becomeKeyWindow"))){
objj_msgSend(_firstResponder,"becomeKeyWindow");
}
}
}),new objj_method(sel_getUid("canBecomeKeyWindow"),function(_c0,_c1){
with(_c0){
return YES;
}
}),new objj_method(sel_getUid("isKeyWindow"),function(_c2,_c3){
with(_c2){
return objj_msgSend(CPApp,"keyWindow")==_c2;
}
}),new objj_method(sel_getUid("makeKeyAndOrderFront:"),function(_c4,_c5,_c6){
with(_c4){
objj_msgSend(_c4,"orderFront:",_c4);
objj_msgSend(_c4,"makeKeyWindow");
objj_msgSend(_c4,"makeMainWindow");
}
}),new objj_method(sel_getUid("makeKeyWindow"),function(_c7,_c8){
with(_c7){
if(!objj_msgSend(_c7,"canBecomeKeyWindow")){
return;
}
objj_msgSend(CPApp._keyWindow,"resignKeyWindow");
CPApp._keyWindow=_c7;
objj_msgSend(_c7,"becomeKeyWindow");
}
}),new objj_method(sel_getUid("resignKeyWindow"),function(_c9,_ca){
with(_c9){
if(_firstResponder!=_c9&&objj_msgSend(_firstResponder,"respondsToSelector:",sel_getUid("resignKeyWindow"))){
objj_msgSend(_firstResponder,"resignKeyWindow");
}
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowDidResignKey:"))){
objj_msgSend(_delegate,"windowDidResignKey:",_c9);
}
}
}),new objj_method(sel_getUid("dragImage:at:offset:event:pasteboard:source:slideBack:"),function(_cb,_cc,_cd,_ce,_cf,_d0,_d1,_d2,_d3){
with(_cb){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragImage:fromWindow:at:offset:event:pasteboard:source:slideBack:",_cd,_cb,objj_msgSend(_cb,"convertBaseToBridge:",_ce),_cf,_d0,_d1,_d2,_d3);
}
}),new objj_method(sel_getUid("dragView:at:offset:event:pasteboard:source:slideBack:"),function(_d4,_d5,_d6,_d7,_d8,_d9,_da,_db,_dc){
with(_d4){
objj_msgSend(objj_msgSend(CPDragServer,"sharedDragServer"),"dragView:fromWindow:at:offset:event:pasteboard:source:slideBack:",_d6,_d4,objj_msgSend(_d4,"convertBaseToBridge:",_d7),_d8,_d9,_da,_db,_dc);
}
}),new objj_method(sel_getUid("registerForDraggedTypes:"),function(_dd,_de,_df){
with(_dd){
_registeredDraggedTypes=objj_msgSend(_df,"copy");
}
}),new objj_method(sel_getUid("registeredDraggedTypes"),function(_e0,_e1){
with(_e0){
return _registeredDraggedTypes;
}
}),new objj_method(sel_getUid("unregisterDraggedTypes"),function(_e2,_e3){
with(_e2){
_registeredDraggedTypes=nil;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_e4,_e5,_e6){
with(_e4){
if(_isDocumentEdited==_e6){
return;
}
_isDocumentEdited=_e6;
objj_msgSend(CPMenu,"_setMenuBarIconImageAlphaValue:",_isDocumentEdited?0.5:1);
}
}),new objj_method(sel_getUid("isDocumentEdited"),function(_e7,_e8){
with(_e7){
return _isDocumentEdited;
}
}),new objj_method(sel_getUid("setDocumentSaving:"),function(_e9,_ea,_eb){
with(_e9){
if(_isDocumentSaving==_eb){
return;
}
_isDocumentSaving=_eb;
objj_msgSend(_e9,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(_windowView,"windowDidChangeDocumentSaving");
}
}),new objj_method(sel_getUid("isDocumentSaving"),function(_ec,_ed){
with(_ec){
return _isDocumentSaving;
}
}),new objj_method(sel_getUid("_synchronizeSaveMenuWithDocumentSaving"),function(_ee,_ef){
with(_ee){
if(!objj_msgSend(_ee,"isMainWindow")){
return;
}
var _f0=objj_msgSend(CPApp,"mainMenu"),_f1=objj_msgSend(_f0,"indexOfItemWithTitle:",_isDocumentSaving?"Save":"Saving...");
if(_f1==CPNotFound){
return;
}
var _f2=objj_msgSend(_f0,"itemAtIndex:",_f1);
if(_isDocumentSaving){
_7=objj_msgSend(_f2,"image");
objj_msgSend(_f2,"setTitle:","Saving...");
objj_msgSend(_f2,"setImage:",_8);
objj_msgSend(_f2,"setEnabled:",NO);
}else{
objj_msgSend(_f2,"setTitle:","Save");
objj_msgSend(_f2,"setImage:",_7);
objj_msgSend(_f2,"setEnabled:",YES);
}
}
}),new objj_method(sel_getUid("performClose:"),function(_f3,_f4,_f5){
with(_f3){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("windowShouldClose:"))){
if(!objj_msgSend(_delegate,"windowShouldClose:",_f3)){
return;
}
}else{
if(objj_msgSend(_f3,"respondsToSelector:",sel_getUid("windowShouldClose:"))&&!objj_msgSend(_f3,"windowShouldClose:",_f3)){
return;
}
}
objj_msgSend(_f3,"close");
}
}),new objj_method(sel_getUid("close"),function(_f6,_f7){
with(_f6){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowWillCloseNotification,_f6);
objj_msgSend(_f6,"orderOut:",nil);
}
}),new objj_method(sel_getUid("isMainWindow"),function(_f8,_f9){
with(_f8){
return objj_msgSend(CPApp,"mainWindow")==_f8;
}
}),new objj_method(sel_getUid("canBecomeMainWindow"),function(_fa,_fb){
with(_fa){
if(objj_msgSend(_fa,"isVisible")){
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("makeMainWindow"),function(_fc,_fd){
with(_fc){
if(!objj_msgSend(_fc,"canBecomeMainWindow")){
return;
}
objj_msgSend(CPApp._mainWindow,"resignMainWindow");
CPApp._mainWindow=_fc;
objj_msgSend(_fc,"becomeMainWindow");
}
}),new objj_method(sel_getUid("becomeMainWindow"),function(_fe,_ff){
with(_fe){
objj_msgSend(_fe,"_synchronizeMenuBarTitleWithWindowTitle");
objj_msgSend(_fe,"_synchronizeSaveMenuWithDocumentSaving");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidBecomeMainNotification,_fe);
}
}),new objj_method(sel_getUid("resignMainWindow"),function(self,_cmd){
with(self){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",CPWindowDidResignMainNotification,self);
}
}),new objj_method(sel_getUid("toolbar"),function(self,_cmd){
with(self){
return _toolbar;
}
}),new objj_method(sel_getUid("setToolbar:"),function(self,_cmd,_106){
with(self){
if(_toolbar===_106){
return;
}
objj_msgSend(objj_msgSend(_106,"_window"),"setToolbar:",nil);
objj_msgSend(_toolbar,"_setWindow:",nil);
_toolbar=_106;
objj_msgSend(_toolbar,"_setWindow:",self);
objj_msgSend(self,"_noteToolbarChanged");
}
}),new objj_method(sel_getUid("toggleToolbarShown:"),function(self,_cmd,_109){
with(self){
var _10a=objj_msgSend(self,"toolbar");
objj_msgSend(_10a,"setVisible:",!objj_msgSend(_10a,"isVisible"));
}
}),new objj_method(sel_getUid("_noteToolbarChanged"),function(self,_cmd){
with(self){
var _10d=CGRectMakeCopy(objj_msgSend(self,"frame"));
objj_msgSend(_windowView,"noteToolbarChanged");
if(_isFullBridge){
var _10e=objj_msgSend(_bridge,"contentBounds");
}else{
var _10e=CGRectMakeCopy(objj_msgSend(self,"frame"));
_10e.origin=_10d.origin;
}
objj_msgSend(self,"setFrame:",_10e);
}
}),new objj_method(sel_getUid("_setAttachedSheetFrameOrigin"),function(self,_cmd){
with(self){
var _111=objj_msgSend(objj_msgSend(self,"contentView"),"frame"),_112=CGRectMakeCopy(objj_msgSend(_attachedSheet,"frame"));
_112.origin.y=CGRectGetMinY(_frame)+CGRectGetMinY(_111);
_112.origin.x=CGRectGetMinX(_frame)+FLOOR((CGRectGetWidth(_frame)-CGRectGetWidth(_112))/2);
objj_msgSend(_attachedSheet,"setFrameOrigin:",_112.origin);
}
}),new objj_method(sel_getUid("_animateAttachedSheet"),function(self,_cmd){
with(self){
}
}),new objj_method(sel_getUid("_attachSheet:modalDelegate:didEndSelector:contextInfo:"),function(self,_cmd,_117,_118,_119,_11a){
with(self){
_attachedSheet=_117;
_117._isSheet=YES;
objj_msgSend(self,"_setAttachedSheetFrameOrigin");
objj_msgSend(_bridge,"order:window:relativeTo:",CPWindowAbove,_117,self);
}
}),new objj_method(sel_getUid("attachedSheet"),function(self,_cmd){
with(self){
return _attachedSheet;
}
}),new objj_method(sel_getUid("isSheet"),function(self,_cmd){
with(self){
return _isSheet;
}
}),new objj_method(sel_getUid("becomesKeyOnlyIfNeeded"),function(self,_cmd){
with(self){
return NO;
}
}),new objj_method(sel_getUid("worksWhenModal"),function(self,_cmd){
with(self){
return NO;
}
})]);
class_addMethods(_a,[new objj_method(sel_getUid("initialize"),function(self,_cmd){
with(self){
if(self!=objj_msgSend(CPWindow,"class")){
return;
}
var _125=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(CPWindow,"class"));
_8=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:size:",objj_msgSend(_125,"pathForResource:","CPProgressIndicator/CPProgressIndicatorSpinningStyleRegular.gif"),CGSizeMake(16,16));
}
}),new objj_method(sel_getUid("_windowViewClassForStyleMask:"),function(self,_cmd,_128){
with(self){
if(_128&CPHUDBackgroundWindowMask){
return _CPHUDWindowView;
}else{
if(_128===CPBorderlessWindowMask){
return _CPBorderlessWindowView;
}
}
return _CPStandardWindowView;
}
}),new objj_method(sel_getUid("_windowViewClassForFullBridgeStyleMask:"),function(self,_cmd,_12b){
with(self){
return _CPBorderlessBridgeWindowView;
}
}),new objj_method(sel_getUid("frameRectForContentRect:styleMask:"),function(self,_cmd,_12e,_12f){
with(self){
return objj_msgSend(objj_msgSend(objj_msgSend(self,"class"),"_windowViewClassForStyleMask:",_styleMask),"frameRectForContentRect:",_12e);
}
})]);
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("_synchronizeMenuBarTitleWithWindowTitle"),function(self,_cmd){
with(self){
if(!objj_msgSend(_windowController,"document")||!objj_msgSend(self,"isMainWindow")){
return;
}
objj_msgSend(CPMenu,"setMenuBarTitle:",_title);
}
})]);
var _9=objj_getClass("CPWindow");
if(!_9){
objj_exception_throw(new objj_exception(OBJJClassNotFoundException,"*** Could not find definition for class \"CPWindow\""));
}
var _a=_9.isa;
class_addMethods(_9,[new objj_method(sel_getUid("setBridge:"),function(self,_cmd,_134){
with(self){
if(_bridge==_134){
return;
}
if(_bridge){
objj_msgSend(self,"orderOut:",self);
}
_bridge=_134;
if(objj_msgSend(self,"isFullBridge")){
objj_msgSend(self,"setFrame:",objj_msgSend(_134,"contentBounds"));
}
}
}),new objj_method(sel_getUid("resizeWithOldBridgeSize:"),function(self,_cmd,_137){
with(self){
if(objj_msgSend(self,"isFullBridge")){
return objj_msgSend(self,"setFrame:",objj_msgSend(_bridge,"visibleFrame"));
}
if(_autoresizingMask==CPWindowNotSizable){
return;
}
var _138=objj_msgSend(_bridge,"contentBounds"),_139=CGRectMakeCopy(_frame),dX=(CGRectGetWidth(_138)-_137.width)/(((_autoresizingMask&CPWindowMinXMargin)?1:0)+(_autoresizingMask&CPWindowWidthSizable?1:0)+(_autoresizingMask&CPWindowMaxXMargin?1:0)),dY=(CGRectGetHeight(_138)-_137.height)/((_autoresizingMask&CPWindowMinYMargin?1:0)+(_autoresizingMask&CPWindowHeightSizable?1:0)+(_autoresizingMask&CPWindowMaxYMargin?1:0));
if(_autoresizingMask&CPWindowMinXMargin){
_139.origin.x+=dX;
}
if(_autoresizingMask&CPWindowWidthSizable){
_139.size.width+=dX;
}
if(_autoresizingMask&CPWindowMinYMargin){
_139.origin.y+=dY;
}
if(_autoresizingMask&CPWindowHeightSizable){
_139.size.height+=dY;
}
objj_msgSend(self,"setFrame:",_139);
}
}),new objj_method(sel_getUid("setAutoresizingMask:"),function(self,_cmd,_13e){
with(self){
_autoresizingMask=_13e;
}
}),new objj_method(sel_getUid("autoresizingMask"),function(self,_cmd){
with(self){
return _autoresizingMask;
}
}),new objj_method(sel_getUid("convertBaseToBridge:"),function(self,_cmd,_143){
with(self){
var _144=objj_msgSend(self,"frame").origin;
return CGPointMake(_143.x+_144.x,_143.y+_144.y);
}
}),new objj_method(sel_getUid("convertBridgeToBase:"),function(self,_cmd,_147){
with(self){
var _148=objj_msgSend(self,"frame").origin;
return CGPointMake(_147.x-_148.x,_147.y-_148.y);
}
}),new objj_method(sel_getUid("undoManager"),function(self,_cmd){
with(self){
if(_delegateRespondsToWindowWillReturnUndoManagerSelector){
return objj_msgSend(_delegate,"windowWillReturnUndoManager:",self);
}
if(!_undoManager){
_undoManager=objj_msgSend(objj_msgSend(CPUndoManager,"alloc"),"init");
}
return _undoManager;
}
}),new objj_method(sel_getUid("undo:"),function(self,_cmd,_14d){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"undo");
}
}),new objj_method(sel_getUid("redo:"),function(self,_cmd,_150){
with(self){
objj_msgSend(objj_msgSend(self,"undoManager"),"redo");
}
}),new objj_method(sel_getUid("containsPoint:"),function(self,_cmd,_153){
with(self){
return CGRectContainsPoint(_frame,_153);
}
})]);
var _154=function(_155,_156,_157){
return _155+(_156-_155)*_157;
};
var _9=objj_allocateClassPair(CPAnimation,"_CPWindowFrameAnimation"),_a=_9.isa;
class_addIvars(_9,[new objj_ivar("_window"),new objj_ivar("_startFrame"),new objj_ivar("_targetFrame")]);
objj_registerClassPair(_9);
objj_addClassForBundle(_9,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_9,[new objj_method(sel_getUid("initWithWindow:targetFrame:"),function(self,_cmd,_15a,_15b){
with(self){
self=objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"initWithDuration:animationCurve:",0.2,CPAnimationLinear);
if(self){
_window=_15a;
_targetFrame=CGRectMakeCopy(_15b);
_startFrame=CGRectMakeCopy(objj_msgSend(_window,"frame"));
}
return self;
}
}),new objj_method(sel_getUid("startAnimation"),function(self,_cmd){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"startAnimation");
_window._isAnimating=YES;
}
}),new objj_method(sel_getUid("setCurrentProgress:"),function(self,_cmd,_160){
with(self){
objj_msgSendSuper({receiver:self,super_class:objj_getClass("CPAnimation")},"setCurrentProgress:",_160);
var _161=objj_msgSend(self,"currentValue");
if(_161==1){
_window._isAnimating=NO;
}
objj_msgSend(_window,"setFrameOrigin:",CGPointMake(_154(CGRectGetMinX(_startFrame),CGRectGetMinX(_targetFrame),_161),_154(CGRectGetMinY(_startFrame),CGRectGetMinY(_targetFrame),_161)));
objj_msgSend(_window,"setFrameSize:",CGSizeMake(_154(CGRectGetWidth(_startFrame),CGRectGetWidth(_targetFrame),_161),_154(CGRectGetHeight(_startFrame),CGRectGetHeight(_targetFrame),_161)));
}
})]);
_CPWindowFullBridgeSessionMake=function(_162,_163,_164,_165){
return {windowView:_162,contentRect:_163,hasShadow:_164,level:_165};
};
i;15;_CPWindowView.ji;23;_CPStandardWindowView.ji;18;_CPHUDWindowView.ji;25;_CPBorderlessWindowView.ji;31;_CPBorderlessBridgeWindowView.ji;14;CPDragServer.ji;19;CPDOMWindowBridge.ji;8;CPView.jp;20;CPWindowController.jI;21;Foundation/CPObject.jI;21;Foundation/CPString.ji;13;CPResponder.ji;10;CPWindow.ji;12;CPDocument.jc;4651;
var _1=objj_allocateClassPair(CPResponder,"CPWindowController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_owner"),new objj_ivar("_window"),new objj_ivar("_document"),new objj_ivar("_windowCibName")]);
objj_registerClassPair(_1);
objj_addClassForBundle(_1,objj_getBundleWithPath(OBJJ_CURRENT_BUNDLE.path));
class_addMethods(_1,[new objj_method(sel_getUid("initWithWindow:"),function(_3,_4,_5){
with(_3){
_3=objj_msgSendSuper({receiver:_3,super_class:objj_getClass("CPResponder")},"init");
if(_3){
objj_msgSend(_3,"setWindow:",_5);
objj_msgSend(_3,"setNextResponder:",CPApp);
}
return _3;
}
}),new objj_method(sel_getUid("initWithWindowCibName:"),function(_6,_7,_8){
with(_6){
return objj_msgSend(_6,"initWithWindowCibName:owner:",_8,_6);
}
}),new objj_method(sel_getUid("initWithWindowCibName:owner:"),function(_9,_a,_b,_c){
with(_9){
_9=objj_msgSendSuper({receiver:_9,super_class:objj_getClass("CPResponder")},"init");
if(_9){
_owner=_c;
_windowCibName=_b;
objj_msgSend(_9,"setNextResponder:",CPApp);
}
return _9;
}
}),new objj_method(sel_getUid("loadWindow"),function(_d,_e){
with(_d){
objj_msgSend(_d,"windowWillLoad");
objj_msgSend(_d,"setWindow:",CPApp._keyWindow=objj_msgSend(objj_msgSend(CPWindow,"alloc"),"initWithContentRect:styleMask:",CPRectMakeZero(),CPBorderlessBridgeWindowMask|CPTitledWindowMask|CPClosableWindowMask|CPResizableWindowMask));
objj_msgSend(_d,"windowDidLoad");
}
}),new objj_method(sel_getUid("showWindow:"),function(_f,_10,_11){
with(_f){
var _12=objj_msgSend(_f,"window");
if(objj_msgSend(_12,"respondsToSelector:",sel_getUid("becomesKeyOnlyIfNeeded"))&&objj_msgSend(_12,"becomesKeyOnlyIfNeeded")){
objj_msgSend(_12,"orderFront:",_11);
}else{
objj_msgSend(_12,"makeKeyAndOrderFront:",_11);
}
}
}),new objj_method(sel_getUid("isWindowLoaded"),function(_13,_14){
with(_13){
return _window;
}
}),new objj_method(sel_getUid("window"),function(_15,_16){
with(_15){
if(!_window){
objj_msgSend(_15,"loadWindow");
}
return _window;
}
}),new objj_method(sel_getUid("setWindow:"),function(_17,_18,_19){
with(_17){
_window=_19;
objj_msgSend(_window,"setWindowController:",_17);
objj_msgSend(_window,"setNextResponder:",_17);
}
}),new objj_method(sel_getUid("windowDidLoad"),function(_1a,_1b){
with(_1a){
objj_msgSend(_document,"windowControllerDidLoadNib:",_1a);
objj_msgSend(_1a,"synchronizeWindowTitleWithDocumentName");
}
}),new objj_method(sel_getUid("windowWillLoad"),function(_1c,_1d){
with(_1c){
objj_msgSend(_document,"windowControllerWillLoadNib:",_1c);
}
}),new objj_method(sel_getUid("setDocument:"),function(_1e,_1f,_20){
with(_1e){
if(_document==_20){
return;
}
var _21=objj_msgSend(CPNotificationCenter,"defaultCenter");
if(_document){
objj_msgSend(_21,"removeObserver:name:object:",_1e,CPDocumentWillSaveNotification,_document);
objj_msgSend(_21,"removeObserver:name:object:",_1e,CPDocumentDidSaveNotification,_document);
objj_msgSend(_21,"removeObserver:name:object:",_1e,CPDocumentDidFailToSaveNotification,_document);
}
_document=_20;
if(_document){
objj_msgSend(_21,"addObserver:selector:name:object:",_1e,sel_getUid("_documentWillSave:"),CPDocumentWillSaveNotification,_document);
objj_msgSend(_21,"addObserver:selector:name:object:",_1e,sel_getUid("_documentDidSave:"),CPDocumentDidSaveNotification,_document);
objj_msgSend(_21,"addObserver:selector:name:object:",_1e,sel_getUid("_documentDidFailToSave:"),CPDocumentDidFailToSaveNotification,_document);
objj_msgSend(_1e,"setDocumentEdited:",objj_msgSend(_document,"isDocumentEdited"));
}
objj_msgSend(_1e,"synchronizeWindowTitleWithDocumentName");
}
}),new objj_method(sel_getUid("_documentWillSave:"),function(_22,_23,_24){
with(_22){
objj_msgSend(objj_msgSend(_22,"window"),"setDocumentSaving:",YES);
}
}),new objj_method(sel_getUid("_documentDidSave:"),function(_25,_26,_27){
with(_25){
objj_msgSend(objj_msgSend(_25,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("_documentDidFailToSave:"),function(_28,_29,_2a){
with(_28){
objj_msgSend(objj_msgSend(_28,"window"),"setDocumentSaving:",NO);
}
}),new objj_method(sel_getUid("document"),function(_2b,_2c){
with(_2b){
return _document;
}
}),new objj_method(sel_getUid("setDocumentEdited:"),function(_2d,_2e,_2f){
with(_2d){
objj_msgSend(objj_msgSend(_2d,"window"),"setDocumentEdited:",_2f);
}
}),new objj_method(sel_getUid("synchronizeWindowTitleWithDocumentName"),function(_30,_31){
with(_30){
if(!_document||!_window){
return;
}
objj_msgSend(_window,"setTitle:",objj_msgSend(_30,"windowTitleForDocumentDisplayName:",objj_msgSend(_document,"displayName")));
}
}),new objj_method(sel_getUid("windowTitleForDocumentDisplayName:"),function(_32,_33,_34){
with(_32){
return _34;
}
})]);
p;33;Resources/Aristo.blend/Info.plistb;33;Resources/Aristo.blend/Info.plistt;130;280NPLIST;1.0;D;K;12;CPBundleNameS;6;Yikes.K;18;CPBundleIdentifierS;6;Yikes.K;21;CPBundleReplacedFilesA;S;17;Aristo.keyedthemeE;E;p;40;Resources/Aristo.blend/Aristo.keyedthemeb;33;Resources/Aristo.blend/Info.plistt;25339;280NPLIST;1.0;D;K;4;$topD;K;4;rootD;K;6;CP$UIDd;1;2E;E;K;8;$objectsA;S;5;$nullD;K;10;$classnameS;7;CPThemeK;8;$classesA;S;7;CPThemeS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;1;1E;K;7;CPThemeD;K;6;CP$UIDd;1;4E;K;9;CPControlD;K;6;CP$UIDd;1;5E;K;8;CPSliderD;K;6;CP$UIDd;1;6E;K;8;CPButtonD;K;6;CP$UIDd;1;7E;K;13;CPPopUpButtonD;K;6;CP$UIDd;1;8E;K;11;CPTextFieldD;K;6;CP$UIDd;1;9E;K;10;CPScrollerD;K;6;CP$UIDd;2;10E;K;14;CPThemeNameKeyD;K;6;CP$UIDd;2;11E;K;25;CPThemeClassNamesArrayKeyD;K;6;CP$UIDd;2;13E;E;D;K;10;$classnameS;12;CPDictionaryK;8;$classesA;S;12;CPDictionaryS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;E;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;E;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;K;13;image-scalingD;K;6;CP$UIDd;2;15E;K;14;image-positionD;K;6;CP$UIDd;2;16E;K;18;text-shadow-offsetD;K;6;CP$UIDd;2;17E;K;17;text-shadow-colorD;K;6;CP$UIDd;2;18E;K;4;fontD;K;6;CP$UIDd;2;19E;K;10;text-colorD;K;6;CP$UIDd;2;20E;K;15;line-break-modeD;K;6;CP$UIDd;2;21E;K;18;vertical-alignmentD;K;6;CP$UIDd;2;22E;K;9;alignmentD;K;6;CP$UIDd;2;23E;K;22;horizontal-track-colorD;K;6;CP$UIDd;2;24E;K;20;vertical-track-colorD;K;6;CP$UIDd;2;25E;K;11;track-widthD;K;6;CP$UIDd;2;26E;K;9;knob-sizeD;K;6;CP$UIDd;2;27E;K;10;knob-colorD;K;6;CP$UIDd;2;28E;E;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;K;13;image-scalingD;K;6;CP$UIDd;2;29E;K;14;image-positionD;K;6;CP$UIDd;2;30E;K;18;text-shadow-offsetD;K;6;CP$UIDd;2;31E;K;17;text-shadow-colorD;K;6;CP$UIDd;2;32E;K;4;fontD;K;6;CP$UIDd;2;33E;K;10;text-colorD;K;6;CP$UIDd;2;34E;K;15;line-break-modeD;K;6;CP$UIDd;2;35E;K;18;vertical-alignmentD;K;6;CP$UIDd;2;36E;K;9;alignmentD;K;6;CP$UIDd;2;37E;K;11;bezel-colorD;K;6;CP$UIDd;2;38E;K;13;content-insetD;K;6;CP$UIDd;2;39E;K;11;bezel-insetD;K;6;CP$UIDd;2;40E;E;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;K;13;image-scalingD;K;6;CP$UIDd;2;41E;K;14;image-positionD;K;6;CP$UIDd;2;42E;K;18;text-shadow-offsetD;K;6;CP$UIDd;2;43E;K;17;text-shadow-colorD;K;6;CP$UIDd;2;44E;K;4;fontD;K;6;CP$UIDd;2;45E;K;10;text-colorD;K;6;CP$UIDd;2;46E;K;15;line-break-modeD;K;6;CP$UIDd;2;47E;K;18;vertical-alignmentD;K;6;CP$UIDd;2;48E;K;9;alignmentD;K;6;CP$UIDd;2;49E;K;11;bezel-colorD;K;6;CP$UIDd;2;50E;K;13;content-insetD;K;6;CP$UIDd;2;51E;K;11;bezel-insetD;K;6;CP$UIDd;2;52E;E;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;K;13;image-scalingD;K;6;CP$UIDd;2;53E;K;14;image-positionD;K;6;CP$UIDd;2;54E;K;18;text-shadow-offsetD;K;6;CP$UIDd;2;55E;K;17;text-shadow-colorD;K;6;CP$UIDd;2;56E;K;4;fontD;K;6;CP$UIDd;2;57E;K;10;text-colorD;K;6;CP$UIDd;2;58E;K;15;line-break-modeD;K;6;CP$UIDd;2;59E;K;18;vertical-alignmentD;K;6;CP$UIDd;2;60E;K;9;alignmentD;K;6;CP$UIDd;2;61E;K;11;bezel-colorD;K;6;CP$UIDd;2;62E;K;21;bezeled-content-insetD;K;6;CP$UIDd;2;63E;K;13;content-insetD;K;6;CP$UIDd;2;64E;K;11;bezel-insetD;K;6;CP$UIDd;2;65E;E;E;D;K;6;$classD;K;6;CP$UIDd;1;3E;K;10;CP.objectsD;K;13;image-scalingD;K;6;CP$UIDd;2;66E;K;14;image-positionD;K;6;CP$UIDd;2;67E;K;18;text-shadow-offsetD;K;6;CP$UIDd;2;68E;K;17;text-shadow-colorD;K;6;CP$UIDd;2;69E;K;4;fontD;K;6;CP$UIDd;2;70E;K;10;text-colorD;K;6;CP$UIDd;2;71E;K;15;line-break-modeD;K;6;CP$UIDd;2;72E;K;18;vertical-alignmentD;K;6;CP$UIDd;2;73E;K;9;alignmentD;K;6;CP$UIDd;2;74E;K;17;minimum-knob-sizeD;K;6;CP$UIDd;2;75E;K;19;increment-line-sizeD;K;6;CP$UIDd;2;76E;K;19;decrement-line-sizeD;K;6;CP$UIDd;2;77E;K;10;knob-colorD;K;6;CP$UIDd;2;78E;K;20;increment-line-colorD;K;6;CP$UIDd;2;79E;K;20;decrement-line-colorD;K;6;CP$UIDd;2;80E;K;15;knob-slot-colorD;K;6;CP$UIDd;2;81E;K;19;track-overlap-insetD;K;6;CP$UIDd;2;82E;E;E;S;6;AristoD;K;10;$classnameS;7;CPArrayK;8;$classesA;S;7;CPArrayS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;2;83E;D;K;6;CP$UIDd;2;84E;D;K;6;CP$UIDd;2;85E;D;K;6;CP$UIDd;2;86E;D;K;6;CP$UIDd;2;87E;D;K;6;CP$UIDd;2;88E;D;K;6;CP$UIDd;2;89E;E;E;D;K;10;$classnameS;17;CPThemedAttributeK;8;$classesA;S;17;CPThemedAttributeS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;90E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;91E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;92E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;93E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;94E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;95E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;96E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;97E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;98E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;2;99E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;100E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;101E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;102E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;103E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;104E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;104E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;105E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;106E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;107E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;109E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;110E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;104E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;104E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;111E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;112E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;113E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;114E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;115E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;116E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;117E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;118E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;119E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;120E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;121E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;122E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;123E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;124E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;125E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;126E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;127E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;128E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;129E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;130E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;131E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;132E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;133E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;134E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;135E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;136E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;137E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;1;0E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;138E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;5;valueD;K;6;CP$UIDd;3;140E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;141E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;142E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;143E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;144E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;145E;E;D;K;6;$classD;K;6;CP$UIDd;2;14E;K;15;statesAndValuesD;K;6;CP$UIDd;3;146E;E;S;7;CPThemeS;9;CPControlS;8;CPSliderS;8;CPButtonS;13;CPPopUpButtonS;11;CPTextFieldS;10;CPScrollerD;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;148E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;149E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;150E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;151E;D;K;6;CP$UIDd;3;152E;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;153E;E;E;d;1;2D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;154E;D;K;6;CP$UIDd;3;155E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;154E;D;K;6;CP$UIDd;3;156E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;154E;D;K;6;CP$UIDd;3;158E;E;E;D;K;10;$classnameS;7;CPColorK;8;$classesA;S;7;CPColorS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;20;CPColorComponentsKeyD;K;6;CP$UIDd;3;159E;E;d;1;4D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;160E;D;K;6;CP$UIDd;3;161E;D;K;6;CP$UIDd;3;154E;D;K;6;CP$UIDd;3;162E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;154E;D;K;6;CP$UIDd;3;163E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;104E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;104E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;164E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;165E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;158E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;166E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;110E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;104E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;167E;D;K;6;CP$UIDd;3;168E;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;169E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;170E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;3;171E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;172E;D;K;6;CP$UIDd;3;173E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;174E;D;K;6;CP$UIDd;3;175E;D;K;6;CP$UIDd;3;176E;D;K;6;CP$UIDd;3;177E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;174E;D;K;6;CP$UIDd;3;178E;D;K;6;CP$UIDd;3;176E;D;K;6;CP$UIDd;3;179E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;147E;D;K;6;CP$UIDd;1;0E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;181E;E;E;D;K;10;$classnameS;21;_CPKeyedArchiverValueK;8;$classesA;S;21;_CPKeyedArchiverValueS;7;CPValueS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;182E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;183E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;184E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;185E;D;K;6;CP$UIDd;3;186E;D;K;6;CP$UIDd;3;187E;D;K;6;CP$UIDd;3;188E;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;189E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;185E;D;K;6;CP$UIDd;3;190E;D;K;6;CP$UIDd;3;187E;D;K;6;CP$UIDd;3;191E;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;192E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;185E;D;K;6;CP$UIDd;3;193E;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;194E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;180E;D;K;6;CP$UIDd;3;195E;E;E;S;1;0D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;197E;E;d;1;5D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;198E;E;S;1;1D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;200E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;201E;E;S;2;16D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;202E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;20;CPColorComponentsKeyD;K;6;CP$UIDd;3;203E;E;D;K;10;$classnameS;6;CPFontK;8;$classesA;S;6;CPFontS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;3;157E;K;13;CPFontNameKeyD;K;6;CP$UIDd;3;204E;K;13;CPFontSizeKeyD;K;6;CP$UIDd;3;205E;K;15;CPFontIsBoldKeyD;K;6;CP$UIDd;3;206E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;207E;D;K;6;CP$UIDd;3;207E;D;K;6;CP$UIDd;3;207E;D;K;6;CP$UIDd;3;208E;E;E;S;2;17D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;209E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;210E;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;211E;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;202E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;20;CPColorComponentsKeyD;K;6;CP$UIDd;3;212E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;20;CPColorComponentsKeyD;K;6;CP$UIDd;3;213E;E;S;4;4096D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;214E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;215E;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;216E;E;D;K;6;$classD;K;6;CP$UIDd;3;157E;K;13;CPFontNameKeyD;K;6;CP$UIDd;3;204E;K;13;CPFontSizeKeyD;K;6;CP$UIDd;3;205E;K;15;CPFontIsBoldKeyD;K;6;CP$UIDd;3;217E;E;S;4;8192D;K;6;$classD;K;6;CP$UIDd;3;108E;K;20;CPColorComponentsKeyD;K;6;CP$UIDd;3;218E;E;S;4;4128D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;219E;E;S;2;32D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;221E;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;222E;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;223E;E;S;2;64D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;224E;E;S;24;{"width":17,"height":30}D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;182E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;225E;E;S;2;66D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;226E;E;S;2;65D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;227E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;228E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;229E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;230E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;231E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;232E;E;D;K;6;$classD;K;6;CP$UIDd;3;108E;K;22;CPColorPatternImageKeyD;K;6;CP$UIDd;3;233E;E;D;K;6;$classD;K;6;CP$UIDd;3;139E;K;15;CPValueValueKeyD;K;6;CP$UIDd;3;234E;E;D;K;10;$classnameS;16;CPThreePartImageK;8;$classesA;S;16;CPThreePartImageS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;235E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;217E;E;S;24;{"width":23,"height":24}D;K;10;$classnameS;7;CPImageK;8;$classesA;S;7;CPImageS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;236E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;236E;E;S;22;{"width":0,"height":1}D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;237E;D;K;6;CP$UIDd;3;237E;D;K;6;CP$UIDd;3;237E;D;K;6;CP$UIDd;3;208E;E;E;S;5;Ariald;2;12T;f;19;0.30980392156862746d;1;1D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;238E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;217E;E;D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;239E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;217E;E;S;39;{"top":0,"left":5,"bottom":0,"right":5}D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;237E;D;K;6;CP$UIDd;3;237E;D;K;6;CP$UIDd;3;237E;D;K;6;CP$UIDd;3;208E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;207E;D;K;6;CP$UIDd;3;207E;D;K;6;CP$UIDd;3;207E;D;K;6;CP$UIDd;3;208E;E;E;D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;240E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;217E;E;D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;241E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;217E;E;S;40;{"top":0,"left":5,"bottom":0,"right":32}F;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;242E;D;K;6;CP$UIDd;3;243E;D;K;6;CP$UIDd;3;244E;D;K;6;CP$UIDd;3;208E;E;E;D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;245E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;217E;E;D;K;10;$classnameS;15;CPNinePartImageK;8;$classesA;S;15;CPNinePartImageS;8;CPObjectE;E;D;K;6;$classD;K;6;CP$UIDd;3;220E;K;29;CPNinePartImageImageSlicesKeyD;K;6;CP$UIDd;3;246E;E;S;41;{"top":5,"left":10,"bottom":2,"right":10}S;39;{"top":5,"left":4,"bottom":2,"right":3}S;24;{"width":15,"height":19}D;K;6;$classD;K;6;CP$UIDd;3;196E;K;30;CPThreePartImageImageSlicesKeyD;K;6;CP$UIDd;3;247E;K;29;CPThreePartImageIsVerticalKeyD;K;6;CP$UIDd;3;206E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;248E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;248E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;248E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;248E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;248E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;248E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;249E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;249E;E;S;39;{"top":9,"left":9,"bottom":9,"right":9}D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;250E;D;K;6;CP$UIDd;3;251E;D;K;6;CP$UIDd;3;252E;E;E;S;8;{23, 24}f;18;0.9411764705882353D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;253E;D;K;6;CP$UIDd;3;254E;D;K;6;CP$UIDd;3;255E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;256E;D;K;6;CP$UIDd;3;257E;D;K;6;CP$UIDd;3;258E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;259E;D;K;6;CP$UIDd;3;260E;D;K;6;CP$UIDd;3;261E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;262E;D;K;6;CP$UIDd;3;263E;D;K;6;CP$UIDd;3;264E;E;E;f;18;0.7411764705882353f;18;0.7803921568627451f;18;0.8274509803921568D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;265E;D;K;6;CP$UIDd;3;266E;D;K;6;CP$UIDd;3;267E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;268E;D;K;6;CP$UIDd;3;269E;D;K;6;CP$UIDd;3;270E;D;K;6;CP$UIDd;3;271E;D;K;6;CP$UIDd;3;272E;D;K;6;CP$UIDd;3;273E;D;K;6;CP$UIDd;3;274E;D;K;6;CP$UIDd;3;275E;D;K;6;CP$UIDd;3;276E;E;E;D;K;6;$classD;K;6;CP$UIDd;2;12E;K;10;CP.objectsA;D;K;6;CP$UIDd;3;277E;D;K;6;CP$UIDd;3;278E;D;K;6;CP$UIDd;3;279E;E;E;S;8;{17, 30}S;7;{17, 1}D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;280E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;281E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;280E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;282E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;283E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;282E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;282E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;283E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;282E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;282E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;283E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;284E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;282E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;283E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;284E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;285E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;286E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;285E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;287E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;288E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;287E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;289E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;290E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;289E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;291E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;292E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;291E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;293E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;294E;E;D;K;6;$classD;K;6;CP$UIDd;3;199E;K;10;CPFilenameD;K;6;CP$UIDd;1;0E;K;6;CPSizeD;K;6;CP$UIDd;3;295E;E;S;6;{4, 5}S;6;{1, 5}S;7;{4, 24}S;7;{1, 24}S;8;{27, 24}S;8;{13, 22}S;7;{1, 22}S;6;{2, 3}S;6;{1, 3}S;6;{2, 1}S;6;{1, 1}S;6;{2, 2}S;6;{1, 2}S;7;{15, 8}S;7;{15, 1}S;8;{15, 10}E;K;9;$archiverS;15;CPKeyedArchiverK;8;$versionS;6;100000E;