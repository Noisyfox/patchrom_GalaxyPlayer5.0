.class public Lcom/android/browser/Browser;
.super Landroid/app/Application;
.source "Browser.java"


# instance fields
.field mBitmapWebView:Lcom/android/browser/BitmapWebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Browser;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 59
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 61
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 62
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->loadFromDb(Landroid/content/Context;)V

    .line 63
    return-void
.end method
