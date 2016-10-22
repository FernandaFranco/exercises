# cute angles

def dms(angle)
  degree, remain = angle.divmod(1)
  minute, remain = (remain.round(4)*60).divmod(1)
  second, _ = (remain.round(2)*60).divmod(1)
  degree.to_s + "°" + format("%02d", minute) + "'" + format("%02d", second) + "\""
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
