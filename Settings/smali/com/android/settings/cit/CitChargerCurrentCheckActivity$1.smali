.class Lcom/android/settings/cit/CitChargerCurrentCheckActivity$1;
.super Ljava/lang/Object;
.source "CitChargerCurrentCheckActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cit/CitChargerCurrentCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitChargerCurrentCheckActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitChargerCurrentCheckActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity$1;->this$0:Lcom/android/settings/cit/CitChargerCurrentCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/cit/CitChargerCurrentCheckActivity$1;->this$0:Lcom/android/settings/cit/CitChargerCurrentCheckActivity;

    invoke-virtual {v0}, Lcom/android/settings/cit/CitChargerCurrentCheckActivity;->updateChargerCurrent()V

    return-void
.end method
