.class Lcom/miui/camera/ui/CameraPreferenceActivity$1;
.super Ljava/lang/Object;
.source "CameraPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/camera/ui/CameraPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/camera/ui/CameraPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/miui/camera/ui/CameraPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/miui/camera/ui/CameraPreferenceActivity$1;->this$0:Lcom/miui/camera/ui/CameraPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 381
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity$1;->this$0:Lcom/miui/camera/ui/CameraPreferenceActivity;

    #getter for: Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/ui/CameraPreferenceActivity;->access$000(Lcom/miui/camera/ui/CameraPreferenceActivity;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/camera/Global;->mGlobalPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_camera_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity$1;->this$0:Lcom/miui/camera/ui/CameraPreferenceActivity;

    #getter for: Lcom/miui/camera/ui/CameraPreferenceActivity;->mG:Lcom/miui/camera/CameraGlobal;
    invoke-static {v2}, Lcom/miui/camera/ui/CameraPreferenceActivity;->access$000(Lcom/miui/camera/ui/CameraPreferenceActivity;)Lcom/miui/camera/CameraGlobal;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/camera/Global;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 387
    const-string v2, "pref_key_camera_picture_size_width"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    const-string v2, "pref_key_camera_picture_size_height"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 389
    const-string v2, "pref_key_camera_jpeg_quality"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 390
    const-string v2, "pref_key_camera_record_location"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    const-string v2, "pref_key_camera_auto_focus"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string v2, "pref_key_camera_playback"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    const-string v2, "pref_key_camera_reference_line"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 394
    const-string v2, "pref_key_camera_skin_tone_enhancement"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    const-string v2, "pref_key_camera_scene_mode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    const-string v2, "pref_key_camera_white_balance"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 397
    const-string v2, "pref_key_camera_focus_mode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    const-string v2, "pref_key_camera_antibanding"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    const-string v2, "pref_key_camera_iso"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    const-string v2, "pref_key_camera_auto_exposure"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 401
    const-string v2, "pref_key_camera_contrast"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    const-string v2, "pref_key_camera_saturation"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    const-string v2, "pref_key_camera_sharpness"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 404
    const-string v2, "pref_key_camera_flash_mode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 405
    const-string v2, "pref_key_camera_color_effect"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    const-string v2, "pref_key_camera_anti_shake"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    const-string v2, "pref_key_camera_exposure"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 408
    const-string v2, "pref_key_camera_lens_shade"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    const-string v2, "pref_key_camera_scene_detect"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    const-string v2, "pref_key_camera_screen_shutter"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    const-string v2, "pref_key_camera_sound"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 412
    const-string v2, "pref_key_video_continuous_focus"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string v2, "pref_key_video_flash_mode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    const-string v2, "pref_key_video_color_effect"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 415
    const-string v2, "pref_key_video_quality"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v2, "pref_key_video_screen_shutter"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 419
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v1, result:Landroid/content/Intent;
    const-string v2, "com.miui.camera.Restore"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 421
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity$1;->this$0:Lcom/miui/camera/ui/CameraPreferenceActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/miui/camera/ui/CameraPreferenceActivity;->setResult(ILandroid/content/Intent;)V

    .line 422
    iget-object v2, p0, Lcom/miui/camera/ui/CameraPreferenceActivity$1;->this$0:Lcom/miui/camera/ui/CameraPreferenceActivity;

    invoke-virtual {v2}, Lcom/miui/camera/ui/CameraPreferenceActivity;->finish()V

    .line 423
    return-void
.end method
