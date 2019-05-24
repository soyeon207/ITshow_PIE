function chkEmail(str) {

    var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@e-mirim.hs.kr/;

    if (regExp.test(str)) return true;

    else return false;

}
