sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("herramientaaprovisionamiento.docstatus.controller.Main", {
        onInit() {
        },

        onNavToTexts: function(oEvent){
            const oItem = oEvent.getSource();
			const oRouter = this.getOwnerComponent().getRouter();
			oRouter.navTo("Status_Texts", {
				/* ID : window.encodeURIComponent(oItem.getBindingContext().getPath().substring(1))  */
				ID : window.encodeURIComponent(oItem.getBindingContext().getProperty("ID"))
                
			}); 
                       

           /*  const oRouter = this.getOwnerComponent().getRouter();
            var object = oEvent.getSource().getParent().getBindingContext().getObject();
            oRouter.navTo(
                "Status_Texts",
                {
                    ID: object.ID,
                },
                true
            ); */
            

        }
    });
});