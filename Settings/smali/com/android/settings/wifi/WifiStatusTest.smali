.class public Lcom/android/settings/wifi/WifiStatusTest;
.super Landroid/app/Activity;
.source "WifiStatusTest.java"


# instance fields
.field private mBSSID:Landroid/widget/TextView;

.field private mHiddenSSID:Landroid/widget/TextView;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mIPAddr:Landroid/widget/TextView;

.field private mLinkSpeed:Landroid/widget/TextView;

.field private mMACAddr:Landroid/widget/TextView;

.field private mNetworkId:Landroid/widget/TextView;

.field private mNetworkState:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field private mRSSI:Landroid/widget/TextView;

.field private mSSID:Landroid/widget/TextView;

.field private mScanList:Landroid/widget/TextView;

.field private mSupplicantState:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Landroid/widget/TextView;

.field private mWifiStateFilter:Landroid/content/IntentFilter;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;

.field private pingTestButton:Landroid/widget/Button;

.field private updateButton:Landroid/widget/Button;

.field updateButtonHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$1;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$2;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/wifi/WifiStatusTest$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiStatusTest$3;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->handleScanResultsAvailable()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/WifiStatusTest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->pingHostname()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->httpClientTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiStatusTest;Landroid/net/wifi/SupplicantState;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiStatusTest;->handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->handleSignalChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiStatusTest;->updatePingState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiStatusTest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 3
    .parameter "networkInfo"

    .prologue
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v0

    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #summary:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleScanResultsAvailable()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, scanList:Ljava/lang/StringBuffer;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v0, v4, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .local v3, scanResult:Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v0           #i:I
    .end local v3           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleSignalChanged(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private handleSupplicantStateChanged(Landroid/net/wifi/SupplicantState;ZI)V
    .locals 2
    .parameter "state"
    .parameter "hasError"
    .parameter "error"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ERROR AUTHENTICATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V

    goto :goto_0
.end method

.method private handleWifiStateChanged(I)V
    .locals 0
    .parameter "wifiState"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusTest;->setWifiStateText(I)V

    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .restart local v2       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 -w 100 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .local v2, status:I
    if-nez v2, :cond_0

    const-string v3, "Pass"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :goto_0
    return-void

    .restart local v1       #p:Ljava/lang/Process;
    .restart local v2       #status:I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    :try_start_0
    const-string v1, "74.125.47.104"

    .local v1, ipAddress:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 -w 100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .local v3, status:I
    if-nez v3, :cond_0

    const-string v4, "Pass"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_0
    return-void

    .restart local v1       #ipAddress:Ljava/lang/String;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private setSupplicantStateText(Landroid/net/wifi/SupplicantState;)V
    .locals 2
    .parameter "supplicantState"

    .prologue
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "FOUR WAY HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "ASSOCIATING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "COMPLETED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "DORMANT"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "GROUP HANDSHAKE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INACTIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "INVALID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    sget-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "SCANNING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "UNINITIALIZED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const-string v1, "BAD"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "WifiStatusTest"

    const-string v1, "supplicant state is bad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setWifiStateText(I)V
    .locals 3
    .parameter "wifiState"

    .prologue
    packed-switch p1, :pswitch_data_0

    const-string v0, "BAD"

    .local v0, wifiStateString:Ljava/lang/String;
    const-string v1, "WifiStatusTest"

    const-string v2, "wifi state is bad"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_0
    const v1, 0x7f090196

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_1
    const v1, 0x7f090197

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_2
    const v1, 0x7f090198

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_3
    const v1, 0x7f090199

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    .end local v0           #wifiStateString:Ljava/lang/String;
    :pswitch_4
    const v1, 0x7f09019a

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #wifiStateString:Ljava/lang/String;
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f090016

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiStatusTest;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/settings/wifi/WifiStatusTest$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiStatusTest$4;-><init>(Lcom/android/settings/wifi/WifiStatusTest;)V

    .local v4, updatePingResults:Ljava/lang/Runnable;
    new-instance v3, Lcom/android/settings/wifi/WifiStatusTest$5;

    invoke-direct {v3, p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusTest$5;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .local v3, ipAddrThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/wifi/WifiStatusTest$6;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusTest$6;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .local v1, hostnameThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v2, Lcom/android/settings/wifi/WifiStatusTest$7;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusTest$7;-><init>(Lcom/android/settings/wifi/WifiStatusTest;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .local v2, httpClientThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f030066

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->setContentView(I)V

    const v0, 0x7f0c015e

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->updateButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c015f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiState:Landroid/widget/TextView;

    const v0, 0x7f0c0160

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkState:Landroid/widget/TextView;

    const v0, 0x7f0c0161

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSupplicantState:Landroid/widget/TextView;

    const v0, 0x7f0c0162

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mRSSI:Landroid/widget/TextView;

    const v0, 0x7f0c0163

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mBSSID:Landroid/widget/TextView;

    const v0, 0x7f0c014b

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mSSID:Landroid/widget/TextView;

    const v0, 0x7f0c0164

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHiddenSSID:Landroid/widget/TextView;

    const v0, 0x7f0c0165

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mIPAddr:Landroid/widget/TextView;

    const v0, 0x7f0c0166

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mMACAddr:Landroid/widget/TextView;

    const v0, 0x7f0c0167

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mNetworkId:Landroid/widget/TextView;

    const v0, 0x7f0c0168

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mLinkSpeed:Landroid/widget/TextView;

    const v0, 0x7f0c0169

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mScanList:Landroid/widget/TextView;

    const v0, 0x7f0c0102

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;

    const v0, 0x7f0c0103

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;

    const v0, 0x7f0c0104

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;

    const v0, 0x7f0c0101

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->pingTestButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiStatusTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusTest;->mWifiStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/WifiStatusTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
