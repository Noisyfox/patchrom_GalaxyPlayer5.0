.class Lcom/android/settings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final info:Z

.field private mEvent:Ljava/lang/String;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsMethod:I

.field private mWpsPin:Landroid/widget/TextView;

.field private mWpsSsid:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;IZ)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "event"
    .parameter "info"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    iput-boolean p4, p0, Lcom/android/settings/wifi/WpsDialog;->info:Z

    if-eqz p4, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mEvent:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, row:Landroid/view/View;
    const v1, 0x7f0c0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0c00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private loadWpsSsid(Landroid/widget/Spinner;)V
    .locals 10
    .parameter "spinner"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, wpsSsidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const v8, 0x7f09013d

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v0, v1, v8, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x1090009

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v8, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    .local v5, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .local v4, result:Landroid/net/wifi/ScanResult;
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "[IBSS]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "-EAP-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v9, "WPS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v6, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .local v6, wpsSsid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int v3, v8, v9

    .local v3, j:I
    :goto_1
    if-lez v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    if-nez v3, :cond_0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #j:I
    .end local v4           #result:Landroid/net/wifi/ScanResult;
    .end local v6           #wpsSsid:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private showWpsFields()V
    .locals 2

    .prologue
    const v1, 0x7f0c014d

    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c016c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0c016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->loadWpsSsid(Landroid/widget/Spinner;)V

    goto :goto_0
.end method

.method private validate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getWpsPin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WpsDialog;->wpsPinCheck(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private wpsPinCheck(Ljava/lang/String;)I
    .locals 12
    .parameter "pin"

    .prologue
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .local v0, PIN:J
    const-wide/16 v2, 0x0

    .local v2, accum:J
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, len:I
    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    const/4 v6, -0x1

    .end local v0           #PIN:J
    .end local v2           #accum:J
    .end local v5           #len:I
    :goto_0
    return v6

    :catch_0
    move-exception v6

    move-object v4, v6

    .local v4, ex:Ljava/lang/NumberFormatException;
    const/4 v6, -0x1

    goto :goto_0

    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #PIN:J
    .restart local v2       #accum:J
    .restart local v5       #len:I
    :cond_0
    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    const-wide/16 v6, 0x3

    const-wide/32 v8, 0x989680

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    const-wide/32 v8, 0xf4240

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x3

    const-wide/32 v8, 0x186a0

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x2710

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x3

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x64

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x3

    const-wide/16 v8, 0xa

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x1

    div-long v8, v0, v8

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->validate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    return-void
.end method

.method getWpsMethod()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    return v0
.end method

.method getWpsPin()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getWpsSsid()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsSsid:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsPin:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    return-void

    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030067

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setView(Landroid/view/View;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setInverseBackgroundForced(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, resources:Landroid/content/res/Resources;
    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WpsDialog;->info:Z

    if-nez v3, :cond_1

    const v3, 0x7f090132

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v4, 0x7f0c014a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v4, 0x7f0c016a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v3, 0x7f090147

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v7, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v3, 0x7f090166

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WpsDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->validate()V

    :cond_0
    return-void

    :cond_1
    const v3, 0x7f090140

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WpsDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v4, 0x7f0c0149

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, group:Landroid/view/ViewGroup;
    const v3, 0x7f09014c

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mEvent:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    const v3, 0x7f090148

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WpsDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v3, v4}, Lcom/android/settings/wifi/WpsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    iput p3, p0, Lcom/android/settings/wifi/WpsDialog;->mWpsMethod:I

    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->showWpsFields()V

    invoke-direct {p0}, Lcom/android/settings/wifi/WpsDialog;->validate()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    return-void
.end method
