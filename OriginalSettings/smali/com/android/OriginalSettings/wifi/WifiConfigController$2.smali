.class Lcom/android/OriginalSettings/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1334
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1359
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1353
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 1355
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x40

    const/4 v2, 0x1

    .line 1336
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v5, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v5, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mConfigUi:Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$100(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1344
    .local v0, context:Landroid/content/Context;
    const v3, 0x7f090286

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$300(Lcom/android/OriginalSettings/wifi/WifiConfigController;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1348
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1350
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    return-void

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/WifiConfigController$2;->this$0:Lcom/android/OriginalSettings/wifi/WifiConfigController;

    #getter for: Lcom/android/OriginalSettings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/OriginalSettings/wifi/WifiConfigController;->access$200(Lcom/android/OriginalSettings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1344
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method
