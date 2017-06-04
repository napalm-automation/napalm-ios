Value Intf (\S+)
Value PhyStatus (up|down|administratively down)
Value LineStatus (up|down)
Value OperStatus (\S+)
Value Description (.*)
Value IPAddr (\S+)
Value EthAddr ([0-9a-f\.]+)
Value MTU (\d+)
Value Speed (\d+)
Value SpeedFmt ([KMG]?b)

Start
  ^${Intf} is ${PhyStatus}, line protocol is ${LineStatus}(?: ${OperStatus})?
  ^\s+Internet address is ${IPAddr}
  ^\s+Hardware.*address is ${EthAddr}
  ^\s+Description: ${Description}
  ^\s+MTU ${MTU}.* BW ${Speed} ${SpeedFmt} -> Record
