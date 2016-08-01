#!/usr/bin/env bash
set -e

mkdir ~/.ssh
touch ~/.ssh/known_hosts
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
echo "-----BEGIN RSA PRIVATE KEY-----
  MIIJKQIBAAKCAgEA2d2s+A5KloisB3sV+CIJOunDKtat72ylDHuJZ5kN/z/Gzq4l
  FY0EmwYacGJh4E6EkYYcVqY+vwq8b8wsvwhxyLUV41toJEmUxAtxKdbU26DGaUkE
  usjdioPi/x8i2NLmALArpyxp3Sf8KpuP3esy99T3g08mILMf5G8fnem3IvgN/vjG
  tVEJoy8pFlHQOwPa3810ZKYtvMlZSyKKI8uDvS3Bii0d+X7yJft3Wa11o5hu9yge
  1OuoFTXEkKUXFUcv80kunRON7BCtbChCgNmO76tjf10DL9anJIMDZJPremwhtADQ
  Lr1EwJReDuFUcR9E2d5QXJVMQfN2dtm8RsJupLEs1KioKWbMG1VvlAkkVIdgjo5h
  izGlSGk92tPsKoWuYqmpSVaoYdSi0RJxDotb/fqlfSJJ9k2LkPToY54CakWpzszP
  Eu704Zf3uqMQR9KnTposK8f+kJzqLdQPMjfsxMQ0crK3kXyYZmSb4AzKYmw4VENk
  8X8r9hF1i25yz9fAwFA1PZrmcdDUlnul32z1hZDODQnOWdPYpRssSgkA62F0geol
  opWUjqEMPjOq1pO3DxzBAnHRAG9xFWZbr9fNOVwCPenLrVnByzT84/c+lCrjANDN
  Llp1V2uCF5us0WO9CAVwn5KJurEof35fmukB3r91dQG53iP4NssILWnaF80CAwEA
  AQKCAgA7V6k0i9f/Nsz84Kb0RnkTJfc2JPGNpJ80TjX4FPV+ECYbx81sGFQn0brD
  39hfG6P6a3gulevDZ646GXgatLchf0mt+wjb0XsHB0LUraKfDCTfKrdyFSJbB19+
  NEHuo0to5pONXoibZ7fE90hxnw3r+YNNrfJpt8C5HReUkMOEb+KID8U4QBGK9F6R
  qMk6OeuVSEYq4CTXJlT/JTJRW67PibYM6AshGVXlyKASui+v1uZqxe/X+TR4SoP3
  DjDCZ/iEoOtkd54Rrd0+95xdsmS/nYRlfbVPg31VcaYr8CqU1v07JXmPMZiXiBIy
  pWe1xFmhqm9jOHtj/2fGKbqh33X5P1tjhIU2sPnlA8cb8l6t8it5tjgdPVlRkI1s
  wlD/5OOUelI/0wwoNYfBbqF722XMJMm3QJLls8zcVvShpkvdWuvO9xJKmg9W3e3v
  UTZupSm2t76fmwsoafMBInb1Bm0RaKUaau1reyDGQ7ZMpc8j8p+pW9oLGQWTuhp1
  ekNXHwKFydhAfArfQkeG5W4p91QP3gFQ6nJ7QUy9Fn/sqs0uCGdoG07wQ3QPrJtp
  yix5jIfrMtG+OZDS4vIw1WoHFl9Grwaf0phLeBKpBw/2ycSTGHJTO4xshx0kc5Wa
  fJUTX1Qfog8j04YrUsHJs9J1zQFstxJ/b3xDT2U+KqWkBdVZQQKCAQEA9CJ9TCBg
  UwmxpB6V9ONHgCwsqIf+fjLRmRYUbxePuexu60mVL6UV4AK7VXYJJhz2m4tIi24j
  c+z0MaOTk1mwWTv8MuJiJcQXsMES9SOzWirNkCvUcR89KapQDZ1fSGGf3XSehmNy
  cJvXWS3Zl4CnLai/jANoM0RUigdOVmJbBUISJmlpOqL583TMUtwyL1yjcYpH34WX
  ixnLXs68MVu54VxZXpZvaFfGxbtpUoYgBXoJWXH/7/ntcbgUwerkzl2f9hcWnaLN
  Cvj1Clj3pBwjv4b7l2PBxRWIyRsjEAsNjX4Zm6JV+rvCAXQE02oZz717XUUlItvs
  RIs61EE37PFCEQKCAQEA5HRZ6loMl3GdvZcm/Kd/fDwkfo33YGQJ0uiy9zKQPhr9
  XioYYH3Zw2EK7xbHM1g/KeZGvaJptOm+FFL8tvVBJbRPWtIfGwyqOF8mdyjiuHhu
  1XcxnPW7+s7uJVKrHqqf9wwxgOY/4TQyKnDuaCeeKhLB+A2HIU10iCFy7xDwPDxT
  5WsGCNJfDYFjUjQcBGtkG32NCcSC18+NWkJKIN9OIX7KA4j0EivinyPS8wl/fIGa
  z99DvVq0AAQfnC6lQdG7wTG2i8KRK1FKBD/wt4e7KfzJcFBXPIlx8+35YCu5tNaz
  sutNAs1mZUJ2UFJssv+ro/BYGj4lj/gRonvjjhH9/QKCAQEA3+g9+LL9BUuvxDFV
  IWvOKQzazJsl2wKq33ezuAvpAwGI3Xz4OeF0Bacbv47pZy5LM290UoTqOSlK8bfv
  4sXwincMoHKmx7Joc/EwfOqIVRtKu36ncjTPeMY+c64xNIZtA8QwnFrbG9KimKUH
  mv8g1SyeuUBqshJqYsm+nFXK2zC0yswE+gV9rz8hIqHX2T5inQDRWH0C903qCwMa
  8T4KZlm3kZvxg8Z1hOaU+14OQleh+YonzSXxE0pcp1nTDj4qNp8IW/1zhyu8OghM
  4BP66W9YkomoryRH9wJPjyhD/tB3lhk2OCc6EPEid/AoyjIj0fBX1ffUYy07AG7s
  ZwECsQKCAQBArVgPavMJpRbdZ/+Xo+wJxhUm5xZT6b6GQW75YQ1JJ+b3U7+XAco2
  8DBiQ/adaKxpNlJsuaBnoY04v83gFksdW5Djy30W8Vz3nKiNL7wQMbhfIuGe6EsR
  1KfDVUYw5mlnTcJuFcGcBmT1cwdr4Vt72dekXGAXY5BMQfwCBq+cvg+acdRBhx11
  +12dFjegYK70wXS+gS3x30bLeNz3tYCvJvAWVB2VT2tXVpMQT24SV7b2huTspNM0
  9fXlB6etnK0lIuflZW4n71mfHmMN8pVga7qz22r3LopeXs8tFPP8aJRzYP5qfrAw
  lsJcNxmjC5MSVKb8tv93ZOnJMH3Z6OoZAoIBAQCWBU+kePGSMVnhMFITts0TBJsT
  VIDBWuoeuy7jN8LvjsXyLJ7I+Q1yJSOhV8yAfHdMFFv6R/9iqkRdbpV7JKwqTb/u
  iLO/iWonyESV1VVfVeN+SHQB4n/2K28FthGRkrQL8ktGsqLGAEF0Ouqd2tFZD6v7
  6gzGbR1DbMqMhqy/QJHH62MQYDBqslpOEjx/WLvlIBMjVsAP6B6X5EkpvwM0Jvw9
  A/z8EV4gxrarnfBgYT9q1zNjAYasR8qhaNFRxiE4hmSVzdsV421QO/ezQr9p0KXU
  hG32wr+OK30VyErZ4Siavtz2pLyTCCqLrY/w9vNPobrRjEEGwDmDgbH1yJlr
  -----END RSA PRIVATE KEY-----" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
git clone $GIT_REPO
ls
# cd concourse-spring-music
#cd bin
ls blue-green
# ls blue-green-output
git config --global user.email "bbyers@pivotal.io"
git config --global user.name "Concourse"
git config --global push.default matching

cd concourse-spring-music/bin
./makeItBlue.sh
