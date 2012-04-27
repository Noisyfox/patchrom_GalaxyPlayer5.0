.class final Lcom/android/browser/BrowserDebug$2;
.super Ljava/lang/Object;
.source "BrowserDebug.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDebug;->editUserAgent(Landroid/content/Context;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 150
    const v0, 0x7f0d0065

    if-ne p2, v0, :cond_1

    .line 151
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Linux; U; Android 2.2; en-us; GT-I9000 Build/MASTER) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    :goto_0
    const v0, 0x7f0d006a

    if-ne p2, v0, :cond_5

    .line 163
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 167
    :goto_1
    return-void

    .line 152
    :cond_1
    const v0, 0x7f0d0066

    if-ne p2, v0, :cond_2

    .line 153
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_2
    const v0, 0x7f0d0067

    if-ne p2, v0, :cond_3

    .line 155
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    :cond_3
    const v0, 0x7f0d0068

    if-ne p2, v0, :cond_4

    .line 157
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (SAMSUNG; SAMSUNG-GT-S8500/S8500XXJHA; U; Bada/1.0; en-us) AppleWebKit/533.1 (KHTML, like Gecko) Dolfin/2.0 Mobile WVGA SMM-MMS/1.2.0 OPN-B"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_4
    const v0, 0x7f0d0069

    if-ne p2, v0, :cond_0

    .line 159
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (Linux; U; Android 2.2; ko-kr; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_5
    invoke-static {}, Lcom/android/browser/BrowserDebug;->access$000()Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1
.end method
