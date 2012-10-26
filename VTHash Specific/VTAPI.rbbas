#tag Module
Protected Module VTAPI
	#tag Method, Flags = &h0
		Function AddComment(ResourceID As String, APIKey As String, Comment As String) As JSONItem
		  Dim js As New JSONItem
		  js.Value("apikey") = APIKey
		  js.Value("resource") = ResourceID
		  js.Value("comment") = Comment
		  Return SendRequest(CommentPut_URL, js)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ConstructUpload(File As FolderItem, ByRef VTSock As HTTPSecureSocket)
		  dim rawdata, data, LStrReturnData, FileName as string
		  dim ReadStream as BinaryStream
		  
		  ReadStream = BinaryStream.Open(File)
		  rawdata = ReadStream.Read(File.Length)
		  
		  Const boundary = "--------0xKhTmLbOuNdArY"
		  
		  
		  // Step 1: Initialize data string
		  
		  // start with boundary line
		  data="--" + boundary + CRLF
		  
		  // Step 2: Add each of the text-based form fields
		  // as a separate MIME part, followed by a boundary
		  
		  // Now the file name of the first image
		  data = data + "Content-Disposition: form-data; name=""file""" + CRLF + CRLF + File.Name + CRLF
		  
		  // boundary to separate the above from the next part
		  data = data + "--" + boundary + CRLF
		  
		  // Next comes the actual file itself, with headers indicating what type it is
		  // and what content type we&apos;re using (raw binary in this case)
		  
		  data = data + "Content-Disposition: form-data; name=""file""; filename=""" +  File.Name + """" + CRLF + "Content-Type: " + HTTPMimeString(File.Name) + CRLF + "Content-Length: " + str(lenb(rawdata)) + CRLF + "Content-Transfer-Encoding: binary" + CRLF + CRLF + rawdata + CRLF
		  
		  
		  // Now our closing boundary marker, and our data is ready to send
		  data = data + "--" + boundary + CRLF + CRLF
		  //whew...
		  
		  VTSock.SetPostContent data, "multipart/form-data, boundary=" + boundary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CRLF() As String
		  Return Encodings.ASCII.Chr(13) + Encodings.ASCII.Chr(10)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetReport(ResourceID As String, APIKey As String, ReportType As Integer = 0) As JSONItem
		  'Report type can be 0 or 1. 0 is for files, 1 is for URLs.
		  Dim js As New JSONItem
		  js.Value("apikey") = APIKey
		  
		  Select Case ReportType
		  Case TypeFile
		    js.Value("resource") = ResourceID
		    Return SendRequest(FileReport_URL, js)
		  Case TypeURL
		    js.Value("url") = ResourceID
		    Return SendRequest(URLReport_URL, js)
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HTTPMimeString(FileName As String) As String
		  'This method is from here: https://github.com/bskrtich/RBHTTPServer
		  Dim ext As String = NthField(FileName, ".", CountFields(FileName, "."))
		  ext = Lowercase(ext)
		  
		  Select Case ext
		  Case "ez"
		    Return "application/andrew-inset"
		    
		  Case "aw"
		    Return "application/applixware"
		    
		  Case "atom"
		    Return "application/atom+xml"
		    
		  Case "atomcat"
		    Return "application/atomcat+xml"
		    
		  Case "atomsvc"
		    Return "application/atomsvc+xml"
		    
		  Case "ccxml"
		    Return "application/ccxml+xml"
		    
		  Case "cdmia"
		    Return "application/cdmi-capability"
		    
		  Case "cdmic"
		    Return "application/cdmi-container"
		    
		  Case "cdmid"
		    Return "application/cdmi-domain"
		    
		  Case "cdmio"
		    Return "application/cdmi-object"
		    
		  Case "cdmiq"
		    Return "application/cdmi-queue"
		    
		  Case "cu"
		    Return "application/cu-seeme"
		    
		  Case "davmount"
		    Return "application/davmount+xml"
		    
		  Case "dssc"
		    Return "application/dssc+der"
		    
		  Case "xdssc"
		    Return "application/dssc+xml"
		    
		  Case "ecma"
		    Return "application/ecmascript"
		    
		  Case "emma"
		    Return "application/emma+xml"
		    
		  Case "epub"
		    Return "application/epub+zip"
		    
		  Case "exi"
		    Return "application/exi"
		    
		  Case "pfr"
		    Return "application/font-tdpfr"
		    
		  Case "stk"
		    Return "application/hyperstudio"
		    
		  Case "ipfix"
		    Return "application/ipfix"
		    
		  Case "jar"
		    Return "application/java-archive"
		    
		  Case "ser"
		    Return "application/java-serialized-object"
		    
		  Case "class"
		    Return "application/java-vm"
		    
		  Case "js"
		    Return "application/javascript"
		    
		  Case "json"
		    Return "application/json"
		    
		  Case "lostxml"
		    Return "application/lost+xml"
		    
		  Case "hqx"
		    Return "application/mac-binhex40"
		    
		  Case "cpt"
		    Return "application/mac-compactpro"
		    
		  Case "mads"
		    Return "application/mads+xml"
		    
		  Case "mrc"
		    Return "application/marc"
		    
		  Case "mrcx"
		    Return "application/marcxml+xml"
		    
		  Case "ma", "nb", "mb"
		    Return "application/mathematica"
		    
		  Case "mathml"
		    Return "application/mathml+xml"
		    
		  Case "mbox"
		    Return "application/mbox"
		    
		  Case "mscml"
		    Return "application/mediaservercontrol+xml"
		    
		  Case "meta4"
		    Return "application/metalink4+xml"
		    
		  Case "mets"
		    Return "application/mets+xml"
		    
		  Case "mods"
		    Return "application/mods+xml"
		    
		  Case "m21", "mp21"
		    Return "application/mp21"
		    
		  Case "mp4s"
		    Return "application/mp4"
		    
		  Case "doc", "dot"
		    Return "application/msword"
		    
		  Case "mxf"
		    Return "application/mxf"
		    
		  Case "bin", "dms", "lha", "lrf", "lzh", "so", "iso", "dmg", "dist", "distz", "pkg", "bpk", "dump", "elc", "deploy", "mobipocket-ebook"
		    Return "application/octet-stream"
		    
		  Case "oda"
		    Return "application/oda"
		    
		  Case "opf"
		    Return "application/oebps-package+xml"
		    
		  Case "ogx"
		    Return "application/ogg"
		    
		  Case "onetoc", "onetoc2", "onetmp", "onepkg"
		    Return "application/onenote"
		    
		  Case "xer"
		    Return "application/patch-ops-error+xml"
		    
		  Case "pdf"
		    Return "application/pdf"
		    
		  Case "pgp"
		    Return "application/pgp-encrypted"
		    
		  Case "asc", "sig"
		    Return "application/pgp-signature"
		    
		  Case "prf"
		    Return "application/pics-rules"
		    
		  Case "p10"
		    Return "application/pkcs10"
		    
		  Case "p7m", "p7c"
		    Return "application/pkcs7-mime"
		    
		  Case "p7s"
		    Return "application/pkcs7-signature"
		    
		  Case "p8"
		    Return "application/pkcs8"
		    
		  Case "ac"
		    Return "application/pkix-attr-cert"
		    
		  Case "cer"
		    Return "application/pkix-cert"
		    
		  Case "crl"
		    Return "application/pkix-crl"
		    
		  Case "pkipath"
		    Return "application/pkix-pkipath"
		    
		  Case "pki"
		    Return "application/pkixcmp"
		    
		  Case "pls"
		    Return "application/pls+xml"
		    
		  Case "ai", "eps", "ps"
		    Return "application/postscript"
		    
		  Case "cww"
		    Return "application/prs.cww"
		    
		  Case "pskcxml"
		    Return "application/pskc+xml"
		    
		  Case "rdf"
		    Return "application/rdf+xml"
		    
		  Case "rif"
		    Return "application/reginfo+xml"
		    
		  Case "rnc"
		    Return "application/relax-ng-compact-syntax"
		    
		  Case "rl"
		    Return "application/resource-lists+xml"
		    
		  Case "rld"
		    Return "application/resource-lists-diff+xml"
		    
		  Case "rs"
		    Return "application/rls-services+xml"
		    
		  Case "rsd"
		    Return "application/rsd+xml"
		    
		  Case "rss"
		    Return "application/rss+xml"
		    
		  Case "rtf"
		    Return "application/rtf"
		    
		  Case "sbml"
		    Return "application/sbml+xml"
		    
		  Case "scq"
		    Return "application/scvp-cv-request"
		    
		  Case "scs"
		    Return "application/scvp-cv-response"
		    
		  Case "spq"
		    Return "application/scvp-vp-request"
		    
		  Case "spp"
		    Return "application/scvp-vp-response"
		    
		  Case "sdp"
		    Return "application/sdp"
		    
		  Case "setpay"
		    Return "application/set-payment-initiation"
		    
		  Case "setreg"
		    Return "application/set-registration-initiation"
		    
		  Case "shf"
		    Return "application/shf+xml"
		    
		  Case "smi", "smil"
		    Return "application/smil+xml"
		    
		  Case "rq"
		    Return "application/sparql-query"
		    
		  Case "srx"
		    Return "application/sparql-results+xml"
		    
		  Case "gram"
		    Return "application/srgs"
		    
		  Case "grxml"
		    Return "application/srgs+xml"
		    
		  Case "sru"
		    Return "application/sru+xml"
		    
		  Case "ssml"
		    Return "application/ssml+xml"
		    
		  Case "tei", "teicorpus"
		    Return "application/tei+xml"
		    
		  Case "tfi"
		    Return "application/thraud+xml"
		    
		  Case "tsd"
		    Return "application/timestamped-data"
		    
		  Case "plb"
		    Return "application/vnd.3gpp.pic-bw-large"
		    
		  Case "psb"
		    Return "application/vnd.3gpp.pic-bw-small"
		    
		  Case "pvb"
		    Return "application/vnd.3gpp.pic-bw-var"
		    
		  Case "tcap"
		    Return "application/vnd.3gpp2.tcap"
		    
		  Case "pwn"
		    Return "application/vnd.3m.post-it-notes"
		    
		  Case "aso"
		    Return "application/vnd.accpac.simply.aso"
		    
		  Case "imp"
		    Return "application/vnd.accpac.simply.imp"
		    
		  Case "acu"
		    Return "application/vnd.acucobol"
		    
		  Case "atc", "acutc"
		    Return "application/vnd.acucorp"
		    
		  Case "air"
		    Return "application/vnd.adobe.air-application-installer-package+zip"
		    
		  Case "fxp", "fxpl"
		    Return "application/vnd.adobe.fxp"
		    
		  Case "xdp"
		    Return "application/vnd.adobe.xdp+xml"
		    
		  Case "xfdf"
		    Return "application/vnd.adobe.xfdf"
		    
		  Case "ahead"
		    Return "application/vnd.ahead.space"
		    
		  Case "azf"
		    Return "application/vnd.airzip.filesecure.azf"
		    
		  Case "azs"
		    Return "application/vnd.airzip.filesecure.azs"
		    
		  Case "azw"
		    Return "application/vnd.amazon.ebook"
		    
		  Case "acc"
		    Return "application/vnd.americandynamics.acc"
		    
		  Case "ami"
		    Return "application/vnd.amiga.ami"
		    
		  Case "apk"
		    Return "application/vnd.android.package-archive"
		    
		  Case "cii"
		    Return "application/vnd.anser-web-certificate-issue-initiation"
		    
		  Case "fti"
		    Return "application/vnd.anser-web-funds-transfer-initiation"
		    
		  Case "atx"
		    Return "application/vnd.antix.game-component"
		    
		  Case "mpkg"
		    Return "application/vnd.apple.installer+xml"
		    
		  Case "m3u8"
		    Return "application/vnd.apple.mpegurl"
		    
		  Case "swi"
		    Return "application/vnd.aristanetworks.swi"
		    
		  Case "aep"
		    Return "application/vnd.audiograph"
		    
		  Case "mpm"
		    Return "application/vnd.blueice.multipass"
		    
		  Case "bmi"
		    Return "application/vnd.bmi"
		    
		  Case "rep"
		    Return "application/vnd.businessobjects"
		    
		  Case "cdxml"
		    Return "application/vnd.chemdraw+xml"
		    
		  Case "mmd"
		    Return "application/vnd.chipnuts.karaoke-mmd"
		    
		  Case "cdy"
		    Return "application/vnd.cinderella"
		    
		  Case "cla"
		    Return "application/vnd.claymore"
		    
		  Case "rp9"
		    Return "application/vnd.cloanto.rp9"
		    
		  Case "c4g", "c4d", "c4f", "c4p", "c4u"
		    Return "application/vnd.clonk.c4group"
		    
		  Case "c11amc"
		    Return "application/vnd.cluetrust.cartomobile-config"
		    
		  Case "c11amz"
		    Return "application/vnd.cluetrust.cartomobile-config-pkg"
		    
		  Case "csp"
		    Return "application/vnd.commonspace"
		    
		  Case "cdbcmsg"
		    Return "application/vnd.contact.cmsg"
		    
		  Case "cmc"
		    Return "application/vnd.cosmocaller"
		    
		  Case "clkx"
		    Return "application/vnd.crick.clicker"
		    
		  Case "clkk"
		    Return "application/vnd.crick.clicker.keyboard"
		    
		  Case "clkp"
		    Return "application/vnd.crick.clicker.palette"
		    
		  Case "clkt"
		    Return "application/vnd.crick.clicker.template"
		    
		  Case "clkw"
		    Return "application/vnd.crick.clicker.wordbank"
		    
		  Case "wbs"
		    Return "application/vnd.criticaltools.wbs+xml"
		    
		  Case "pml"
		    Return "application/vnd.ctc-posml"
		    
		  Case "ppd"
		    Return "application/vnd.cups-ppd"
		    
		  Case "car"
		    Return "application/vnd.curl.car"
		    
		  Case "pcurl"
		    Return "application/vnd.curl.pcurl"
		    
		  Case "rdz"
		    Return "application/vnd.data-vision.rdz"
		    
		  Case "uvf", "uvvf", "uvd", "uvvd"
		    Return "application/vnd.dece.data"
		    
		  Case "uvt", "uvvt"
		    Return "application/vnd.dece.ttml+xml"
		    
		  Case "uvx", "uvvx"
		    Return "application/vnd.dece.unspecified"
		    
		  Case "fe_launch"
		    Return "application/vnd.denovo.fcselayout-link"
		    
		  Case "dna"
		    Return "application/vnd.dna"
		    
		  Case "mlp"
		    Return "application/vnd.dolby.mlp"
		    
		  Case "dpg"
		    Return "application/vnd.dpgraph"
		    
		  Case "dfac"
		    Return "application/vnd.dreamfactory"
		    
		  Case "ait"
		    Return "application/vnd.dvb.ait"
		    
		  Case "svc"
		    Return "application/vnd.dvb.service"
		    
		  Case "geo"
		    Return "application/vnd.dynageo"
		    
		  Case "mag"
		    Return "application/vnd.ecowin.chart"
		    
		  Case "nml"
		    Return "application/vnd.enliven"
		    
		  Case "esf"
		    Return "application/vnd.epson.esf"
		    
		  Case "msf"
		    Return "application/vnd.epson.msf"
		    
		  Case "qam"
		    Return "application/vnd.epson.quickanime"
		    
		  Case "slt"
		    Return "application/vnd.epson.salt"
		    
		  Case "ssf"
		    Return "application/vnd.epson.ssf"
		    
		  Case "es3", "et3"
		    Return "application/vnd.eszigno3+xml"
		    
		  Case "ez2"
		    Return "application/vnd.ezpix-album"
		    
		  Case "ez3"
		    Return "application/vnd.ezpix-package"
		    
		  Case "fdf"
		    Return "application/vnd.fdf"
		    
		  Case "mseed"
		    Return "application/vnd.fdsn.mseed"
		    
		  Case "seed", "dataless"
		    Return "application/vnd.fdsn.seed"
		    
		  Case "gph"
		    Return "application/vnd.flographit"
		    
		  Case "ftc"
		    Return "application/vnd.fluxtime.clip"
		    
		  Case "fm", "frame", "maker", "book"
		    Return "application/vnd.framemaker"
		    
		  Case "fnc"
		    Return "application/vnd.frogans.fnc"
		    
		  Case "ltf"
		    Return "application/vnd.frogans.ltf"
		    
		  Case "fsc"
		    Return "application/vnd.fsc.weblaunch"
		    
		  Case "oas"
		    Return "application/vnd.fujitsu.oasys"
		    
		  Case "oa2"
		    Return "application/vnd.fujitsu.oasys2"
		    
		  Case "oa3"
		    Return "application/vnd.fujitsu.oasys3"
		    
		  Case "fg5"
		    Return "application/vnd.fujitsu.oasysgp"
		    
		  Case "bh2"
		    Return "application/vnd.fujitsu.oasysprs"
		    
		  Case "ddd"
		    Return "application/vnd.fujixerox.ddd"
		    
		  Case "xdw"
		    Return "application/vnd.fujixerox.docuworks"
		    
		  Case "xbd"
		    Return "application/vnd.fujixerox.docuworks.binder"
		    
		  Case "fzs"
		    Return "application/vnd.fuzzysheet"
		    
		  Case "txd"
		    Return "application/vnd.genomatix.tuxedo"
		    
		  Case "ggb"
		    Return "application/vnd.geogebra.file"
		    
		  Case "ggt"
		    Return "application/vnd.geogebra.tool"
		    
		  Case "gex", "gre"
		    Return "application/vnd.geometry-explorer"
		    
		  Case "gxt"
		    Return "application/vnd.geonext"
		    
		  Case "g2w"
		    Return "application/vnd.geoplan"
		    
		  Case "g3w"
		    Return "application/vnd.geospace"
		    
		  Case "gmx"
		    Return "application/vnd.gmx"
		    
		  Case "kml"
		    Return "application/vnd.google-earth.kml+xml"
		    
		  Case "kmz"
		    Return "application/vnd.google-earth.kmz"
		    
		  Case "gqf", "gqs"
		    Return "application/vnd.grafeq"
		    
		  Case "gac"
		    Return "application/vnd.groove-account"
		    
		  Case "ghf"
		    Return "application/vnd.groove-help"
		    
		  Case "gim"
		    Return "application/vnd.groove-identity-message"
		    
		  Case "grv"
		    Return "application/vnd.groove-injector"
		    
		  Case "gtm"
		    Return "application/vnd.groove-tool-message"
		    
		  Case "tpl"
		    Return "application/vnd.groove-tool-template"
		    
		  Case "vcg"
		    Return "application/vnd.groove-vcard"
		    
		  Case "hal"
		    Return "application/vnd.hal+xml"
		    
		  Case "zmm"
		    Return "application/vnd.handheld-entertainment+xml"
		    
		  Case "hbci"
		    Return "application/vnd.hbci"
		    
		  Case "les"
		    Return "application/vnd.hhe.lesson-player"
		    
		  Case "hpgl"
		    Return "application/vnd.hp-hpgl"
		    
		  Case "hpid"
		    Return "application/vnd.hp-hpid"
		    
		  Case "hps"
		    Return "application/vnd.hp-hps"
		    
		  Case "jlt"
		    Return "application/vnd.hp-jlyt"
		    
		  Case "pcl"
		    Return "application/vnd.hp-pcl"
		    
		  Case "pclxl"
		    Return "application/vnd.hp-pclxl"
		    
		  Case "sfd-hdstx"
		    Return "application/vnd.hydrostatix.sof-data"
		    
		  Case "x3d"
		    Return "application/vnd.hzn-3d-crossword"
		    
		  Case "mpy"
		    Return "application/vnd.ibm.minipay"
		    
		  Case "afp", "listafp", "list3820"
		    Return "application/vnd.ibm.modcap"
		    
		  Case "irm"
		    Return "application/vnd.ibm.rights-management"
		    
		  Case "sc"
		    Return "application/vnd.ibm.secure-container"
		    
		  Case "icc", "icm"
		    Return "application/vnd.iccprofile"
		    
		  Case "igl"
		    Return "application/vnd.igloader"
		    
		  Case "ivp"
		    Return "application/vnd.immervision-ivp"
		    
		  Case "ivu"
		    Return "application/vnd.immervision-ivu"
		    
		  Case "igm"
		    Return "application/vnd.insors.igm"
		    
		  Case "xpw", "xpx"
		    Return "application/vnd.intercon.formnet"
		    
		  Case "i2g"
		    Return "application/vnd.intergeo"
		    
		  Case "qbo"
		    Return "application/vnd.intu.qbo"
		    
		  Case "qfx"
		    Return "application/vnd.intu.qfx"
		    
		  Case "rcprofile"
		    Return "application/vnd.ipunplugged.rcprofile"
		    
		  Case "irp"
		    Return "application/vnd.irepository.package+xml"
		    
		  Case "xpr"
		    Return "application/vnd.is-xpr"
		    
		  Case "fcs"
		    Return "application/vnd.isac.fcs"
		    
		  Case "jam"
		    Return "application/vnd.jam"
		    
		  Case "rms"
		    Return "application/vnd.jcp.javame.midlet-rms"
		    
		  Case "jisp"
		    Return "application/vnd.jisp"
		    
		  Case "joda"
		    Return "application/vnd.joost.joda-archive"
		    
		  Case "ktz", "ktr"
		    Return "application/vnd.kahootz"
		    
		  Case "karbon"
		    Return "application/vnd.kde.karbon"
		    
		  Case "chrt"
		    Return "application/vnd.kde.kchart"
		    
		  Case "kfo"
		    Return "application/vnd.kde.kformula"
		    
		  Case "flw"
		    Return "application/vnd.kde.kivio"
		    
		  Case "kon"
		    Return "application/vnd.kde.kontour"
		    
		  Case "kpr", "kpt"
		    Return "application/vnd.kde.kpresenter"
		    
		  Case "ksp"
		    Return "application/vnd.kde.kspread"
		    
		  Case "kwd", "kwt"
		    Return "application/vnd.kde.kword"
		    
		  Case "htke"
		    Return "application/vnd.kenameaapp"
		    
		  Case "kia"
		    Return "application/vnd.kidspiration"
		    
		  Case "kne", "knp"
		    Return "application/vnd.kinar"
		    
		  Case "skp", "skd", "skt", "skm"
		    Return "application/vnd.koan"
		    
		  Case "sse"
		    Return "application/vnd.kodak-descriptor"
		    
		  Case "lasxml"
		    Return "application/vnd.las.las+xml"
		    
		  Case "lbd"
		    Return "application/vnd.llamagraphics.life-balance.desktop"
		    
		  Case "lbe"
		    Return "application/vnd.llamagraphics.life-balance.exchange+xml"
		    
		  Case "123"
		    Return "application/vnd.lotus-1-2-3"
		    
		  Case "apr"
		    Return "application/vnd.lotus-approach"
		    
		  Case "pre"
		    Return "application/vnd.lotus-freelance"
		    
		  Case "nsf"
		    Return "application/vnd.lotus-notes"
		    
		  Case "org"
		    Return "application/vnd.lotus-organizer"
		    
		  Case "scm"
		    Return "application/vnd.lotus-screencam"
		    
		  Case "lwp"
		    Return "application/vnd.lotus-wordpro"
		    
		  Case "portpkg"
		    Return "application/vnd.macports.portpkg"
		    
		  Case "mcd"
		    Return "application/vnd.mcd"
		    
		  Case "mc1"
		    Return "application/vnd.medcalcdata"
		    
		  Case "cdkey"
		    Return "application/vnd.mediastation.cdkey"
		    
		  Case "mwf"
		    Return "application/vnd.mfer"
		    
		  Case "mfm"
		    Return "application/vnd.mfmp"
		    
		  Case "flo"
		    Return "application/vnd.micrografx.flo"
		    
		  Case "igx"
		    Return "application/vnd.micrografx.igx"
		    
		  Case "mif"
		    Return "application/vnd.mif"
		    
		  Case "daf"
		    Return "application/vnd.mobius.daf"
		    
		  Case "dis"
		    Return "application/vnd.mobius.dis"
		    
		  Case "mbk"
		    Return "application/vnd.mobius.mbk"
		    
		  Case "mqy"
		    Return "application/vnd.mobius.mqy"
		    
		  Case "msl"
		    Return "application/vnd.mobius.msl"
		    
		  Case "plc"
		    Return "application/vnd.mobius.plc"
		    
		  Case "txf"
		    Return "application/vnd.mobius.txf"
		    
		  Case "mpn"
		    Return "application/vnd.mophun.application"
		    
		  Case "mpc"
		    Return "application/vnd.mophun.certificate"
		    
		  Case "xul"
		    Return "application/vnd.mozilla.xul+xml"
		    
		  Case "cil"
		    Return "application/vnd.ms-artgalry"
		    
		  Case "cab"
		    Return "application/vnd.ms-cab-compressed"
		    
		  Case "xls", "xlm", "xla", "xlc", "xlt", "xlw"
		    Return "application/vnd.ms-excel"
		    
		  Case "xlam"
		    Return "application/vnd.ms-excel.addin.macroenabled.12"
		    
		  Case "xlsb"
		    Return "application/vnd.ms-excel.sheet.binary.macroenabled.12"
		    
		  Case "xlsm"
		    Return "application/vnd.ms-excel.sheet.macroenabled.12"
		    
		  Case "xltm"
		    Return "application/vnd.ms-excel.template.macroenabled.12"
		    
		  Case "eot"
		    Return "application/vnd.ms-fontobject"
		    
		  Case "chm"
		    Return "application/vnd.ms-htmlhelp"
		    
		  Case "ims"
		    Return "application/vnd.ms-ims"
		    
		  Case "lrm"
		    Return "application/vnd.ms-lrm"
		    
		  Case "thmx"
		    Return "application/vnd.ms-officetheme"
		    
		  Case "cat"
		    Return "application/vnd.ms-pki.seccat"
		    
		  Case "stl"
		    Return "application/vnd.ms-pki.stl"
		    
		  Case "ppt", "pps", "pot"
		    Return "application/vnd.ms-powerpoint"
		    
		  Case "ppam"
		    Return "application/vnd.ms-powerpoint.addin.macroenabled.12"
		    
		  Case "pptm"
		    Return "application/vnd.ms-powerpoint.presentation.macroenabled.12"
		    
		  Case "sldm"
		    Return "application/vnd.ms-powerpoint.slide.macroenabled.12"
		    
		  Case "ppsm"
		    Return "application/vnd.ms-powerpoint.slideshow.macroenabled.12"
		    
		  Case "potm"
		    Return "application/vnd.ms-powerpoint.template.macroenabled.12"
		    
		  Case "mpp", "mpt"
		    Return "application/vnd.ms-project"
		    
		  Case "docm"
		    Return "application/vnd.ms-word.document.macroenabled.12"
		    
		  Case "dotm"
		    Return "application/vnd.ms-word.template.macroenabled.12"
		    
		  Case "wps", "wks", "wcm", "wdb"
		    Return "application/vnd.ms-works"
		    
		  Case "wpl"
		    Return "application/vnd.ms-wpl"
		    
		  Case "xps"
		    Return "application/vnd.ms-xpsdocument"
		    
		  Case "mseq"
		    Return "application/vnd.mseq"
		    
		  Case "mus"
		    Return "application/vnd.musician"
		    
		  Case "msty"
		    Return "application/vnd.muvee.style"
		    
		  Case "nlu"
		    Return "application/vnd.neurolanguage.nlu"
		    
		  Case "nnd"
		    Return "application/vnd.noblenet-directory"
		    
		  Case "nns"
		    Return "application/vnd.noblenet-sealer"
		    
		  Case "nnw"
		    Return "application/vnd.noblenet-web"
		    
		  Case "ngdat"
		    Return "application/vnd.nokia.n-gage.data"
		    
		  Case "n-gage"
		    Return "application/vnd.nokia.n-gage.symbian.install"
		    
		  Case "rpst"
		    Return "application/vnd.nokia.radio-preset"
		    
		  Case "rpss"
		    Return "application/vnd.nokia.radio-presets"
		    
		  Case "edm"
		    Return "application/vnd.novadigm.edm"
		    
		  Case "edx"
		    Return "application/vnd.novadigm.edx"
		    
		  Case "ext"
		    Return "application/vnd.novadigm.ext"
		    
		  Case "odc"
		    Return "application/vnd.oasis.opendocument.chart"
		    
		  Case "otc"
		    Return "application/vnd.oasis.opendocument.chart-template"
		    
		  Case "odb"
		    Return "application/vnd.oasis.opendocument.database"
		    
		  Case "odf"
		    Return "application/vnd.oasis.opendocument.formula"
		    
		  Case "odft"
		    Return "application/vnd.oasis.opendocument.formula-template"
		    
		  Case "odg"
		    Return "application/vnd.oasis.opendocument.graphics"
		    
		  Case "otg"
		    Return "application/vnd.oasis.opendocument.graphics-template"
		    
		  Case "odi"
		    Return "application/vnd.oasis.opendocument.image"
		    
		  Case "oti"
		    Return "application/vnd.oasis.opendocument.image-template"
		    
		  Case "odp"
		    Return "application/vnd.oasis.opendocument.presentation"
		    
		  Case "otp"
		    Return "application/vnd.oasis.opendocument.presentation-template"
		    
		  Case "ods"
		    Return "application/vnd.oasis.opendocument.spreadsheet"
		    
		  Case "ots"
		    Return "application/vnd.oasis.opendocument.spreadsheet-template"
		    
		  Case "odt"
		    Return "application/vnd.oasis.opendocument.text"
		    
		  Case "odm"
		    Return "application/vnd.oasis.opendocument.text-master"
		    
		  Case "ott"
		    Return "application/vnd.oasis.opendocument.text-template"
		    
		  Case "oth"
		    Return "application/vnd.oasis.opendocument.text-web"
		    
		  Case "xo"
		    Return "application/vnd.olpc-sugar"
		    
		  Case "dd2"
		    Return "application/vnd.oma.dd2+xml"
		    
		  Case "oxt"
		    Return "application/vnd.openofficeorg.extension"
		    
		  Case "pptx"
		    Return "application/vnd.openxmlformats-officedocument.presentationml.presentation"
		    
		  Case "sldx"
		    Return "application/vnd.openxmlformats-officedocument.presentationml.slide"
		    
		  Case "ppsx"
		    Return "application/vnd.openxmlformats-officedocument.presentationml.slideshow"
		    
		  Case "potx"
		    Return "application/vnd.openxmlformats-officedocument.presentationml.template"
		    
		  Case "xlsx"
		    Return "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
		    
		  Case "xltx"
		    Return "application/vnd.openxmlformats-officedocument.spreadsheetml.template"
		    
		  Case "docx"
		    Return "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
		    
		  Case "dotx"
		    Return "application/vnd.openxmlformats-officedocument.wordprocessingml.template"
		    
		  Case "mgp"
		    Return "application/vnd.osgeo.mapguide.package"
		    
		  Case "dp"
		    Return "application/vnd.osgi.dp"
		    
		  Case "pdb", "pqa", "oprc"
		    Return "application/vnd.palm"
		    
		  Case "paw"
		    Return "application/vnd.pawaafile"
		    
		  Case "str"
		    Return "application/vnd.pg.format"
		    
		  Case "ei6"
		    Return "application/vnd.pg.osasli"
		    
		  Case "efif"
		    Return "application/vnd.picsel"
		    
		  Case "wg"
		    Return "application/vnd.pmi.widget"
		    
		  Case "plf"
		    Return "application/vnd.pocketlearn"
		    
		  Case "pbd"
		    Return "application/vnd.powerbuilder6"
		    
		  Case "box"
		    Return "application/vnd.previewsystems.box"
		    
		  Case "mgz"
		    Return "application/vnd.proteus.magazine"
		    
		  Case "qps"
		    Return "application/vnd.publishare-delta-tree"
		    
		  Case "ptid"
		    Return "application/vnd.pvi.ptid1"
		    
		  Case "qxd", "qxt", "qwd", "qwt", "qxl", "qxb"
		    Return "application/vnd.quark.quarkxpress"
		    
		  Case "bed"
		    Return "application/vnd.realvnc.bed"
		    
		  Case "mxl"
		    Return "application/vnd.recordare.musicxml"
		    
		  Case "musicxml"
		    Return "application/vnd.recordare.musicxml+xml"
		    
		  Case "cryptonote"
		    Return "application/vnd.rig.cryptonote"
		    
		  Case "cod"
		    Return "application/vnd.rim.cod"
		    
		  Case "rm"
		    Return "application/vnd.rn-realmedia"
		    
		  Case "link66"
		    Return "application/vnd.route66.link66+xml"
		    
		  Case "st"
		    Return "application/vnd.sailingtracker.track"
		    
		  Case "see"
		    Return "application/vnd.seemail"
		    
		  Case "sema"
		    Return "application/vnd.sema"
		    
		  Case "semd"
		    Return "application/vnd.semd"
		    
		  Case "semf"
		    Return "application/vnd.semf"
		    
		  Case "ifm"
		    Return "application/vnd.shana.informed.formdata"
		    
		  Case "itp"
		    Return "application/vnd.shana.informed.formtemplate"
		    
		  Case "iif"
		    Return "application/vnd.shana.informed.interchange"
		    
		  Case "ipk"
		    Return "application/vnd.shana.informed.package"
		    
		  Case "twd", "twds"
		    Return "application/vnd.simtech-mindmapper"
		    
		  Case "mmf"
		    Return "application/vnd.smaf"
		    
		  Case "teacher"
		    Return "application/vnd.smart.teacher"
		    
		  Case "sdkm", "sdkd"
		    Return "application/vnd.solent.sdkm+xml"
		    
		  Case "dxp"
		    Return "application/vnd.spotfire.dxp"
		    
		  Case "sfs"
		    Return "application/vnd.spotfire.sfs"
		    
		  Case "sdc"
		    Return "application/vnd.stardivision.calc"
		    
		  Case "sda"
		    Return "application/vnd.stardivision.draw"
		    
		  Case "sdd"
		    Return "application/vnd.stardivision.impress"
		    
		  Case "smf"
		    Return "application/vnd.stardivision.math"
		    
		  Case "sdw", "vor"
		    Return "application/vnd.stardivision.writer"
		    
		  Case "sgl"
		    Return "application/vnd.stardivision.writer-global"
		    
		  Case "sm"
		    Return "application/vnd.stepmania.stepchart"
		    
		  Case "sxc"
		    Return "application/vnd.sun.xml.calc"
		    
		  Case "stc"
		    Return "application/vnd.sun.xml.calc.template"
		    
		  Case "sxd"
		    Return "application/vnd.sun.xml.draw"
		    
		  Case "std"
		    Return "application/vnd.sun.xml.draw.template"
		    
		  Case "sxi"
		    Return "application/vnd.sun.xml.impress"
		    
		  Case "sti"
		    Return "application/vnd.sun.xml.impress.template"
		    
		  Case "sxm"
		    Return "application/vnd.sun.xml.math"
		    
		  Case "sxw"
		    Return "application/vnd.sun.xml.writer"
		    
		  Case "sxg"
		    Return "application/vnd.sun.xml.writer.global"
		    
		  Case "stw"
		    Return "application/vnd.sun.xml.writer.template"
		    
		  Case "sus", "susp"
		    Return "application/vnd.sus-calendar"
		    
		  Case "svd"
		    Return "application/vnd.svd"
		    
		  Case "sis", "sisx"
		    Return "application/vnd.symbian.install"
		    
		  Case "xsm"
		    Return "application/vnd.syncml+xml"
		    
		  Case "bdm"
		    Return "application/vnd.syncml.dm+wbxml"
		    
		  Case "xdm"
		    Return "application/vnd.syncml.dm+xml"
		    
		  Case "tao"
		    Return "application/vnd.tao.intent-module-archive"
		    
		  Case "tmo"
		    Return "application/vnd.tmobile-livetv"
		    
		  Case "tpt"
		    Return "application/vnd.trid.tpt"
		    
		  Case "mxs"
		    Return "application/vnd.triscape.mxs"
		    
		  Case "tra"
		    Return "application/vnd.trueapp"
		    
		  Case "ufd", "ufdl"
		    Return "application/vnd.ufdl"
		    
		  Case "utz"
		    Return "application/vnd.uiq.theme"
		    
		  Case "umj"
		    Return "application/vnd.umajin"
		    
		  Case "unityweb"
		    Return "application/vnd.unity"
		    
		  Case "uoml"
		    Return "application/vnd.uoml+xml"
		    
		  Case "vcx"
		    Return "application/vnd.vcx"
		    
		  Case "vsd", "vst", "vss", "vsw"
		    Return "application/vnd.visio"
		    
		  Case "vis"
		    Return "application/vnd.visionary"
		    
		  Case "vsf"
		    Return "application/vnd.vsf"
		    
		  Case "wbxml"
		    Return "application/vnd.wap.wbxml"
		    
		  Case "wmlc"
		    Return "application/vnd.wap.wmlc"
		    
		  Case "wmlsc"
		    Return "application/vnd.wap.wmlscriptc"
		    
		  Case "wtb"
		    Return "application/vnd.webturbo"
		    
		  Case "nbp"
		    Return "application/vnd.wolfram.player"
		    
		  Case "wpd"
		    Return "application/vnd.wordperfect"
		    
		  Case "wqd"
		    Return "application/vnd.wqd"
		    
		  Case "stf"
		    Return "application/vnd.wt.stf"
		    
		  Case "xar"
		    Return "application/vnd.xara"
		    
		  Case "xfdl"
		    Return "application/vnd.xfdl"
		    
		  Case "hvd"
		    Return "application/vnd.yamaha.hv-dic"
		    
		  Case "hvs"
		    Return "application/vnd.yamaha.hv-script"
		    
		  Case "hvp"
		    Return "application/vnd.yamaha.hv-voice"
		    
		  Case "osf"
		    Return "application/vnd.yamaha.openscoreformat"
		    
		  Case "osfpvg"
		    Return "application/vnd.yamaha.openscoreformat.osfpvg+xml"
		    
		  Case "saf"
		    Return "application/vnd.yamaha.smaf-audio"
		    
		  Case "spf"
		    Return "application/vnd.yamaha.smaf-phrase"
		    
		  Case "cmp"
		    Return "application/vnd.yellowriver-custom-menu"
		    
		  Case "zir", "zirz"
		    Return "application/vnd.zul"
		    
		  Case "zaz"
		    Return "application/vnd.zzazz.deck+xml"
		    
		  Case "vxml"
		    Return "application/voicexml+xml"
		    
		  Case "wgt"
		    Return "application/widget"
		    
		  Case "hlp"
		    Return "application/winhlp"
		    
		  Case "wsdl"
		    Return "application/wsdl+xml"
		    
		  Case "wspolicy"
		    Return "application/wspolicy+xml"
		    
		  Case "7z"
		    Return "application/x-7z-compressed"
		    
		  Case "abw"
		    Return "application/x-abiword"
		    
		  Case "ace"
		    Return "application/x-ace-compressed"
		    
		  Case "aab", "x32", "u32", "vox"
		    Return "application/x-authorware-bin"
		    
		  Case "aam"
		    Return "application/x-authorware-map"
		    
		  Case "aas"
		    Return "application/x-authorware-seg"
		    
		  Case "bcpio"
		    Return "application/x-bcpio"
		    
		  Case "torrent"
		    Return "application/x-bittorrent"
		    
		  Case "bz"
		    Return "application/x-bzip"
		    
		  Case "bz2", "boz"
		    Return "application/x-bzip2"
		    
		  Case "vcd"
		    Return "application/x-cdlink"
		    
		  Case "chat"
		    Return "application/x-chat"
		    
		  Case "pgn"
		    Return "application/x-chess-pgn"
		    
		  Case "cpio"
		    Return "application/x-cpio"
		    
		  Case "csh"
		    Return "application/x-csh"
		    
		  Case "deb", "udeb"
		    Return "application/x-debian-package"
		    
		  Case "dir", "dcr", "dxr", "cst", "cct", "cxt", "w3d", "fgd", "swa"
		    Return "application/x-director"
		    
		  Case "wad"
		    Return "application/x-doom"
		    
		  Case "ncx"
		    Return "application/x-dtbncx+xml"
		    
		  Case "dtb"
		    Return "application/x-dtbook+xml"
		    
		  Case "res"
		    Return "application/x-dtbresource+xml"
		    
		  Case "dvi"
		    Return "application/x-dvi"
		    
		  Case "bdf"
		    Return "application/x-font-bdf"
		    
		  Case "gsf"
		    Return "application/x-font-ghostscript"
		    
		  Case "psf"
		    Return "application/x-font-linux-psf"
		    
		  Case "otf"
		    Return "application/x-font-otf"
		    
		  Case "pcf"
		    Return "application/x-font-pcf"
		    
		  Case "snf"
		    Return "application/x-font-snf"
		    
		  Case "ttf", "ttc"
		    Return "application/x-font-ttf"
		    
		  Case "pfa", "pfb", "pfm", "afm"
		    Return "application/x-font-type1"
		    
		  Case "woff"
		    Return "application/x-font-woff"
		    
		  Case "spl"
		    Return "application/x-futuresplash"
		    
		  Case "gnumeric"
		    Return "application/x-gnumeric"
		    
		  Case "gtar"
		    Return "application/x-gtar"
		    
		  Case "hdf"
		    Return "application/x-hdf"
		    
		  Case "jnlp"
		    Return "application/x-java-jnlp-file"
		    
		  Case "latex"
		    Return "application/x-latex"
		    
		  Case "prc", "mobi"
		    Return "application/x-mobipocket-ebook"
		    
		  Case "m3u8"
		    Return "application/x-mpegurl"
		    
		  Case "application"
		    Return "application/x-ms-application"
		    
		  Case "wmd"
		    Return "application/x-ms-wmd"
		    
		  Case "wmz"
		    Return "application/x-ms-wmz"
		    
		  Case "xbap"
		    Return "application/x-ms-xbap"
		    
		  Case "mdb"
		    Return "application/x-msaccess"
		    
		  Case "obd"
		    Return "application/x-msbinder"
		    
		  Case "crd"
		    Return "application/x-mscardfile"
		    
		  Case "clp"
		    Return "application/x-msclip"
		    
		  Case "exe", "dll", "com", "bat", "msi"
		    Return "application/x-msdownload"
		    
		  Case "mvb", "m13", "m14"
		    Return "application/x-msmediaview"
		    
		  Case "wmf"
		    Return "application/x-msmetafile"
		    
		  Case "mny"
		    Return "application/x-msmoney"
		    
		  Case "pub"
		    Return "application/x-mspublisher"
		    
		  Case "scd"
		    Return "application/x-msschedule"
		    
		  Case "trm"
		    Return "application/x-msterminal"
		    
		  Case "wri"
		    Return "application/x-mswrite"
		    
		  Case "nc", "cdf"
		    Return "application/x-netcdf"
		    
		  Case "p12", "pfx"
		    Return "application/x-pkcs12"
		    
		  Case "p7b", "spc"
		    Return "application/x-pkcs7-certificates"
		    
		  Case "p7r"
		    Return "application/x-pkcs7-certreqresp"
		    
		  Case "rar"
		    Return "application/x-rar-compressed"
		    
		  Case "sh"
		    Return "application/x-sh"
		    
		  Case "shar"
		    Return "application/x-shar"
		    
		  Case "swf"
		    Return "application/x-shockwave-flash"
		    
		  Case "xap"
		    Return "application/x-silverlight-app"
		    
		  Case "sit"
		    Return "application/x-stuffit"
		    
		  Case "sitx"
		    Return "application/x-stuffitx"
		    
		  Case "sv4cpio"
		    Return "application/x-sv4cpio"
		    
		  Case "sv4crc"
		    Return "application/x-sv4crc"
		    
		  Case "tar"
		    Return "application/x-tar"
		    
		  Case "tcl"
		    Return "application/x-tcl"
		    
		  Case "tex"
		    Return "application/x-tex"
		    
		  Case "tfm"
		    Return "application/x-tex-tfm"
		    
		  Case "texinfo", "texi"
		    Return "application/x-texinfo"
		    
		  Case "ustar"
		    Return "application/x-ustar"
		    
		  Case "src"
		    Return "application/x-wais-source"
		    
		  Case "der", "crt"
		    Return "application/x-x509-ca-cert"
		    
		  Case "fig"
		    Return "application/x-xfig"
		    
		  Case "xpi"
		    Return "application/x-xpinstall"
		    
		  Case "xdf"
		    Return "application/xcap-diff+xml"
		    
		  Case "xenc"
		    Return "application/xenc+xml"
		    
		  Case "xhtml", "xht"
		    Return "application/xhtml+xml"
		    
		  Case "xml", "xsl"
		    Return "application/xml"
		    
		  Case "dtd"
		    Return "application/xml-dtd"
		    
		  Case "xop"
		    Return "application/xop+xml"
		    
		  Case "xslt"
		    Return "application/xslt+xml"
		    
		  Case "xspf"
		    Return "application/xspf+xml"
		    
		  Case "mxml", "xhvml", "xvml", "xvm"
		    Return "application/xv+xml"
		    
		  Case "yang"
		    Return "application/yang"
		    
		  Case "yin"
		    Return "application/yin+xml"
		    
		  Case "zip"
		    Return "application/zip"
		    
		  Case "adp"
		    Return "audio/adpcm"
		    
		  Case "au", "snd"
		    Return "audio/basic"
		    
		  Case "mid", "midi", "kar", "rmi"
		    Return "audio/midi"
		    
		  Case "mp4a"
		    Return "audio/mp4"
		    
		  Case "m4a", "m4p"
		    Return "audio/mp4a-latm"
		    
		  Case "mpga", "mp2", "mp2a", "mp3", "m2a", "m3a"
		    Return "audio/mpeg"
		    
		  Case "oga", "ogg", "spx"
		    Return "audio/ogg"
		    
		  Case "uva", "uvva"
		    Return "audio/vnd.dece.audio"
		    
		  Case "eol"
		    Return "audio/vnd.digital-winds"
		    
		  Case "dra"
		    Return "audio/vnd.dra"
		    
		  Case "dts"
		    Return "audio/vnd.dts"
		    
		  Case "dtshd"
		    Return "audio/vnd.dts.hd"
		    
		  Case "lvp"
		    Return "audio/vnd.lucent.voice"
		    
		  Case "pya"
		    Return "audio/vnd.ms-playready.media.pya"
		    
		  Case "ecelp4800"
		    Return "audio/vnd.nuera.ecelp4800"
		    
		  Case "ecelp7470"
		    Return "audio/vnd.nuera.ecelp7470"
		    
		  Case "ecelp9600"
		    Return "audio/vnd.nuera.ecelp9600"
		    
		  Case "rip"
		    Return "audio/vnd.rip"
		    
		  Case "weba"
		    Return "audio/webm"
		    
		  Case "aac"
		    Return "audio/x-aac"
		    
		  Case "aif", "aiff", "aifc"
		    Return "audio/x-aiff"
		    
		  Case "m3u"
		    Return "audio/x-mpegurl"
		    
		  Case "wax"
		    Return "audio/x-ms-wax"
		    
		  Case "wma"
		    Return "audio/x-ms-wma"
		    
		  Case "ram", "ra"
		    Return "audio/x-pn-realaudio"
		    
		  Case "rmp"
		    Return "audio/x-pn-realaudio-plugin"
		    
		  Case "wav"
		    Return "audio/x-wav"
		    
		  Case "cdx"
		    Return "chemical/x-cdx"
		    
		  Case "cif"
		    Return "chemical/x-cif"
		    
		  Case "cmdf"
		    Return "chemical/x-cmdf"
		    
		  Case "cml"
		    Return "chemical/x-cml"
		    
		  Case "csml"
		    Return "chemical/x-csml"
		    
		  Case "xyz"
		    Return "chemical/x-xyz"
		    
		  Case "bmp"
		    Return "image/bmp"
		    
		  Case "cgm"
		    Return "image/cgm"
		    
		  Case "g3"
		    Return "image/g3fax"
		    
		  Case "gif"
		    Return "image/gif"
		    
		  Case "ief"
		    Return "image/ief"
		    
		  Case "jp2"
		    Return "image/jp2"
		    
		  Case "jpeg", "jpg", "jpe"
		    Return "image/jpeg"
		    
		  Case "ktx"
		    Return "image/ktx"
		    
		  Case "pict", "pic", "pct"
		    Return "image/pict"
		    
		  Case "png"
		    Return "image/png"
		    
		  Case "btif"
		    Return "image/prs.btif"
		    
		  Case "svg", "svgz"
		    Return "image/svg+xml"
		    
		  Case "tiff", "tif"
		    Return "image/tiff"
		    
		  Case "psd"
		    Return "image/vnd.adobe.photoshop"
		    
		  Case "uvi", "uvvi", "uvg", "uvvg"
		    Return "image/vnd.dece.graphic"
		    
		  Case "sub"
		    Return "image/vnd.dvb.subtitle"
		    
		  Case "djvu", "djv"
		    Return "image/vnd.djvu"
		    
		  Case "dwg"
		    Return "image/vnd.dwg"
		    
		  Case "dxf"
		    Return "image/vnd.dxf"
		    
		  Case "fbs"
		    Return "image/vnd.fastbidsheet"
		    
		  Case "fpx"
		    Return "image/vnd.fpx"
		    
		  Case "fst"
		    Return "image/vnd.fst"
		    
		  Case "mmr"
		    Return "image/vnd.fujixerox.edmics-mmr"
		    
		  Case "rlc"
		    Return "image/vnd.fujixerox.edmics-rlc"
		    
		  Case "mdi"
		    Return "image/vnd.ms-modi"
		    
		  Case "npx"
		    Return "image/vnd.net-fpx"
		    
		  Case "wbmp"
		    Return "image/vnd.wap.wbmp"
		    
		  Case "xif"
		    Return "image/vnd.xiff"
		    
		  Case "webp"
		    Return "image/webp"
		    
		  Case "ras"
		    Return "image/x-cmu-raster"
		    
		  Case "cmx"
		    Return "image/x-cmx"
		    
		  Case "fh", "fhc", "fh4", "fh5", "fh7"
		    Return "image/x-freehand"
		    
		  Case "ico"
		    Return "image/x-icon"
		    
		  Case "pntg", "pnt", "mac"
		    Return "image/x-macpaint"
		    
		  Case "pcx"
		    Return "image/x-pcx"
		    
		  Case "pic", "pct"
		    Return "image/x-pict"
		    
		  Case "pnm"
		    Return "image/x-portable-anymap"
		    
		  Case "pbm"
		    Return "image/x-portable-bitmap"
		    
		  Case "pgm"
		    Return "image/x-portable-graymap"
		    
		  Case "ppm"
		    Return "image/x-portable-pixmap"
		    
		  Case "qtif", "qti"
		    Return "image/x-quicktime"
		    
		  Case "rgb"
		    Return "image/x-rgb"
		    
		  Case "xbm"
		    Return "image/x-xbitmap"
		    
		  Case "xpm"
		    Return "image/x-xpixmap"
		    
		  Case "xwd"
		    Return "image/x-xwindowdump"
		    
		  Case "eml", "mime"
		    Return "message/rfc822"
		    
		  Case "igs", "iges"
		    Return "model/iges"
		    
		  Case "msh", "mesh", "silo"
		    Return "model/mesh"
		    
		  Case "dae"
		    Return "model/vnd.collada+xml"
		    
		  Case "dwf"
		    Return "model/vnd.dwf"
		    
		  Case "gdl"
		    Return "model/vnd.gdl"
		    
		  Case "gtw"
		    Return "model/vnd.gtw"
		    
		  Case "mts"
		    Return "model/vnd.mts"
		    
		  Case "vtu"
		    Return "model/vnd.vtu"
		    
		  Case "wrl", "vrml"
		    Return "model/vrml"
		    
		  Case "manifest"
		    Return "text/cache-manifest"
		    
		  Case "ics", "ifb"
		    Return "text/calendar"
		    
		  Case "css"
		    Return "text/css"
		    
		  Case "csv"
		    Return "text/csv"
		    
		  Case "html", "htm"
		    Return "text/html"
		    
		  Case "n3"
		    Return "text/n3"
		    
		  Case "txt", "text", "conf", "def", "list", "log", "in"
		    Return "text/plain"
		    
		  Case "dsc"
		    Return "text/prs.lines.tag"
		    
		  Case "rtx"
		    Return "text/richtext"
		    
		  Case "sgml", "sgm"
		    Return "text/sgml"
		    
		  Case "tsv"
		    Return "text/tab-separated-values"
		    
		  Case "t", "tr", "roff", "man", "me", "ms"
		    Return "text/troff"
		    
		  Case "ttl"
		    Return "text/turtle"
		    
		  Case "uri", "uris", "urls"
		    Return "text/uri-list"
		    
		  Case "curl"
		    Return "text/vnd.curl"
		    
		  Case "dcurl"
		    Return "text/vnd.curl.dcurl"
		    
		  Case "scurl"
		    Return "text/vnd.curl.scurl"
		    
		  Case "mcurl"
		    Return "text/vnd.curl.mcurl"
		    
		  Case "fly"
		    Return "text/vnd.fly"
		    
		  Case "flx"
		    Return "text/vnd.fmi.flexstor"
		    
		  Case "gv"
		    Return "text/vnd.graphviz"
		    
		  Case "3dml"
		    Return "text/vnd.in3d.3dml"
		    
		  Case "spot"
		    Return "text/vnd.in3d.spot"
		    
		  Case "jad"
		    Return "text/vnd.sun.j2me.app-descriptor"
		    
		  Case "wml"
		    Return "text/vnd.wap.wml"
		    
		  Case "wmls"
		    Return "text/vnd.wap.wmlscript"
		    
		  Case "s", "asm"
		    Return "text/x-asm"
		    
		  Case "c", "cc", "cxx", "cpp", "h", "hh", "dic"
		    Return "text/x-c"
		    
		  Case "f", "for", "f77", "f90"
		    Return "text/x-fortran"
		    
		  Case "p", "pas"
		    Return "text/x-pascal"
		    
		  Case "java"
		    Return "text/x-java-source"
		    
		  Case "etx"
		    Return "text/x-setext"
		    
		  Case "uu"
		    Return "text/x-uuencode"
		    
		  Case "vcs"
		    Return "text/x-vcalendar"
		    
		  Case "vcf"
		    Return "text/x-vcard"
		    
		  Case "3gp"
		    Return "video/3gpp"
		    
		  Case "3g2"
		    Return "video/3gpp2"
		    
		  Case "h261"
		    Return "video/h261"
		    
		  Case "h263"
		    Return "video/h263"
		    
		  Case "h264"
		    Return "video/h264"
		    
		  Case "jpgv"
		    Return "video/jpeg"
		    
		  Case "jpm", "jpgm"
		    Return "video/jpm"
		    
		  Case "mj2", "mjp2"
		    Return "video/mj2"
		    
		  Case "ts"
		    Return "video/mp2t"
		    
		  Case "mp4", "mp4v", "mpg4", "m4v"
		    Return "video/mp4"
		    
		  Case "mpeg", "mpg", "mpe", "m1v", "m2v"
		    Return "video/mpeg"
		    
		  Case "ogv"
		    Return "video/ogg"
		    
		  Case "qt", "mov"
		    Return "video/quicktime"
		    
		  Case "uvh", "uvvh"
		    Return "video/vnd.dece.hd"
		    
		  Case "uvm", "uvvm"
		    Return "video/vnd.dece.mobile"
		    
		  Case "uvp", "uvvp"
		    Return "video/vnd.dece.pd"
		    
		  Case "uvs", "uvvs"
		    Return "video/vnd.dece.sd"
		    
		  Case "uvv", "uvvv"
		    Return "video/vnd.dece.video"
		    
		  Case "fvt"
		    Return "video/vnd.fvt"
		    
		  Case "mxu", "m4u"
		    Return "video/vnd.mpegurl"
		    
		  Case "pyv"
		    Return "video/vnd.ms-playready.media.pyv"
		    
		  Case "uvu", "uvvu"
		    Return "video/vnd.uvvu.mp4"
		    
		  Case "viv"
		    Return "video/vnd.vivo"
		    
		  Case "dv", "dif"
		    Return "video/x-dv"
		    
		  Case "webm"
		    Return "video/webm"
		    
		  Case "f4v"
		    Return "video/x-f4v"
		    
		  Case "fli"
		    Return "video/x-fli"
		    
		  Case "flv"
		    Return "video/x-flv"
		    
		  Case "m4v"
		    Return "video/x-m4v"
		    
		  Case "asf", "asx"
		    Return "video/x-ms-asf"
		    
		  Case "wm"
		    Return "video/x-ms-wm"
		    
		  Case "wmv"
		    Return "video/x-ms-wmv"
		    
		  Case "wmx"
		    Return "video/x-ms-wmx"
		    
		  Case "wvx"
		    Return "video/x-ms-wvx"
		    
		  Case "avi"
		    Return "video/x-msvideo"
		    
		  Case "movie"
		    Return "video/x-sgi-movie"
		    
		  Case "ice"
		    Return "x-conference/x-cooltalk"
		    
		  Else
		    ' This returns the default mime type
		    Return "application/octet-stream"
		    'Return "text/plain"
		    
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequestRescan(ResourceID As String, APIKey As String) As JSONItem
		  Dim js As New JSONItem
		  js.Value("resource") =ResourceID
		  js.Value("apikey") = APIKey
		  Return SendRequest(FileRescan_URL, js)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SendRequest(URL As String, Request As JSONItem, VTSock As HTTPSecureSocket = Nil, Timeout As Integer = 5) As JSONItem
		  If VTSock = Nil Then VTSock = New HTTPSecureSocket
		  VTSock.SetRequestHeader("User-Agent", "VT-Hash-Check/" + version + " (Not at all like Mozilla)")
		  VTSock.Secure = True
		  dim formData As New Dictionary
		  For Each Name As String In Request.Names
		    formData.Value(Name) = Request.Value(Name)
		  Next
		  VTSock.SetFormData(formData)
		  Window1.ProgressBar1.Value = 5
		  Dim s As String = VTSock.Post(URL, Timeout)
		  Dim js As JSONItem
		  Try
		    js = New JSONItem(s)
		    LastResponseCode = js.Value("response_code")
		    Return New JSONItem(s)
		  Catch Err As JSONException
		    If VTSock.LastErrorCode <> 0 Then
		      LastResponseCode = INVALID_RESPONSE
		      LastResponseVerbose = "VirusTotal.com responded with improperly formatted data."
		    Else
		      LastResponseCode = VTSock.LastErrorCode
		      LastResponseVerbose = SocketErrorMessage(VTSock)
		    End If
		    js = Nil
		  End Try
		  
		  Return js
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SocketErrorMessage(Sender As SocketCore) As String
		  Dim err As String = "Socket error " + Str(Sender.LastErrorCode)
		  Select Case Sender.LastErrorCode
		  Case 102
		    err = err + ": Disconnected."
		  Case 100
		    err = err + ": Could not create a socket!"
		  Case 103
		    err = err + ": VirusTotal.com is not responding in a timely mannner."
		  Case 105
		    err = err + ": That port number is already in use."
		  Case 106
		    err = err + ": You can't do that right now."
		  Case 107
		    err = err + ": Could not bind to port."
		  Case 108
		    err = err + ": Out of memory."
		  Else
		    err = err + ": System error code."
		  End Select
		  
		  Return err
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SubmitFile(File As FolderItem, APIKey As String) As JSONItem
		  Dim js As New JSONItem
		  Dim sock As New HTTPSecureSocket
		  
		  'js.Value("file") = File.Name
		  js.Value("apikey") = APIKey
		  ConstructUpload(File, sock)'<-- doesn't work. help? https://www.virustotal.com/documentation/public-api/#scanning-files
		  Return VTAPI.SendRequest(FileSubmit_URL, js, sock, 0)
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected LastResponseCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastResponseVerbose As String
	#tag EndProperty


	#tag Constant, Name = Boundary, Type = String, Dynamic = False, Default = \"--------0xKhTmLbOuNdArY", Scope = Private
	#tag EndConstant

	#tag Constant, Name = CommentPut_URL, Type = String, Dynamic = False, Default = \"www.virustotal.com/vtapi/v2/comments/put", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FileReport_URL, Type = String, Dynamic = False, Default = \"www.virustotal.com/vtapi/v2/file/report", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FileRescan_URL, Type = String, Dynamic = False, Default = \"www.virustotal.com/vtapi/v2/file/rescan", Scope = Private
	#tag EndConstant

	#tag Constant, Name = FileSubmit_URL, Type = String, Dynamic = False, Default = \"www.virustotal.com/vtapi/v2/file/scan", Scope = Private
	#tag EndConstant

	#tag Constant, Name = INVALID_RESPONSE, Type = Double, Dynamic = False, Default = \"255", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = TypeFile, Type = Double, Dynamic = False, Default = \"0", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = TypeURL, Type = Double, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = URLReport_URL, Type = String, Dynamic = False, Default = \"www.virustotal.com/vtapi/v2/url/scan", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule