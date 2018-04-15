

function Logbuch(value)
   Notizbuch.Beschreibung = Notizbuch.Beschreibung .. [[]] .. value
end


function TodPolizist()
		if Player:Contains(objPuppe) then
			local _rndChoiceValue = math.random()
			if _rndChoiceValue < 0.5 then
				Wherigo.PlayAudio(obj_audiomalestop)
				_Urwigo.Dialog(false, {
					{
						Text = "He - Du da. Stehenbleiben!", 
						Media = objPolizist
					}, 
					{
						Text = "Ich? Warum denn?", 
						Media = objKlaus
					}, 
					{
						Text = [[a - weil ich es sage
b - weil das, was Du mit Dir rumschleppst, nichts fuer diese Stadt ist. Du kommst jetzt besser mal mit. Typen wie Dich wollen wir hier nicht haben.]], 
						Media = objPolizist
					}, 
					{
						Text = [[Oh Klaus - haettest Du mal auf mich gehoert. Hier kann ich Dir auch nicht mehr helfen.
Lebe wohl.]], 
						Media = objEngel
					}
				}, 
				SpielEnde()
				)
			else
				_Urwigo.MessageBox{
					Text = "Hey - Kerle - ich weiss zwar nicht, was oder wen Du da unter dem Arm traegst, aber das scheint nichts fuer die Oeffentlichkeit zu sein. Bring das besser Weg, bevor sich meine gute Laune verfluechtigt!!", 
					Media = objPolizist
				}
			end
		end
end


function TodDurst()
	_Urwigo.MessageBox{
		Text = "Das war es - Habe keine Lust mehr. Durst ist schlimmer als Heimweh und hier unheilbar. Schade.", 
		Media = objErzaehler, 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end


function Logbuch(value)
   Notizbuch.Beschreibung = Notizbuch.Beschreibung .. [[]] .. value
end

function Spielende()
	objFindedeineEva.Visible = false
	Kirchealtarraum.Active = false
	Kirche.Active = false
	Bar.Active = false
	Barraum.Active = false
	Barflur.Active = false
	Bartoilette.Active = false
	Bartreppenhaus.Active = false
	Barhinterzimmer.Active = false
	Hinterhof.Active = false
	Casino.Active = false
	Casinotoilette.Active = false
	Casinospielhalle.Active = false
	Casinokabarett.Active = false
	Disco.Active = false
	Discotanzflaeche.Active = false
	Gasse.Active = false
	Hotel.Active = false
	Hotelrezeption.Active = false
	Hotelzimmer.Active = false
	Hotelwellnessbereich.Active = false
	Kaisers.Active = false
	Kaisersverkaufsraum.Active = false
	Marktplatz.Active = false
	vorfinal1.Active = false
	vorFinal2.Active = false
	Final.Active = false
	Cache.Active = false
end

function TodWasser()
	_Urwigo.MessageBox{
		Text = [[Habe ich Dich nicht davor gewarnt, das Wasser zu trinken?
Dieses leichte Gefuehl der Uebelkeit, die Schweissausbrueche und Hitzewallungen sind nur die ersten Symptome. Das wird noch schlimmer!
Ich denke, hier ist Schluss fuer Dich. Leider!]], 
		Media = objErzaehler, 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end


function TodHIV()
	_Urwigo.MessageBox{
	Text = [[Wurdest Du nicht davor gewarnt, es ohne zu tun?
Monique sah gut aus - aber reicht das auch?
Dieses leichte Gefuehl der Uebelkeit, die Schweissausbrueche und Hitzewallungen sind nur die ersten Symptome. Das wird noch schlimmer!
Ich denke, hier ist Schluss fuer Dich. Leider!]], 
        Media = objErzaehler, 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end





function TodHunger()
	_Urwigo.MessageBox{
		Text = "Das war es - habe keine Lust mehr. 
Essen und Liebe ist der Welt Getriebe - und beides laeuft nicht. Einfach Mist. Ich hoer auf!", 
		Media = objErzaehler, 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end

function TodSchlaeger()
	_Urwigo.MessageBox{
		Text = "Das war es wohl. Zu langsam - zu viele. Dein Traum endet in einer dunklen Ecke von Spandau.", 
		Media = objErzaehler, 
		Callback = function(action)
			if action ~= nil then
				Wherigo.ShowScreen(Wherigo.MAINSCREEN)
			end
		end
	}
end

function AnzeigeLandwirt(Ort)
	if Landwirt:Contains(objApfel1) then
		local _rndChoiceValue = math.random()
		if _rndChoiceValue < 0.75 then
			Landwirt.Visible = false
		else
			Landwirt:MoveTo(Ort)
			Landwirt.Visible = true
			_Urwigo.MessageBox{
				Text = "Oh - ein Gluecksritter. War ich auch mal. Und jetzt verkaufe ich Aepfel. Pass auf Dich auf!", 
				Media = objLandwirt
			}
		end
	end
end

function AnzeigeLandstreicher(Ort)
	if _rndChoiceValue < 0.75 then
		Landstreicher.Visible = false
	else
		Landstreicher:MoveTo(Ort)
		Landstreicher.Visible = true
		_Urwigo.MessageBox{
			Text = "Hey - Was geht? Du siehst aus, als ob es dir gut geht. Hast mal ne Mark? Oder was zum Essen, Trinken oder Waermen?", 
			Media = objLandstreicher
		}
	end
end

function AnzeigePolizist(Ort)
	if _rndChoiceValue < 0.5 then
		Polizist:MoveTo(Ort)
		Polizist.Visible = true
	else
	end
end

function AnzeigeZigarettengirl(Ort)
	if _rndChoiceValue < 0.5 then
		Zigarettengirl:MoveTo(Ort)
		Zigarettengirl.Visible = true
	else
	end
end

function AnzeigePersonenAus()
	Polizist.Visible = false
	Landwirt.Visible = false
	Landstreicher.Visible = false
	Zigarettengirl.Visible = false
end



