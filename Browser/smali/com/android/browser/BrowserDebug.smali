.class Lcom/android/browser/BrowserDebug;
.super Ljava/lang/Object;
.source "BrowserDebug.java"


# static fields
.field private static mEditUserAgent:Landroid/widget/EditText;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/browser/BrowserDebug;->mEditUserAgent:Landroid/widget/EditText;

    return-object v0
.end method

.method static dumpWebView(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 32
    const-string v3, "BrowserDebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpWebView"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Dump displayTree"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Dump domTree to file"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Dump domTree to log"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Dump renderTree to file"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Dump renderTree to log"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Instrument report"

    aput-object v4, v2, v3

    .line 43
    .local v2, items:[Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "Choose DUMP type"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 45
    new-instance v3, Lcom/android/browser/BrowserDebug$1;

    invoke-direct {v3, p1}, Lcom/android/browser/BrowserDebug$1;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 88
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 91
    return-void
.end method

.method static editUserAgent(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 8
    .parameter "context"
    .parameter "webView"

    .prologue
    .line 116
    const-string v0, "BrowserDebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editUserAgent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 121
    .local v6, settings:Landroid/webkit/WebSettings;
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .end local p1
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local p1, builder:Landroid/app/AlertDialog$Builder;
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/LayoutInflater;

    .line 125
    .local p0, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 127
    .local p0, mEditUserAgentView:Landroid/view/View;
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Lcom/android/browser/BrowserDebug;->mEditUserAgent:Landroid/widget/EditText;

    .line 128
    sget-object v0, Lcom/android/browser/BrowserDebug;->mEditUserAgent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 131
    .local v0, mRBUagentAndroid:Landroid/widget/RadioButton;
    const v1, 0x7f0d0066

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 132
    .local v3, mRBUagentIphone:Landroid/widget/RadioButton;
    const v1, 0x7f0d0067

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 133
    .local v2, mRBUagentDesktop:Landroid/widget/RadioButton;
    const v1, 0x7f0d0068

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 134
    .local v4, mRBUagentLismore:Landroid/widget/RadioButton;
    const v1, 0x7f0d0069

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 135
    .local v5, mRBUagentNexusOne:Landroid/widget/RadioButton;
    const v1, 0x7f0d006a

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 137
    .local v1, mRBUagentCustom:Landroid/widget/RadioButton;
    const-string v7, "Galaxy S"

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v0, "Iphone"

    .end local v0           #mRBUagentAndroid:Landroid/widget/RadioButton;
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const-string v0, "Desktop"

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const-string v0, "Lismore"

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const-string v0, "Nexus One"

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const-string v0, "Custom"

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 146
    const v0, 0x7f0d0064

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 148
    .local v0, mRBGroup:Landroid/widget/RadioGroup;
    new-instance v1, Lcom/android/browser/BrowserDebug$2;

    .end local v1           #mRBUagentCustom:Landroid/widget/RadioButton;
    invoke-direct {v1}, Lcom/android/browser/BrowserDebug$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 169
    const-string v0, "Edit UserAgent"

    .end local v0           #mRBGroup:Landroid/widget/RadioGroup;
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 171
    const-string p0, "Ok"

    .end local p0           #mEditUserAgentView:Landroid/view/View;
    new-instance v0, Lcom/android/browser/BrowserDebug$3;

    invoke-direct {v0, v6}, Lcom/android/browser/BrowserDebug$3;-><init>(Landroid/webkit/WebSettings;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    const-string p0, "Cancel"

    new-instance v0, Lcom/android/browser/BrowserDebug$4;

    invoke-direct {v0}, Lcom/android/browser/BrowserDebug$4;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 191
    .local p0, alert:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void
.end method
