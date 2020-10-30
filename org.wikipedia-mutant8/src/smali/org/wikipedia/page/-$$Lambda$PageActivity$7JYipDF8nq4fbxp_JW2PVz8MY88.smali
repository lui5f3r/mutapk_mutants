.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/suggestededits/SuggestedEditsSnackbars$OpenPageListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageActivity;

.field public final synthetic f$1:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageActivity;Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;->f$0:Lorg/wikipedia/page/PageActivity;

    iput-object p2, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;->f$1:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    return-void
.end method


# virtual methods
.method public final open()V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;->f$0:Lorg/wikipedia/page/PageActivity;

    iget-object v1, p0, Lorg/wikipedia/page/-$$Lambda$PageActivity$7JYipDF8nq4fbxp_JW2PVz8MY88;->f$1:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    invoke-virtual {v0, v1}, Lorg/wikipedia/page/PageActivity;->lambda$onActivityResult$3$PageActivity(Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;)V

    return-void
.end method
