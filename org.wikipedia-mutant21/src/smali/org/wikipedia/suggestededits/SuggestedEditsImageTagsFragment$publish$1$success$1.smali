.class final Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$1;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->success(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;


# direct methods
.method constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;)V
    .locals 0

    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 367
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1$success$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;

    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$publish$1;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;->setPublishing(Z)V

    return-void
.end method
