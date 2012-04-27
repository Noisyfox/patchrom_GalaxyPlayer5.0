.class Lcom/android/browser/GeolocationPermissionsPrompt$2;
.super Ljava/lang/Object;
.source "GeolocationPermissionsPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/GeolocationPermissionsPrompt;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/GeolocationPermissionsPrompt;

.field final synthetic val$me:Lcom/android/browser/GeolocationPermissionsPrompt;


# direct methods
.method constructor <init>(Lcom/android/browser/GeolocationPermissionsPrompt;Lcom/android/browser/GeolocationPermissionsPrompt;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/browser/GeolocationPermissionsPrompt$2;->this$0:Lcom/android/browser/GeolocationPermissionsPrompt;

    iput-object p2, p0, Lcom/android/browser/GeolocationPermissionsPrompt$2;->val$me:Lcom/android/browser/GeolocationPermissionsPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/browser/GeolocationPermissionsPrompt$2;->val$me:Lcom/android/browser/GeolocationPermissionsPrompt;

    const/4 v1, 0x0

    #calls: Lcom/android/browser/GeolocationPermissionsPrompt;->handleButtonClick(Z)V
    invoke-static {v0, v1}, Lcom/android/browser/GeolocationPermissionsPrompt;->access$000(Lcom/android/browser/GeolocationPermissionsPrompt;Z)V

    .line 69
    return-void
.end method
