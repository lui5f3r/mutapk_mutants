.class final Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "Balloon.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/balloon/Balloon;->initializeArrow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $anchor$inlined:Landroid/view/View;

.field final synthetic $this_with:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic this$0:Lcom/skydoves/balloon/Balloon;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Lcom/skydoves/balloon/Balloon;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->$this_with:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    iput-object p3, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->$anchor$inlined:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBinding$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/databinding/LayoutBalloonBinding;->balloonArrow:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "binding.balloonArrow"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v1}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/skydoves/balloon/Balloon$Builder;->arrowVisible:Z

    invoke-static {v0, v1}, Lcom/skydoves/balloon/extensions/ViewExtensionKt;->visible(Landroid/view/View;Z)V

    .line 155
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v0}, Lcom/skydoves/balloon/Balloon;->getOnBalloonInitializedListener()Lcom/skydoves/balloon/OnBalloonInitializedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-virtual {v1}, Lcom/skydoves/balloon/Balloon;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/skydoves/balloon/OnBalloonInitializedListener;->onBalloonInitialized(Landroid/view/View;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    invoke-static {v0}, Lcom/skydoves/balloon/Balloon;->access$getBuilder$p(Lcom/skydoves/balloon/Balloon;)Lcom/skydoves/balloon/Balloon$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/skydoves/balloon/Balloon$Builder;->arrowOrientation:Lcom/skydoves/balloon/ArrowOrientation;

    sget-object v1, Lcom/skydoves/balloon/Balloon$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->$this_with:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->$anchor$inlined:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/skydoves/balloon/Balloon;->access$getArrowConstraintPositionY(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->$this_with:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->this$0:Lcom/skydoves/balloon/Balloon;

    iget-object v2, p0, Lcom/skydoves/balloon/Balloon$initializeArrow$$inlined$with$lambda$1;->$anchor$inlined:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/skydoves/balloon/Balloon;->access$getArrowConstraintPositionX(Lcom/skydoves/balloon/Balloon;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    :goto_0
    return-void
.end method
