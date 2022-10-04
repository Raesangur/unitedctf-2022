import base64
import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("nc.ctf.unitedctf.ca", 5003))
# s.sendall(content)

print("-----------------------------------------")
data = s.recv(4096)
data = s.recv(4096)
data = s.recv(4096)
data = s.recv(4096)
data = repr(data)
print(data)

resp = ""
lst = ['UEsDBBQAAAAAAK+BQlUAAAAAAAAAAAAAAAAIAAAAdGVzdDEyMy9QSwMEFAAAAAAAr4FCVQAAAAAAAAAAAAAAAA0AAAB0ZXN0MTIzLy5naXQvUEsDBBQAAAAAAK+BQlUAAAAAAAAAAAAAAAASAAAAdGVzdDEyMy8uZ2l0L3JlZnMvUEsDBBQAAAAAAK+BQlUAAAAAAAAAAAAAAAAYAAAAdGVzdDEyMy8uZ2l0L3JlZnMvaGVhZHMvUEsDBBQAAAAAAK+BQlUAAAAAAAAAAAAAAAAXAAAAdGVzdDEyMy8uZ2l0L3JlZnMvdGFncy9QSwMEFAAAAAAAr4FCVQAAAAAAAAAAAAAAABMAAAB0ZXN0MTIzLy5naXQvaG9va3MvUEsDBBQAAgAIACuAQlXTBgjw5gQAAN8KAAAqAAAAdGVzdDEyMy8uZ2l0L2hvb2tzL3B1c2gtdG8tY2hlY2tvdXQuc2FtcGxljVZNc9s2ED1HvwKRPa3dMeVxjk6TjuO6kxz6Ma07bU8aEFyKqEmAwYdktdP', '3rcARNONZtKTLXL3Yd', 'btwuevLystbn03WJxIm6MoEc5jD2JztoH4ZXTYxDBijg2MpCQQnWkHqipbMRzRySswdONDmKMvlstTgBz32mfAfBXm61Fgqj3HFU5UqS3VI1SPZxdnYtdR0Yg25FUwfNRiAIGowlpmnKyR0BLjoyiM38OUOTws9F6HazbX6TYBBY6StkACU6Tn5XPr2onjerwrwxcnooOqKHfH5gJZsZgCAZEqXfVkNnf5th3GUFZ0+pNdDJoaLCVTssawgHTE2uG5HzsB+MDySZr824vGmpl7MOF8BEwMlPViWH0KEC3qdCddQ', 'abLLKpSAQb+gRMDbHOBpsoJkOopMewThEt0Uv0To7pOiJKwDmbJUdBh1eZ', 'lqG7rPnC8GGVTS9wm0gFzws72Qjgr5huVP8Sna0A5SM2N+o8cnKrkvq+fmQW4NJJ9h7Jac003uY1ERADV1cqttdK+RtyME5cIsImvq7Q76aDb1gDr9PPkpFTAsnPBBusCsR6tBqrWO+7wlo5njYCGrVqnjB6uXUSk+8eVo1kLsNKTcdbpwB90D2SIaF5', 'NBK4bm9TOjLN214uM9Ob0isfzA1SWPKIHbCmMNdVf5CwXHmISLNtoGgNxdhixxpIHircX', 'GuIPiC9kNrPumvdJ', '0', 'Xy0aTeLsXPy9eEGqs+LtF6', 'E8vSrJX5yOVeLf7jCHx1Dc5GDfKBkRANhvJeOB0yaTZ7H4', '6yZeZyGayESwEdDYekhrx2cAPTpad5', '4y0MysWE0525YPngs7EzB3+DnKUpZjMndvNFD2bai9cNGn', 'YYM1VSJTRVEN4v3dzbeQ6GqZGEHVho1pBQ2x5+I5p6Uw20WMpE0ZbNgYXWzAVrHdAJIqPGzaC', 'Zror6z+VR4dWARjtWiufFoA4TRsu9zt70ciFE4wQMclYAr', '0rLIW14riy', 'S97JkqKHcDV23QPRWDokeqtkP', 'W40HjW4wTW8F5k22G8yPGKyrxSc592Vk1hR6W5h0NXizJweag1z+tgHVXWVT3IcZsU30rS+D5vZciNTdP3B3Pcpq0AmLaY', 'JNFkN5Agy99krkKtprUSJ1Hhja8pU1ZgBy2Dnbd0NjbPUakjSa1jEWoo+6xTy7n195KZWf9YEMRZbLVTqNWzD89kors2Gl3z1Z89gRfekXKKWguN64Xy1fJ3kaxkybd4iMUTy7BP0kgL+yBxvPclMXFQBbiVNlIfAnsWaG0WKVScDQSety9tNqs2B1Y', 'A0', 'E0vViNVqyX6Knh844o4AapSh406ispfJa3k2qzzz1UdRVXpjuKs+1lhNEZ3FMyw1R7jTUalZvOBdtPx15Oakez11SLQSnmyWi1bP4NlTVaszyseocTUfP2EO', 'VvRYlI6XasR97jcoCnF5Pmk8rmT3Ohs3HTPDGjb69RrITqM5Bowa0QzJIzyjVjykliKa3H3', 'U', '3f6zvf767W', '', 'y', 'uZq', 'f7ud+aQhlGGREBUlHfKq7eXDW0vTez7UjRjv+F3C+o9ld+nZ5yNE7vK1n+Ch6jKJ1tV+YA2ia8nnPMjopWOTKIpqfjSPqbeKR', '4vzQ8puB07H+31vI0b+nlHPfWxr5Jti8fdc93jE3bPcnK4P8CUEsDBBQAAgAIACuAQlXZ8PwGlQQAAEIOAAAgAAAAdGVzdDEyMy8uZ2l0L2hvb2tzL3VwZGF0ZS5zYW1wbGWtV21v2zYQ', 'mz9iqtsRLVhyUn2aXkbuhQd+mHAsKWfiiKgZcriIpOeSMdV1', '33PSQlW5bdvCAxAoQmeXfP3T13R', 'ffTKZCTnQe9IM+vZPEv7LFsuCUK3VHOi3F0pBRNC1UekcryaRUhhk+I8PmmrJSLYhLw0sh5wk0XLOiwOG0onAuDJU85eKex0uW3oW0FiYnVs5XC4joM5xmki046ZydxKqY+YXkawfmRkEzmwKLyYV2gMYQcRJuJxP2TFG4Ws4AKUyc2LWSmZhjEbsPFlZSJwCm1i0HcEB0Y', 'VMlSo4k6S50bTOucl5ue', 'qWhQFTTk5PdgUEqZx1ekp+VJpYVRZJUS', 'VjTjGVsVxp5XtFYyMhBNdrHMeMENh+5HkLh7CO+PYLwIxELNRFY9DoJZ67RglbXthASMswyZp7TkzAglk5ZRpw4EeND3aclkmj', 'VfX+bv2YIZlxWDv3ToJR8oQwvqtrjQ5igUdTc8rAegAQz+Ku9sOT1pAWDFwsmZ1QIyYO6Ri7DwUkYoEZKfo', '1aRigTPz6p7AR', 'Itl3ABdztO7QGT0meJvFA5++3hz+', '7jnyF9ObeIZNDjaY6yee', 'iUa6kx1IXuytpCzxtwUhCujo6bQTpLZRXakVrJs3YrVK1svW7Wi4RntqgM2b17wrT4Jgu4NYVXXh', 'sPDOXA2bm19BnZMgE0HLjToSIcXKb3jp7XevZM', 'NlWZzfvaA1X2jTR5cJ+k2jsvBW9vaUneKi6Za8kvLlx80mmGwR', 'knqWgLDIMuVR9T0b2', 'gwK1', 'AwIuF1Lb7rFk6Q3t4c2oo6VlKmSpEIReLahawTLUv3NU2O3oFajoGNO0ck', '0Za6k9b9cBikTHMctgRDVFsQfpKWILNWyYUj+k4hRGoujEYj+sOLtTH4UZIz7RsEd3W', 'S4ve+XnANUs35HDuWL81dsDSmn62pI', 'xSZLE', 'hujCUYocldNwo1SH1RsgY1J8I2Xqo4m7OexmjpwcazNDB3kAq7fT+QK3eU7mZKiz8fxzyzOvkQUHUdDXx5b6l9ibTW2isAf3boMedMBLzTfPajTyUzsIhGbxp2hq4c64E0FjhuDTtjFvoczPbETajIae18R9F4fczTeGaTY1LkqzW3T2Ab', '1qt+f6vjP1yrXeuWU0hv4KUpV7zlZK+V3xv0rq7VMQ12rI5tmnC+O0Ow16KOT39b8ydEIbKBsrMQXYkhJ7Em5MLS2o3npivaRIOfSzYHhGSrqyZTD1HtWUrtxM2nx8etZomPWDsUm5p8NBDvm8nph', 'czPH4QpStoC7Gb1zbKTe3voKSjI', 'LPwns8CUuEs+EUXdGW6adXR9b6gdTCjagRieAKGtyswptVaKOTAxn73cF4RgweTVUOi12O14+HTQSawbStRlAlHHRbsrvwQP6um1cGqy28PIUN+gNM6zqxN4Oew7fXwutfXN14mxI', 'J7bPr8MCh4ppT+41fO1ofZHTI4', '3nawgA5W2U+O1pS2CEjOjvf+LvdtqTu5HkJu', 'Z+h', 'd1KtpZtPpDLyv5BsU0KUtkWHE3djt517dBtwncH3QUihc7xx3YXj4H9QSwMEFAACAAgAK4BCVVC5mGP5BgAALxIAACwAAAB0ZXN0MTIzLy5naXQvaG9va3MvZnNtb25pdG9yLXdhdGNobWFuLnNhbXBsZa1X63MaNxD', 'DH', 'F5sIMkIE7J', '3SgdhtJ+kjnU7iyaPpTJwy4k6A4kO6SDoTxqV', 'e3dXOsDGcZy2+eBw2od++17dv5fVzmZTpbNK2rLdrp0E563K', 'Zh', 'r4TVSs9d+Hp2+mQ0elFJ', 'Wjcbt+HHzTIT2JZlRIWxpyDy62qPHgDSns5t8JLeCt8vlgKjey9hfeVG2XZTORyigLpXPlFPU2VyVaRLevDCg8BKaTHVVIWUFdQSC9zj0hQj5YrELqApSnUTCF9pkrp0vZ9pL1eRCzKQSWcQ6qAC2mdMhp6eW2t1L5cw6M+qyiF86i+IKTenEuCOTN2KbwnSYfC5A09Z25T+6r2joH5Ar+QTGD2FRAjKhFlGWCBXwgPC3EhYSqRvAXtlM5RBvHui6dwKvzCwbJ2HtVMJVhZCq8uiM7c1hgPZsa', 'V8aeEzhvpWSETlaC3F7AdE3YkYjBef7mt+gdA1KLaUn3ooPIUQO8QItlPCHIdFHysZZ2PWyikkTlBKlLocmNnqk5', 'mdlOnNLo5U3FiieGSl12VX5Lt6+XEOvEyMxgA55fhIsn7DlfTiG7394+fPvnFpvdG6WS4wVhQOjP63n8xD9CsPh4dXrpz++fAlJ5wgapTfoPNMJa3uykPk5eyzkBmanpSRsMqOtZjtwGFJKj8t2q1ASkjfa1VVlLDk1WLUzmLU1Yt1GQTfFeyFttwD', 'JT9hKlCMpoIgYObkQlNJpWnK8DZtck0HXTehcE44lscwl+EbOSeFsr3+OPBZ6e0a6Q', 'j9wdn9KQ6n4', 'b8kKUhNrKj7WyEn599eL5aPTHq3G7teVCwaQ5x7tbqGUD5GBzKHl6erPk6SmhxutLUet8MWmCzBBdPYVr56SZkBpU0ZxN2JMk0SLXK7ezPcjJotcxfY5CK5TdxEpXlx6PhyeXeWny880Avr', 'kT660zYbUbcihhOKKVMTQ67CgKlCSZTjpJoi79dmU22KOGonVYAuEHhk1WwwgOUnwDyd', 'wzsMvCn+lxAqrGSlsfRllBjVfvZtwoSQz3iMyRzRnemAjvMDWfDYsSQBbRRhBbx483pfV9QUlWwPkrMjouIp5kdnQIEMJ4Ecrho3bttGiNU0sUMvVkY7SsyPn7ZWQuBJriZvko1j6fwkUHVBSY', 'ZHJkVtlGqlSsi24ppfaFcALOl8x3cO4Yj8gUWQ231rgiGJ9iOhyfkkOFJIXP0U2+LvX9oI2dhY2OF0I45tI96Zw+e', 'PLb0wk7OP5+9nwA3a3lww8wHGozrBCCX3f77RblDBkdFPRhxsaPoHMv2vbFTkChfqa5TQVg8hOqd9xcprI0K1jJLpancNz0KUupczuaBrtZwwmzEHq+nTGHfRGmOLs0zpGZNUu+kLIXNZaFtAj1PinBYSFyLImqVG7B42EQAdSOhw6KJXxDgvHVEucOIkK7aFNAIumwMpc6X2PHLeQntlmWOMcBLS8UTz2NMXI8XhIci2XhEmIr1ZIWgKAk1BId83iKNutyndK414egdn5DZdKihYb0zGqLZEvDC4e6UMHVoUHg+sCdCNMDab1Dlw3gaAAP+yA', 'QpInoTHd4FgqruSGQZQk3Js40UJwj+Hx46T14', 'OnRGm9CxOXGsm1ahrwVa3o6dEN0RwwPXpvBO8S8lDyPhzv+YJJxqPGdwmOFOaKjSt5', 'x65N', 'gHAd3aDXntaKqAMd+tITJrSoUaG+Ku7wWHHHa6wBGLb8cVeOLx+KA', '0SiLvS4bw+Omjk8247vZBY2unV2fNaph', 'YxdDfnQNO4UzWo8AoJEJRD6GRauNjHr07s1D+6LWydQjibjL9+iNK4MqtlrRzsNd7y01th03L73', '4bsz7PL7D', '05ptWge30DkCboc2Rl9ZiHI8h0nAZ4JNN3CzivnQCR9xjIvveT4S8zOq4FBsKvikv4padPsCWji0M+xrenj7o06uC2mbElcU2wHcMh1THtwzLkF03Dcvr03IpzveKLMh9dmLeYcm8MjURb2yox3cPDgrd4ujriRZ4v2qmswSlzdcsYv9mE7teifj9dutpha82Ua7E2sUi2XvHmTAuZsrikzG0cGdYPrIyld6TicSHwBoHJmLGhMEU8usEZqWY8yqEg43yrzBhvu0DCGo', '4NuvWZqQ2aC28CjWuAI4g', 'MOH3666', 'GBu2Z5ujk3KIQjLT6cS3qZ4LtZCswdnL7qQhW1CLakMU+vLOS8nfW+FOr', 'Oda3bPa9JEv6Ac5NU3aPlzWFxw8cPEmA8zNG6IhncPt2E77Kgqj44bZ9XXu2Nbvl3lHTmP58Qb2nu3Rr14W', '', 'oLmIF', 'PV0p3Y2vZ13UMb5X+5tFo9LP0T1ZFDNYVjr', 'B2+zsLDvLqK9sQJaY6ZfsgfC0Q7lDKTodjfKocrPXvK', 'g3rT', 'AVBLAwQUAAIACAArgEJVksT4lkkBAAAgAgAAJQAAAHRlc3QxMjMvLmdpdC9ob29rcy9wcmUtcmVjZWl2ZS5zYW1wbGV1UMtOwzAQPMdfMbgRfUBbypEqSIgD9NJWIr0hVW66kU0TO4rdB0L8O3bKowhx2dV6Z8Yz2zobrpQeWslarIU7DTqIsioI0pgNbFarysEZlGJD2FqCyVFtrYSpnDLaDjwrlfRNs8q3V1AmDVmIoviFhpPCwTpRO+yVk2gH4Epkm6TthYReo6YXytwP1avsJWnPJPDjkp9qQtngaz1oAqQGpMXKG3HSL0KISy+pRfn5kquwM+BVTf2aMlI74gPGVA5H1qGvweOHSbqcL54el7N5OplNl', 'ezxTTlzFvQLFLJFYv2stEJDB4rjn7h', 'udFa8OiiHaiAPdlS8nzH6gX8ZhM+AvzuAFxKB1oXwfqdf3UjOBNzWtTNmc5idIPiW8QvzUSrV7yznF7fh2Y47GvxwMelQ7KYRR+sCLzTSVxp6NwgVG3GyxrYrliH1BLAwQUAAIACAArgEJVhOxYUeAHAAAiEwAAJAAAAHRlc3QxMjMvLmdpdC9ob29rcy9wcmUtcmViYXNlLnNhbXBsZZ1Ya2', 'bRhb9LP6KW0VdS1k9bH0ounEdw7GDNvtIgNTYYpE49ogcSqxJDndmGEWN', 'd977sxQpGUlWawBJnzc9z33MXry3WyRlTOzip5ET+hcVRudLVeWhvGI5oeHP4z53x', 'p73WZKTqnX0QhSuVoL1eS+pWWEy0Xwsg+rZS6pcyQrkv6vTaWFjJVGkTLzFJDZKzQ1lCisnIJIRnuf1eLMYkyoViUBIEfZWnJQnqsioLfp1oVLLUEDy02JD9llm', 'XmYXZVKpy8ofUimXb2ky31jUGxSLPZeLIndxU5blas4RKaFFIK7V55rgGRzSZOJq6MlZLUbgHI3UmDa2FAa++ld6kKTPMG4aFFmW8gs8s13ub0FBpkkVlN7ReydK', '5u', 'Ou1pr9tQzjhqzYa8RRZVD60qtDZxYk1VtXFSVxYEHJtmVsCQQZJHD2mQDEYXUS6gGz0EpP9mDxjIXxaW0tmPgGPbGojbMH0KSWchYqzpPQGTq3FLWMTyooape5JlZQQ8MtkpvplEU3p2w1ojFe8Un', 'cFRP8pSshKY6A+e9OmE5hFCUEY9585JX8vUzFaQbGaDeT+SuZHNtxtGj9kUC5VnMbCW0i8vzy5u6O4u6jEQ6JCOYbAEpIAEthbp1HVlW6MTaUXMtjJnlGZRFMM6mOI09MESdQw4PZ09HUW94+OI', '', 'u6CgUvNBDH1NKIOELsXiNhoOWkJFLkDVBJPMjdQ6CATZX8nVRKhTCQPyV6ZZANevMPzqUnxPMp67hQLvcyiERO8tzVhcF3FzDAxgVr8t', 'Wz7s7+gyP4pWi53+ZU', '81SqZmU7xFgSz4fBTdsybY4HWkNatoweWtPI0QkOusvPaPPluA6gRIsCgNwNbazYkqJQIh6YMn25p0s8XF5A+8fCCrHyDS2uuZuKL3G3OMoFoWr2WhPnKwpltvQgZjB2wHdnwG', 'GvXapArSC1RZuhLduow0vEdpac72hjgp0hPSkbRRtUcbRbL2FjIFnfQH6ky31wzw', 'XRTnC2sfjQ5GfwOZTQPd1BtLY3Hfb5F9jbvz3sbdV17OD6676YN5EO4e', 'U3VZba6RXexP19mWuQZCXtzd1TQepKw5lIqz05dEkvfd', 'JaznW0Yo16iHBPo3wTB29Jvg7ASwBWhvVhvtZmQldU4TSQfQU2xCuSCWg7O3P', '', '73eHVcXhfmCVH+GlDscLY4FHGs67xvgWTU9l0hWfvy34QM', 'y+Y', 'oIAgtRcfn2erMPw3eHk7+JSXr11xHNmL43xOQ6eU5HI366J1PlmR3O3pezcTDv6Mp9wvgitlHmsqDhVuSOzOH06WjgBffeecmDufNvr+z51Wjk5QATw+9cGzI06Nj', '2SmcPEeU7gOpo+VYNc+9SiOV9Ovlxcu3b10UvQG9ukzQyNoX99Ej6j41Co6uQggdGa6Dtv', '1uyb1H', 'ebpvFx9f', '00', 'uLN+fXL19fRFF3KLudwohULmuhE7N3Hq8Ems9CogTaMemmb9PzMV7LZMqCAX4sFCmjWxhTFzxQPbifRRE9pTdlLHcnB68gxgvsB9PH2ztXFtyvInSEgDIESvEkEUuBWT6UGRcQJZmWsUUbBSSysnnCHvIlvdu+GyMGEMurWVfD1hhWDXWgT5AVK5Opa5bcKUvpUb+oM5R1O', 'My3mwgWLMVzC+FzjPuusCSuJUGGyKY148silFP0MBrIcfF7ShOgJuOmRPOt41xMMWl03UPzEmrMxeEUsbSGKE3rsUEDwrWzDcSDR3GwMRbKSv2RDeLD5mMgeHD9hv6nhsWXV9dl0SQAxg8d7wS5ZIBo7xLrLFB0diHle0uQmg9Yj1BAI6JdVZxR3SgwuosPzmIjoE', 'ncQqCStCozbErMTCG3EGZJDqe6rPF6LxMRO5H6m3PEGRkzLNlrUWC6AfH6PBz68ury9evZ35L7CVfckM9uHoN79iQ1ID67ELhd8n18ItsHRbqjXgPTwa0XQ6JTSCHaRxx3Rh5CLq9EpvMFL4HxTQkkO2W398hHDlZ2xdZckWPh0rtGD4O+Y4l6DHJAonlRAqxNMfSCzfdovaT3gUNu1Ul1sEH5qBADNsgK3mNMBzTnlwkUhTIJ0z51krqRhFRC+QDMXV5zOy7SCdQDoBbEoTUHQUVLDbN6Lh', 'GtRdQHd3Z62teEEX', 'JJhXWxE76AWTLRvzhEADs2C+jNN+Od3cdx7ylsHJC6PgJZm+0cDB74bLiSaIKuZe4Kmwtku+jCg0pYF2LXzFBYXE2Ove2F2MqyTrtJa+3Uh5Ibh8iGXTEo5+bRUTTEsF+JyrSHRvR', '6YpnhNzhZBQOVPjkcehbTRvK6J', 'SHhjKeV4I64siVCiw3+uBR00mk29eAfSOYxY2vVln63twz1T8QoCTrwWd7SWa7bzbQ9N5y1cMaduLXjymnHWu9u', '9I8Iu3cKZeP6AMtDNviFy5qL+vwSwDWQz56PobAwXuMLP3TntYRPxrfzM1Qt2Q0qzT2jyoST5N4BQOX6DDT3J8bxwPGlWuorlqWe', 'UHWBtxnabEroxuwXP', 'IPKa5EfK9uJqnTc+6kcgfY7Y0MNSzL3IrlTtf1O', 'R5kLf9AQCHRD7', 'n', 'mOJ0ss3FosZfTikeJLHtBFVaMfoHUziPceSD74aLpfAXpfO7I4Cn+OQNS5L6Cyx9QuzR0Hsbcweete15j5Y2PCGXrqZ2tQ4se++z2maQJfboVRs', '79CVBLAwQUAAIACAArgEJVz8BMAgkBAACoAQAAKAAAAHRlc3QxMjMvLmdpdC9ob29rcy9wcmUtYXBwbHlwYXRjaC5zYW1wbGVVkFtOAzEMRf+ziks6qkCQVvxWQoI9sIHM1NNETCZR7OkDxN7x9AHi99o+x', 'bibt3Gcc3BLMwCbyPo6FMZCCHnD3BXYxFIxp5q7E84BC+IDN', 'm6Zy3hC6nFEVoq4D2BF', 'KcCpeuoC+5gSvTJd8HJCI2e9odVa9h5sj5GnYqjcKDlECxjy6T6oZLF4mdfVCVaU8xXGnOB1WR82lRi90oyL2mAl+FJ4XY8kFEm7rXaUZNPpWz5OgV8z+J1SN0jXp41zLsKWS+7vEroxZYRfFcXBMMhWjDRfyi23utaKYvSu+MsG5uVMHw9nA6xl2aX6wRogF7gjb', 'CIslkt9AHX', 'w+br+dE2r', 'bbbMwPUEsDBBQAAgAIACuAQlXp+MoQ9wEAAIADAAAkAAAAdGVzdDEyMy8uZ2l0L2hvb2tzL2NvbW1pdC1tc2cuc2FtcGxlfZJfb9MwFMWfm09xSCvSVk2j8oi0SoMi2AuTWPdE6eQmN4m1xM5sh', 'GnfHeuHaoVJvESRdf3', 's49xx6', 'yA5SZbaOxtEYlwr0TbRdQ6i1vofNjewcnEZeU34PVxNy3bbSodEVWrJWVLTkybeiaajA4Tviik+HphiP0tXQiiBM1bek3CIwlGgJugz', 'pWyIAa4WDrWw5xonPrCtTxvVum8K3pKPA1xplf4goxlhnXC9hSgdGUhre6kqCAXRdUZ3RgpHJyRkCU8QyllvzzrdeWWmDNrnmpKZTaMf2R+3UsGDz5cMPpYhxS03KXHgEF3Ns56xgKFgOlR8q0fFAyJtbRUvI568Vb7CMQWBA7Go7xNFAYEbWSkqUl2WKcfcSBUYvvHsHjbamw4qkp0', 'GcBBFJAFCV+vSJERzQKHfpDqDHXCUPq0ELNOs602BE7TDQFwOMHmzfWbi8nU3', 'ZXYfD+ant3ebv9cP3p7mrz7uMWR1juTxUSm+130+V8vZst55PsLxuvsVtlXTJjXMUrIH2wiPcTRseIJ6sYxyMorzmqobZeh7LPaus9nl5rLhy', 'UIui7xqZ+4t+npbliB1ZhzjGBWOmQTHZ', '7NQ8kc4GsFq49hHr+QD0vzkiJBk+88YfZmv', 'DcrklnY82c0CquuX77C5v97jML7XUW', 'ot9QSwMEFAACAAgAK4BCVe+zMgyMAwAAawYAACQAAAB0ZXN0MTIzLy5naXQvaG9va3MvcHJlLWNvbW1pdC5zYW1wbGVtVGFv2zYQ', 'Wz9iqsTJA1gOkk', 'ZnUAw8uwAEEHrAH2oS0GWjxZnCVSJSk7Lor99r2jZHcB+k0Uj3fvvXt3Z2+u19Zdx7o4K85o6YhfdNs1TLX3W4plsF2i5GnHwVYH2tc6kY2k177P', '9dMpW9bmxKbOTKsdNOwofWBphubxrsp7W2qyXnSYdO37FKcEz3Xxyq17xuDx', 'yCJ2OoU984eIpJpx71qsQBhWNv3Ya0I911wXfB6sTUcox6w2Qr5JAMGgUEXEy+o1QfIc4zx2dP7PQaFFMNJoJgRgG', '2vFPZeXO07QLrEYC86KwFQmjwDvV6RCZlBpF+f1h+SvdXxveXbu+aejd', 'cVtgbKumOiNti6mhYQU3EQuJmf06GyyuhlR3ZGxVUVjpHDjtksHSoGZ', 'PofLtOPPOdvBUOtY62GK1JpiDyVvyoqW4DnY0UH32cxhA364vdZ1+XH1eNjZimcI0VOA', 'Gdhp7rgXwKPc+L', 'AhvdCytHYuX3lV2A', 'bp0PFi7X2TNYzzV8FXAuFPNjYISJilG', 'wSk+EQ5gW', 'cEm39xfvJG4VfIzUNTpVPrSEzgo1tJCdydh33pqfYf8FsbyDn5AEgrdUBd', 'Ck9kkxnB+LQYI3Plokw+HOf3FMFrXeJvyVaVL+dD5hDwwlUtZhqAdXAUHBmAZ7il2uoSfah3wDJbUQAiUcbBtso2BbLDKJ5qevxJkSm8WNBVZp', 'SFLi7ECB984lNp6uEpX9EambcsFYPvkV2jFyMU9AjjUnPgGb216TJKEuEPfl97SG1mBAWp8wEMbGPFRp4++gadjXR7cxnpuo8hj3wKVzOK1pXZk5nb114HPgLADCe4o8akoQDSVOBD1uVQw9FuHIbPDNDmxQTBiQaLZEMrVeqyRoBS0ivlXXPAt9wpNBDiLZakvtH50fnfiwnR0+rv5dPTYiWklaHLT6T+', 'fL55pK+074kVV6JjDfjdJVQ7v37zw9', '', 'FY8hODDHS2xh9phY6H', '0O61aUiQYJafxe4lRq3UojoMh363ERvk1czsfdgOje3Yy1L0jjxKh5NXoyTLW3DQHDF2WJBmZ+NxmE7bhTMKvBmHc+swk3mnyknEN168KyeBZ445Mt6ayy1cgoC7oiD63zD+ZADzBBcizSSv1dsfa0EYcK62ry3ali3NImCcDfbPUH1VwdkC5yRdzH6vtG3GCT52W1ln+EV6nkGeen9qrlLFf1BLAwQUAAIACAArgEJVhU', '4CRcBAADeAQAAKAAAAHRlc3QxMjMvLmdpdC9ob29rcy9hcHBseXBhdGNoLW1zZy5zYW1wbGVVkF1OAzEMhN9zCpOuKhCkFa9ISHAHLpBuvZuo+VPspS2Iu+O0bFtex+Nvxl7crTc+rcmphVrAewI82FgCgst5B9RXXxg4Q++w3wE7hD7H6BlCHiEikR0R2O4wweYoBFtKOBbLvYOh5ghWiCZaH2bz6hT04eYEl6ewlVRB7j07SDmZL6wZiC1PBHZgrOCJJp9GwZ0zai7VW8ZLBT9AI9jE1OoS53LTdgXXRE8NEULe47ZZcSuLN4fNxMGHuayYkt3IU9h5OlGeoIoU', '5RmbSh9vd5EGvVKqRWMng05Q8hTUecMmb3q7l4mgvk0xVZCMKY5ZdmdEmh99jbQg1aMxGAOoLsLQsNyKY', 'D', 'r', 'YfT8', '6u5N', '6gX9QtQSwMEFAACAAgAK4BCVQ8PCvm9AgAAXgUAACIAAAB0ZXN0MTIzLy5naXQvaG9va3MvcHJlLXB1c2guc2FtcGxlhVTfa9wwDH4+', 'xVa7ti10Fx', 'vK20hVEYK4wyxsoexjacRIm9OnZmO0079sdPsnO92xjs4ThZlj59+iRn+eK40vY4KCGW8NoCPsp+MAjKuXsItddDhOjgAb1un2BSMoIOICs3Jn+FMIxBYbMBuJbGYAPVExSdjgTHNwXINqIHHUHJALXC+p6CokLw2LuIEKKMYziCihArbJ1HkPYpKm27lFIh2hkslblpKZs4zOTwUccAk44KJFhny5', 'o3QxK54wzaWP2uIolAX5kkNQm', 'deZe4Jhbq0zxk2cOkgve6QWwnlKW51CWcIt+cC1+32QGpPSdc7nQoxbIWM0ziKnnnHq3Yd3', '4+laOqTbzL9qFjwMfCJ2qTqzXNd5QJJ5ruxR5ukyL3ij1Ga3OqNJVl7GbWz29FR3dr1fdIuMZGke2aQRWJGYRwGo8mmMRhtMRBxguNkEtg20lOYHQhP21k232eZAC6MI1WJZXu1tZ1uyJ5554v5wDe7qYS8g0G5iUc0sV6DxwfqL6tFyu', 'Yo8dU3LgOegxBdomej4Hw0kSLTzfvCziYnL9npoN3nafAw40Quf5lsTotxOgNGWeFELxDl6uDLm+tKl31HetI0wuxIYCL4wYfju1IQv+C6GH9+aR8Jcv2yxrWJ+tDIUhSwx3KBlLn36jZ2aJO58kl52ySVzROLDStFIYIxeo5uoBLOjKjQiyoTysWiyW8JfmpRIOGdpM852KBJrC1g9hh', '4GxBSGUW5yg8tLW6ii9fJox0EvYistBdNuxPjs+5J1LEcLd0Mi8', 'PQQQ+T9+RvQUpF', 'AO7YbTZ', 'ordapB6v+WPBOwU0vxmCLrIxj4e2ojRUGEoL', 'DJpsAOsv1LCmhXgWsXhnioUVqwywr4UWCsHVy', 'PoHjjRtvsFeSFWT0P8Yg', 'Kdt3WaRM+v7AaWbNv', 'R+RfKeiN9QSwMEFAACAAgAK4BCVZoM98CKAAAAvQAAACUAAAB0ZXN0MTIzLy5naXQvaG9va3MvcG9zdC11cGRhdGUuc2FtcGxlLc1REoIwDATQ', '55ihV+BM3gHLxAglQ7SdJLg4O2t6OfuzrxtL8OY8mBLaEOLWwYftJUnYxFZYZOm4nBBUS6kDEKhaeUZNYslF30jimI3hrxYKzLv2whXylZE3fpTvgs401hhX5Kd+rUambZ', 'E9N3EzSV9W4vMzk3fQh88IRHcvyqzljrTZdylPABUEsDBBQAAgAIACuAQlVEP', 'Ne', 'wAAAKABAAAqAAAAdGVzdDEyMy8uZ2l0L2hvb2tzL3ByZS1tZXJnZS1jb21taXQuc2FtcGxlfY9PT4QwEMXv', 'RRPMHsSuHszmpi9Gu6mwEAboW06g8v66R128WqP0', 'd7f8qHpvOhYWdKU+IlgDa7pJngYvwC99kngUR8U', 'bjFRdnBZ5hu7je7h2hj8viRWio1eHVzjMN6K4oJi9YKE9U4OLFIUTYPK0LBeEaaN1fiIvrPChLmxKHNFQ', 'lCNYrKwaNwplzeXVhwk2wKaUY8reCmkGs51I26gHy0BZpSN2L6tRe0uWmCCO7n2OxvVtchtBwXa6WJwO2xs9IetpOS6j3', '8iipSpuvHVnS9qY2royopdxSRrMkIsqDYUj+', 'n9vPt', 'NHsftzs6AHhdDI4Hm3U', '6c1z+YXUEsDBBQAAgAIACuAQlXtEzYw5wIAANQFAAAsAAAAdGVzdDEyMy8uZ2l0L2hvb2tzL3ByZXBhcmUtY29tbWl0LW1zZy5zYW1wbGWFVNFS2zAQfG6+4nA8mJDILu1bmXSGUkozU0qHpG8ZgmKfExVbciUZCsPH9yQlaaCZNpMHR', 'bu7e2u093L5kJmZtnpdrpwIgF', '8bqpEJZK3YLJtWgsWAWNxoZrBLtEyFVdCwuVWkCNxvAFpoQ95VWFBcwfIFrQ3fBQBPfCLj1K8hpBlf66FJWj4haW3LgTwq9YV4wDKFVVqfvA6DAFBjVCyTVNgBB2BUoMGNXqHFOAyTLsQGdNqxtlEIRxm2BBU3ahvSpCjgK5N6DkojJhBw5SSfaIWoGx3LZmQNAtO4idz5W2WKTeywmNknzuF6V7jm4AGr0N', 'iSYoCBaecsCEavNIko7jmGNAyHzqiUDCKgR1xmZ1G9ZCm0sKInEXqs7XBsadeFbhZwWR2lRb2tdx5amESyxarZy9HMRDOZKFtuDKbzWNq115vuEC1GWwJhbiAVHgOmI8ELSVg6wyfJHSwrnWKpVgzw+YKIVrTPembhqgpNM0WPOW5ccTVNoZOJ61WAIhDGaTBqVDr', 'Nz5abJRabLpk', '65Dhuth0mxcFhQVjsZBYMFWWjDpWCenjeCbcdzTnkmiMFVVFinyBKGQI+dBXU3jVAxEulCLLCuQU3+nlxcVoMrsYn88+jb6cDeOj9dH48vvVKR286Yw', 'nxwN47edTtYa7d', 'DBnUFTKRzfguM9CSNJjehlZS2Oaiz6', 'R', 'mWZpSo9146yXQBS', 'UBG5WuUOvrkV1AxipyWi6OgBGDxZJKO4xUHP', 'QbYLZCSSMJ9+gSl0VRGkMLNVkFynlMqfzXlhpCvQJRAajPY34fYF7nfh+EQXu8SD8fHbtphL1yg4bnbZ3z5YRgfuIF3XMM5IQJwcnY1G308+zqBJ6ozCZCQmOx6epAevp', '20sM4e1aAdzA9yprELey4hPOX3kzLrKY', 'AdSkmQnJyJYc6XJ1SjJpfrTL6q5bziI1nz2+9DsK', 'x3e7X+Yu+Upce0Fh2auqf1+sntmKTq', 'AVBLAwQUAAAAAAAsgEJVK2lzpxcAAAAXAAAAEQAAAHRlc3QxMjMvLmdpdC9IRUFEcmVmOiByZWZzL2hlYWRzL21hc3RlcgpQSwMEFAACAAgAK4BCVTeLBx8', 'AAAASQAAABgAAAB0ZXN0MTIzLy5naXQvZGVzY3JpcHRpb24LzctLzE1NUShKLcgvzizJL6q0VkhNySxRKMnILFZIy8xJVVBPSS1OLsosKMnMz1NXKMlXAOkAyqciadLjAgBQSwMEFAAAAAAAr4FCVQAAAAAAAAAAAAAAABUAAAB0ZXN0MTIzLy5naXQvb2JqZWN0cy9QSwMEFAAAAAAAr4FCVQAAAAAAAAAAAAAAABoAAAB0ZXN0MTIzLy5naXQvb2JqZWN0cy9pbmZvL1BLAwQUAAAAAACvgUJVAAAAAAAAAAAAAAAAGgAAAHRlc3QxMjMvLmdpdC9vYmplY3RzL3BhY2svUEsDBBQAAAAAAK+BQlUAAAAAAAAAAAAAAAASAAAAdGVzdDEyMy8uZ2l0L2luZm8vUEsDBBQAAgAIACuAQlV3Pc0hrQAAAPAAAAAZAAAAdGVzdDEyMy8uZ2l0L2luZm8vZXhjbHVkZS2NQQrCMBRE955ioIuq2HYvuBJceQNxEdufNpLkl+SH2I1nN5Xuhse8mQqjEdjYaGMpomlYJgproE9v00CNDuwubWl1xmvuNryrcDe+GDIpQRQVBNnIhLqqoQKhZ+fIS2xL88YBCnPgN', 'UCx1HsAuNxPRWdoNlazsaPyJzsgBeV9sg8IJKAdVnYXjErEQo+Yp', '89rBOOBiNhROyWgEjRfrzw7nIx', 'bB6rmG7+4HUEsDBBQAAgAIACyAQlVJ5AXFuAAAAA0BAAATAAAAdGVzdDEyMy8uZ2l0L2NvbmZpZ02PQW6EMAxF1+QUiOVUIjPtbiQu0S3qwoAJkRKMbKeot68BjTTLp', '', 'tZ', 'cjMf64inEjiUr8NxNn0F9kibTWXX131RwTZprQSLmgqwbgA2ZIYpQoQEqMc9kmUJRXrWebUqwb4hji2pimcLJ0Ud3k6f2+722IupShHSn7b0CBNRT2tkQfn19HaHbUcbGpDzOIXxAm8bfnCZdA', 'CXwN9cPDKu1mwyiyM352XlEV18lV2XkcPDbuqvt', 'gFQSwMEFAAAAAAAr4FCVQAAAAAAAAAAAAAAABYAAAB0ZXN0MTIzLy5naXQvYnJhbmNoZXMvUEsBAj8DFAAAAAAAr4FCVQAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAP1BAAAAAHRlc3QxMjMvUEsBAj8DFAAAAAAAr4FCVQAAAAAAAAAAAAAAAA0AAAAAAAAAAAAAAP1BJgAAAHRlc3QxMjMvLmdpdC9QSwECPwMUAAAAAACvgUJVAAAAAAAAAAAAAAAAEgAAAAAAAAAAAAAA', 'UFRAAAAdGVzdDEyMy8uZ2l0L3JlZnMvUEsBAj8DFAAAAAAAr4FCVQAAAAAAAAAAAAAAABgAAAAAAAAAAAAAAP1BgQAAAHRlc3QxMjMvLmdpdC9yZWZzL2hlYWRzL1BLAQI', 'AxQAAAAAAK+BQlUAAAAAAAAAAAAAAAAXAAAAAAAAAAAAAAD9QbcAAAB0ZXN0MTIzLy5naXQvcmVmcy90YWdzL1BLAQI', 'AxQAAAAAAK+BQlUAAAAAAAAAAAAAAAATAAAAAAAAAAAAAAD9QewAAAB0ZXN0MTIzLy5naXQvaG9va3MvUEsBAj8DFAACAAgAK4BCVdMGCPDmBAAA3woAACoAAAAAAAAAAAAAAP2BHQEAAHRlc3QxMjMvLmdpdC9ob29rcy9wdXNoLXRvLWNoZWNrb3V0LnNhbXBsZVBLAQI', 'AxQAAgAIACuAQlXZ8PwGlQQAAEIOAAAgAAAAAAAAAAAAAAD9gUsGAAB0ZXN0MTIzLy5naXQvaG9va3MvdXBkYXRlLnNhbXBsZVBLAQI', 'AxQAAgAIACuAQlVQuZhj+QYAAC8SAAAsAAAAAAAAAAAAAAD9gR4LAAB0ZXN0MTIzLy5naXQvaG9va3MvZnNtb25pdG9yLXdhdGNobWFuLnNhbXBsZVBLAQI', 'AxQAAgAIACuAQlWSxPiWSQEAACACAAAlAAAAAAAAAAAAAAD9gWESAAB0ZXN0MTIzLy5naXQvaG9va3MvcHJlLXJlY2VpdmUuc2FtcGxlUEsBAj8DFAACAAgAK4BCVYTsWFHgBwAAIhMAACQAAAAAAAAAAAAAAP2B7RMAAHRlc3QxMjMvLmdpdC9ob29rcy9wcmUtcmViYXNlLnNhbXBsZVBLAQI', 'AxQAAgAIACuAQlXPwEwCCQEAAKgBAAAoAAAAAAAAAAAAAAD9gQ8cAAB0ZXN0MTIzLy5naXQvaG9va3MvcHJlLWFwcGx5cGF0Y2guc2FtcGxlUEsBAj8DFAACAAgAK4BCVen4yhD3AQAAgAMAACQAAAAAAAAAAAAAAP2BXh0AAHRlc3QxMjMvLmdpdC9ob29rcy9jb21taXQtbXNnLnNhbXBsZVBLAQI', 'AxQAAgAIACuAQlXvszIMjAMAAGsGAAAkAAAAAAAAAAAAAAD9gZcfAAB0ZXN0MTIzLy5naXQvaG9va3MvcHJlLWNvbW1pdC5zYW1wbGVQSwECPwMUAAIACAArgEJVhU', '4CRcBAADeAQAAKAAAAAAAAAAAAAAA', 'YFlIwAAdGVzdDEyMy8uZ2l0L2hvb2tzL2FwcGx5cGF0Y2gtbXNnLnNhbXBsZVBLAQI', 'AxQAAgAIACuAQlUPDwr5vQIAAF4FAAAiAAAAAAAAAAAAAAD9gcIkAAB0ZXN0MTIzLy5naXQvaG9va3MvcHJlLXB1c2guc2FtcGxlUEsBAj8DFAACAAgAK4BCVZoM98CKAAAAvQAAACUAAAAAAAAAAAAAAP2BvycAAHRlc3QxMjMvLmdpdC9ob29rcy9wb3N0LXVwZGF0ZS5zYW1wbGVQSwECPwMUAAIACAArgEJVRD', 'zXv8AAACgAQAAKgAAAAAAAAAAAAAA', 'YGMKAAAdGVzdDEyMy8uZ2l0L2hvb2tzL3ByZS1tZXJnZS1jb21taXQuc2FtcGxlUEsBAj8DFAACAAgAK4BCVe0TNjDnAgAA1AUAACwAAAAAAAAAAAAAAP2B0ykAAHRlc3QxMjMvLmdpdC9ob29rcy9wcmVwYXJlLWNvbW1pdC1tc2cuc2FtcGxlUEsBAj8DFAAAAAAALIBCVStpc6cXAAAAFwAAABEAAAAAAAAAAAAAALSBBC0AAHRlc3QxMjMvLmdpdC9IRUFEUEsBAj8DFAACAAgAK4BCVTeLBx8', 'AAAASQAAABgAAAAAAAAAAAAAALSBSi0AAHRlc3QxMjMvLmdpdC9kZXNjcmlwdGlvblBLAQI', 'AxQAAAAAAK+BQlUAAAAAAAAAAAAAAAAVAAAAAAAAAAAAAAD9Qb8tAAB0ZXN0MTIzLy5naXQvb2JqZWN0cy9QSwECPwMUAAAAAACvgUJVAAAAAAAAAAAAAAAAGgAAAAAAAAAAAAAA', 'UHyLQAAdGVzdDEyMy8uZ2l0L29iamVjdHMvaW5mby9QSwECPwMUAAAAAACvgUJVAAAAAAAAAAAAAAAAGgAAAAAAAAAAAAAA', 'UEqLgAAdGVzdDEyMy8uZ2l0L29iamVjdHMvcGFjay9QSwECPwMUAAAAAACvgUJVAAAAAAAAAAAAAAAAEgAAAAAAAAAAAAAA', 'UFiLgAAdGVzdDEyMy8uZ2l0L2luZm8vUEsBAj8DFAACAAgAK4BCVXc9zSGtAAAA8AAAABkAAAAAAAAAAAAAALSBki4AAHRlc3QxMjMvLmdpdC9pbmZvL2V4Y2x1ZGVQSwECPwMUAAIACAAsgEJVSeQFxbgAAAANAQAAEwAAAAAAAAAAAAAAtIF2LwAAdGVzdDEyMy8uZ2l0L2NvbmZpZ1BLAQI', 'AxQAAAAAAK+BQlUAAAAAAAAAAAAAAAAWAAAAAAAAAAAAAAD9QV8wAAB0ZXN0MTIzLy5naXQvYnJhbmNoZXMvUEsFBgAAAAAcABwAKwgAAJMwAAAAAA==']
for elem in lst:
    resp += elem
    resp += '\n'
#resp = "UEsDBAoAAAAAACyAQlUAAAAAAAAAAAAAAAAIABwAdGVzdDEyMy9VVAkAAxPuOWMT7jljdXgLAAEE6AMAAAToAwAAUEsBAh4DCgAAAAAALIBCVQAAAAAAAAAAAAAAAAgAGAAAAAAAAAAQAP1BAAAAAHRlc3QxMjMvVVQFAAMT7jljdXgLAAEE6AMAAAToAwAAUEsFBgAAAAABAAEATgAAAEIAAAAAAA=="
resp += '\nEOF'
print(resp)
s.sendall(resp.encode())

print("--------------------------------")
data = s.recv(1024)
data = repr(data)

print("recieved : " + data)
