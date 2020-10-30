.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$searchRunnable$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$searchRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$searchRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$searchRunnable$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;

    invoke-static {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->access$getCurrentSearchTerm$p(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;->access$requestResults(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
