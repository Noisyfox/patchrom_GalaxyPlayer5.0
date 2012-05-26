.class Lcom/android/settings/LightLevelsActivity$1;
.super Ljava/lang/Object;
.source "LightLevelsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/LightLevelsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LightLevelsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/LightLevelsActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/LightLevelsActivity$1;->this$0:Lcom/android/settings/LightLevelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
