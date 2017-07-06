
Partial Class About
    Inherits Page

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim decGrizzlyCost As Decimal = 99D
        Dim decPolarCost As Decimal = 89D
        Dim decKodiakCost As Decimal = 79D
        Dim strName As String
        Dim strEmail As String
        Dim decCabinCost As Decimal = 0D
        Dim intNumberOfNights As Integer
        Dim strMessage As String

        strName = txtName.Text.Trim
        strEmail = txtEmail.Text.Trim

        lblReservation.Text = ""

        If Not (chkGrizzly.Checked Or chkPolar.Checked Or chkKodiak.Checked) Then
            lblCabinError.Visible = True
            If cldArrival.SelectedDate < cldArrival.TodaysDate Then
                lblCalendarError.Visible = True
            Else
                lblCalendarError.Visible = False
            End If
        Else
            lblCabinError.Visible = False
            If cldArrival.SelectedDate >= cldArrival.TodaysDate Then
                lblCalendarError.Visible = False
                If chkGrizzly.Checked Then
                    decCabinCost += decGrizzlyCost
                End If

                If chkPolar.Checked Then
                    decCabinCost += decPolarCost
                End If

                If chkKodiak.Checked Then
                    decCabinCost += decKodiakCost
                End If

                intNumberOfNights = Convert.ToInt32(ddlNights.SelectedItem.Text)
                decCabinCost = intNumberOfNights * decCabinCost

                strMessage = "A reservation has been made for: " & "<br>" & strName & "<br>" & "Email: " & strEmail _
                    & "<br>"

                strMessage &= "The cabin(s) cost is: " & decCabinCost.ToString("C") & "<br>"

                strMessage &= "Arrival Date: " & cldArrival.SelectedDate.ToShortDateString() _
                    & "<br>" & " for " & intNumberOfNights & " night(s)"

                lblReservation.Text = strMessage
            Else
                lblCalendarError.Visible = True
            End If
            End If

    End Sub
End Class