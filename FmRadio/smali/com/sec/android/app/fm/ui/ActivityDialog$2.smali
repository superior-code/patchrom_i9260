.class Lcom/sec/android/app/fm/ui/ActivityDialog$2;
.super Ljava/lang/Object;
.source "ActivityDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/ui/ActivityDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/ui/ActivityDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/ActivityDialog$2;->this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/ActivityDialog$2;->this$0:Lcom/sec/android/app/fm/ui/ActivityDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/ActivityDialog;->finish()V

    .line 51
    return-void
.end method
