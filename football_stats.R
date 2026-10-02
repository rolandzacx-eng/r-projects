library(ggplot2)
player <- c("Salah","Haaland","Saka","Odegard")
goals <- c(18, 22, 10, 8)
assists <- c(9, 5, 11, 14)
matches <- c(30, 28, 29, 27)

stats <- data.frame(player,goals,assists,matches)
print (stats)
str(stats)

total_goals <- sum(stats$goals)
print(paste("Total goals:", total_goals))

stats$goals_per_match <- stats$goals / stats$matches
print(stats)

top_scorer <- stats[stats$goals == max(stats$goals), ]
print(top_scorer)

barplot(stats$goals,
        names.arg = stats$player,
        main = "Goals by player",
        xlab = "Player",
        ylab = "Goals",
        col = "skyblue")
ggplot(stats, aes(x = player,y = goals)) +
  geom_col(fill = "steelblue")+
  labs(title = "Goals by player", x = "player", y = "Goals")
        




