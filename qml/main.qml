import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.1

ApplicationWindow { 
	id: root
	width: 300 
	height: 150 
	title: "Autorenamer"
	visible: true
	
	ColumnLayout {
		anchors {
			fill: parent
			leftMargin: 10
			rightMargin: 10
			topMargin: 10
			bottomMargin: 10
		}
		
		Label {
			text: "Film folder:"
		}
		
		Item {
			height: filmFindButton.height
			
			anchors {
				left: parent.left
				right: parent.right
			}
			
			TextField {
				anchors.left: parent.left
				width: parent.width - filmFindButton.width - 10
			}
			
			Button {
				id: filmFindButton
				text: "Find"
				
				anchors.right: parent.right
			}
			
		}
		
		Label {
			text: "Download folder:"
		}
		
		Item {
			height: downloadFindButton.height
			
			anchors {
				left: parent.left
				right: parent.right
			}
			
			
			TextField {
				anchors.left: parent.left
				width: parent.width - downloadFindButton.width - 10
			}
			
			Button {
				id: downloadFindButton
				text: "Find"
				
				anchors.right: parent.right
			}
		}
		
		Item {
			height: 20
			anchors.left: parent.left
			anchors.right: parent.right
			
			
			Button {
				id: renameButton
				anchors {
					left: parent.left
					top: parent.top
				}
				
				text: "Rename"
			}
			
			Button {
				id: quitButton
				
				anchors {
					right: parent.right
				}
				
				text: "Quit"
				
				onClicked: {
					//exit();
				}
			}
		}
	}
}