.class public interface abstract Lcom/nemustech/tiffany/widget/TFAdapterView$OnItemSelectedListener;
.super Ljava/lang/Object;
.source "TFAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemSelectedListener"
.end annotation


# virtual methods
.method public abstract onItemSelected(Lcom/nemustech/tiffany/widget/TFAdapterView;Landroid/view/View;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation
.end method

.method public abstract onNothingSelected(Lcom/nemustech/tiffany/widget/TFAdapterView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nemustech/tiffany/widget/TFAdapterView",
            "<*>;)V"
        }
    .end annotation
.end method
