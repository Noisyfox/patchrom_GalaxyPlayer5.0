.class final Lcom/android/settings/LocationSettings$SettingsObserver;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LocationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/LocationSettings;Lcom/android/settings/LocationSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/LocationSettings$SettingsObserver;-><init>(Lcom/android/settings/LocationSettings;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1
    .parameter "o"
    .parameter "arg"

    .prologue
    iget-object v0, p0, Lcom/android/settings/LocationSettings$SettingsObserver;->this$0:Lcom/android/settings/LocationSettings;

    #calls: Lcom/android/settings/LocationSettings;->updateToggles()V
    invoke-static {v0}, Lcom/android/settings/LocationSettings;->access$000(Lcom/android/settings/LocationSettings;)V

    return-void
.end method
