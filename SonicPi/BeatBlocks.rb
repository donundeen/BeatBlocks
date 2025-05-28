# Welcome to Sonic Pi
set :brass1amp, 0
set :brass2amp, 0
set :brass3amp, 0
set :brass4amp, 0
set :hihat1amp, 0
set :hihat2amp, 0
set :hihat3amp, 0
set :hihat4amp, 0
set :snare1amp, 0
set :snare2amp, 0
set :snare3amp, 0
set :snare4amp, 0
set :kick1amp,  0
set :kick2amp,  0
set :kick3amp,  0
set :kick4amp,  0


live_loop :brassloop1 do
  brassd1 = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Brass"
  brasssamp1 = sample brassd1, 0, amp: get[:brass1amp]
  set :brass1, brasssamp1
  sleep sample_duration(brassd1)
end

live_loop :brassloop2 do
  brassd2 = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Brass"
  brasssamp2 = sample brassd2, 1, amp: get[:brass2amp]
  set :brass2, brasssamp2
  sleep sample_duration(brassd2)
end

live_loop :brassloop3 do
  brassd3 = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Brass"
  brasssamp3 = sample brassd3, 2, amp: get[:brass3amp]
  set :brass3, brasssamp3
  sleep sample_duration(brassd3)
end

live_loop :brassloop4 do
  brassd4 = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Brass"
  brasssamp4 = sample brassd4, 3, amp: get[:brass4amp]
  set :brass4, brasssamp4
  sleep sample_duration(brassd4)
end

live_loop :hihatloop1 do
  hihat = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/HiHat"
  hihatsamp = sample hihat, 0, amp: get[:hihat1amp]
  set :hihat1, hihatsamp
  sleep sample_duration(hihat)
end

live_loop :hihatloop2 do
  hihat = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/HiHat"
  hihatsamp = sample hihat, 1, amp: get[:hihat2amp]
  set :hihat2, hihatsamp
  sleep sample_duration(hihat)
end

live_loop :hihatloop3 do
  hihat = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/HiHat"
  hihatsamp = sample hihat, 2, amp: get[:hihat3amp]
  set :hihat3, hihatsamp
  sleep sample_duration(hihat)
end

live_loop :hihatloop4 do
  hihat = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/HiHat"
  hihatsamp = sample hihat, 3, amp: get[:hihat4amp]
  set :hihat4, hihatsamp
  sleep sample_duration(hihat)
end

live_loop :kickloop1 do
  kick = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Kick"
  kicksamp = sample kick, 0, amp: get[:kick1amp]
  set :kick1, kicksamp
  sleep sample_duration(kick)
end

live_loop :kickloop2 do
  kick = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Kick"
  kicksamp = sample kick, 1, amp: get[:kick2amp]
  set :kick2, kicksamp
  sleep sample_duration(kick)
end

live_loop :kickloop3 do
  kick = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Kick"
  kicksamp = sample kick, 2, amp: get[:kick3amp]
  set :kick3, kicksamp
  sleep sample_duration(kick)
end

live_loop :kickloop4 do
  kick = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Kick"
  kicksamp = sample kick, 3, amp: get[:kick4amp]
  set :kick4, kicksamp
  sleep sample_duration(kick)
end

live_loop :snareloop1 do
  snare = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Snare"
  snaresamp = sample snare, 0, amp: get[:snare1amp]
  set :snare1, snaresamp
  sleep sample_duration (snare)
end

live_loop :snareloop2 do
  snare = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Snare"
  snaresamp = sample snare, 0, amp: get[:snare2amp]
  set :snare2, snaresamp
  sleep sample_duration (snare)
end

live_loop :snareloop3 do
  snare = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Snare"
  snaresamp = sample snare, 0, amp: get[:snare3amp]
  set :snare3, snaresamp
  sleep sample_duration (snare)
end

live_loop :snareloop4 do
  snare = "/Users/donundeen/Documents/htdocs/sonicPiBeatBlocks/samples/Snare"
  snaresamp = sample snare, 0, amp: get[:snare4amp]
  set :snare4, snaresamp
  sleep sample_duration (snare)
end


# control section
live_loop :control_osc do
  control = sync "/osc*/control"
  if control[0] == "brass"
    set :brass1amp, 0
    set :brass2amp, 0
    set :brass3amp, 0
    set :brass4amp, 0
    control get(:brass1), amp:0
    control get(:brass2), amp:0
    control get(:brass3), amp:0
    control get(:brass4), amp:0
    if control[1] == 1
      set :brass1amp, 1
      control get(:brass1), amp:1
    end
    if control[1] == 2
      set :brass2amp, 1
      control get(:brass2), amp:1
    end
    if control[1] == 3
      set :brass3amp, 1
      control get(:brass3), amp:1
    end
    if control[1] == 4
      set :brass4amp, 1
      control get(:brass4), amp:1
    end
    
  end
end