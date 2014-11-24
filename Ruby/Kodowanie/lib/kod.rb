
#module RSA 
#Tworzenie kluczy RSA
  def euler(p,q)
    o = (p-1) * (q-1)
    return o
  end

  def modul(p,q)
    n = p * q
    return n
  end

  def NWD(a,b)
    t = 0
    while b!=0
      t = b
      b = a % b
      a = t
    end

    return a
  end

  def wykPubl(o)
    e = 3
    while NWD(e,o)!=1
      e = e + 2
    end

    return e
  end

  def wyklPryw(e,o)
    p0 = 0
    d = 1
    a0 = e
    n0 = o
    q = n0 / a0
    r = n0 % a0

    while(r > 0)
        t = p0 - q * d
      if(t >= 0)
        t = t % o
      else
        t = o - ((-t) % o)
        p0 = d
        d = t
        n0 = a0
        a0 = r
        q  = n0 / a0
        r  = n0 % a0
    end
      end
      return d
  end

  def kodRSA(t,e,n) # t-liczba do zakodowania e-wykladnik n-modul
    pot = t
    wyn = 1
    q = e
      while q > 0
        if(q % 2)
          wyn = (wyn * pot) % n
        end
        pot = (pot * pot) % n; # kolejna potęga
        q /= 2
      end
      return wyn;
    end
#end