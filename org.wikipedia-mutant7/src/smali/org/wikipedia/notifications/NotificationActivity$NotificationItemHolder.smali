.class Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NotificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/notifications/NotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationItemHolder"
.end annotation


# instance fields
.field private container:Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

.field private descriptionView:Landroid/widget/TextView;

.field private imageBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

.field private imageContainerView:Landroid/view/View;

.field private imageSelectedView:Landroid/view/View;

.field private imageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private secondaryActionHintView:Landroid/widget/TextView;

.field private tertiaryActionHintView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/notifications/NotificationActivity;

.field private titleView:Landroid/widget/TextView;

.field private wikiCodeBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

.field private wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private wikiCodeView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/wikipedia/notifications/NotificationActivity;Landroid/view/View;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 438
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 439
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0902a4

    .line 441
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->titleView:Landroid/widget/TextView;

    const p1, 0x7f09029c

    .line 442
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->descriptionView:Landroid/widget/TextView;

    const p1, 0x7f0902a0

    .line 443
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->secondaryActionHintView:Landroid/widget/TextView;

    const p1, 0x7f0902a2

    .line 444
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->tertiaryActionHintView:Landroid/widget/TextView;

    const p1, 0x7f0902a7

    .line 445
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeView:Landroid/widget/TextView;

    const p1, 0x7f0902aa

    .line 446
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0902a8

    .line 447
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f09029f

    .line 448
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageContainerView:Landroid/view/View;

    const p1, 0x7f09029e

    .line 449
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0902a1

    .line 450
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageSelectedView:Landroid/view/View;

    const p1, 0x7f09029d

    .line 451
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 452
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lorg/wikipedia/util/DeviceUtil;->setContextClickAsLongClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindItem(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)V
    .locals 6

    .line 460
    iput-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    .line 461
    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->access$300(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Lorg/wikipedia/notifications/Notification;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->category()Ljava/lang/String;

    move-result-object v2

    const-string v3, "edit-user-talk"

    .line 468
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f06001b

    if-eqz v3, :cond_0

    const v2, 0x7f0800b8

    goto :goto_0

    :cond_0
    const-string v3, "reverted"

    .line 471
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v2, 0x7f08010a

    const v4, 0x7f06002e

    goto :goto_0

    :cond_1
    const-string v3, "edit-thank"

    .line 474
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v2, 0x7f08012e

    const v4, 0x7f060086

    goto :goto_0

    :cond_2
    const-string v3, "thank-you-edit"

    .line 477
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v2, 0x7f0800b7

    goto :goto_0

    :cond_3
    const-string v3, "mention"

    .line 480
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v2, 0x7f0800ee

    goto :goto_0

    :cond_4
    const-string v3, "login-fail"

    .line 483
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x7f08012d

    const v4, 0x7f060028

    goto :goto_0

    :cond_5
    const v2, 0x7f080118

    .line 488
    :goto_0
    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 489
    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    .line 490
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 489
    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 492
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 493
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Contents;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 496
    :cond_6
    iget-object v2, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->titleView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Contents;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 499
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$Contents;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 502
    :cond_7
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    :goto_1
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 506
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 507
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->secondaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v4

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/notifications/Notification$Link;

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$Link;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->secondaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_8

    .line 510
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->tertiaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->getContents()Lorg/wikipedia/notifications/Notification$Contents;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/notifications/Notification$Contents;->getLinks()Lorg/wikipedia/notifications/Notification$Links;

    move-result-object v5

    invoke-virtual {v5}, Lorg/wikipedia/notifications/Notification$Links;->getSecondary()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/wikipedia/notifications/Notification$Link;

    invoke-virtual {v4}, Lorg/wikipedia/notifications/Notification$Link;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->tertiaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 513
    :cond_8
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->tertiaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 516
    :cond_9
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->secondaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->tertiaryActionHintView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :goto_2
    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v1

    const-string v4, "wikidata"

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 522
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_3

    :cond_a
    const-string v4, "commons"

    .line 526
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 527
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_3

    .line 532
    :cond_b
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeBackgroundView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeImageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->wikiCodeView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/wikipedia/notifications/Notification;->wiki()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wiki"

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :goto_3
    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->access$400(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_c

    .line 539
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageSelectedView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageContainerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 541
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    const v1, 0x7f0402a0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 543
    :cond_c
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageSelectedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->imageContainerView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    const v1, 0x7f0402c0

    invoke-static {v0, v1}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4
    return-void
.end method

.method protected getContainer()Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 550
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity;->access$500(Lorg/wikipedia/notifications/NotificationActivity;)Landroidx/appcompat/view/ActionMode;

    move-result-object p1

    invoke-static {p1}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->is(Landroidx/appcompat/view/ActionMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 551
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    invoke-static {p1, v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$600(Lorg/wikipedia/notifications/NotificationActivity;Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity;->access$700(Lorg/wikipedia/notifications/NotificationActivity;)Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    .line 554
    invoke-static {v1}, Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;->access$300(Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)Lorg/wikipedia/notifications/Notification;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/notifications/NotificationItemActionsDialog;->newInstance(Lorg/wikipedia/notifications/Notification;)Lorg/wikipedia/notifications/NotificationItemActionsDialog;

    move-result-object v1

    .line 553
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/page/ExclusiveBottomSheetPresenter;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/DialogFragment;)V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 559
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    invoke-static {p1}, Lorg/wikipedia/notifications/NotificationActivity;->access$800(Lorg/wikipedia/notifications/NotificationActivity;)V

    .line 560
    iget-object p1, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->this$0:Lorg/wikipedia/notifications/NotificationActivity;

    iget-object v0, p0, Lorg/wikipedia/notifications/NotificationActivity$NotificationItemHolder;->container:Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;

    invoke-static {p1, v0}, Lorg/wikipedia/notifications/NotificationActivity;->access$600(Lorg/wikipedia/notifications/NotificationActivity;Lorg/wikipedia/notifications/NotificationActivity$NotificationListItemContainer;)V

    const/4 p1, 0x1

    return p1
.end method
