.class Lcom/android/settings/cit/CitChargerPluginCheckActivity$1;
.super Ljava/lang/Object;
.source "CitChargerPluginCheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitChargerPluginCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitChargerPluginCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitChargerPluginCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity$1;->this$0:Lcom/android/settings/cit/CitChargerPluginCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitChargerPluginCheckActivity$1;->this$0:Lcom/android/settings/cit/CitChargerPluginCheckActivity;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitChargerPluginCheckActivity;->updateChargerState()V

    return-void
.end method
