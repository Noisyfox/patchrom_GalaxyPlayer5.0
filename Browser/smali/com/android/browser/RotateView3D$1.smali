.class Lcom/android/browser/RotateView3D$1;
.super Ljava/lang/Object;
.source "RotateView3D.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$GLWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/RotateView3D;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/RotateView3D;


# direct methods
.method constructor <init>(Lcom/android/browser/RotateView3D;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/browser/RotateView3D$1;->this$0:Lcom/android/browser/RotateView3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;
    .locals 1
    .parameter "gl"

    .prologue
    .line 21
    new-instance v0, Lcom/android/browser/MatrixTrackingGL;

    invoke-direct {v0, p1}, Lcom/android/browser/MatrixTrackingGL;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    return-object v0
.end method
