.class Lcom/android/browser/BrowserActivity$28;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5340
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$28;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 5346
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5349
    .local v1, intentShowSetting:Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity$28;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5353
    :goto_0
    return-void

    .line 5350
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 5351
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "browser"

    const-string v3, "requestPrint : There is no Activity, WIRELESS_SETTINGS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
