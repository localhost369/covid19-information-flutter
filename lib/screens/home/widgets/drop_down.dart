import 'package:covid_info/constant/colors.dart';
import 'package:covid_info/model/state_model.dart';
import 'package:covid_info/screens/home/widgets/round_croner_container.dart';
import 'package:flutter/material.dart';

class StateDropdownButton extends StatelessWidget {
  final state, value;
  Function onChanged;

  StateDropdownButton({this.state, this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.location_on,
            color: primaryColorLite,
          ),
          Expanded(
            child: DropdownButton<StateModel>(
              hint: RoundCornerContainer(
                borderColor: primaryColor,
                child: Text(
                  "Globally",
                  style: TextStyle(fontSize: 18, color: primaryTextColor),
                ),
              ),
              isExpanded: true,
              value: value,
              elevation: 10,
              icon: Icon(Icons.arrow_downward),
              iconSize: 18,
              underline: Container(
                height: 0,
                color: secoundaryColor,
              ),
              style: TextStyle(fontSize: 22, color: primaryTextColor),
              onChanged: (StateModel stateModel) => onChanged(stateModel),
              items: state.getStateModels
                  .map<DropdownMenuItem<StateModel>>((StateModel _stateModel) {
                return DropdownMenuItem<StateModel>(
                  value: _stateModel,
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor.shade50)),
                      child: Text(
                        _stateModel.name,
                        style: TextStyle(fontSize: 22, color: primaryTextColor),
                      )),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
