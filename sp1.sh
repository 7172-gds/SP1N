LANG="ru_RU.UTF-8"
echo "Создатель Гусеньников Данил гр 718-1"
echo "Настройка репозиториев"
echo "Программа подключает и отключает доступные репозитории"
echo "Список репозиториев"
yum repolist all;
while :; do
echo "Введите требуемое действие"
echo "1. Подключить"
echo "2. Отключить"
echo "3. Выход"
read comand
	case $comand in
		1)
			echo "Выберите какой из указанных репозиториев подключить"
			read file1
			echo "Подключение"
			yum-config-manager --enable $file1
			yum repolist all;
			;;
		2)
			echo "Выберите какой из указанных репозиториев отключить"
			read file1
			echo "Отключение"
			yum-config-manager --disable $file1
			yum repolist all;
			;;
		3)
			echo "Exit"
			exit
			;;
		*)
			echo "Не найдена команда"
			;;
	esac
done
