.class Lcom/android/OriginalSettings/flipfont/FontListPreference$9;
.super Ljava/lang/Object;
.source "FontListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/OriginalSettings/flipfont/FontListPreference;->selectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/OriginalSettings/flipfont/FontListPreference;->mSelectDialogIsActive:Z
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->access$702(Lcom/android/OriginalSettings/flipfont/FontListPreference;Z)Z

    .line 684
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->savePreferences()V

    .line 685
    invoke-static {}, Lcom/android/OriginalSettings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TGY"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BRI"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->loadSelectedFontThread()V

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/flipfont/FontListPreference$9;->this$0:Lcom/android/OriginalSettings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/flipfont/FontListPreference;->onOkButtonPressed()V

    goto :goto_0
.end method
