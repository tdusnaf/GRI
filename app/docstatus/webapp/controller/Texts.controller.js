sap.ui.define([
    "sap/ui/core/mvc/Controller"
], (Controller) => {
    "use strict";

    return Controller.extend("herramientaaprovisionamiento.docstatus.controller.Texts", {
        onInit() {
			const oRouter = this.getOwnerComponent().getRouter();
			oRouter.getRoute("Status_Texts").attachPatternMatched(this.onObjectMatched, this);
			
		},

		onObjectMatched(oEvent) {
			console.log( {path: "/" +window.decodeURIComponent(oEvent.getParameter('arguments').ID)})
			this.getView().bindElement({
				path: "/" + window.decodeURIComponent(oEvent.getParameter('arguments')),
			})
			
		}
    });
});